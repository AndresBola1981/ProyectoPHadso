<?php
require 'includes/app.php';
incluirTemplate('header', $inicio = 6);


// AutentIcar el usuario

$errores = [];


if ($_SERVER['REQUEST_METHOD'] === 'POST') {


    $email = mysqli_real_escape_string($db, filter_var($_POST['correo'], FILTER_VALIDATE_EMAIL));
    $password = mysqli_real_escape_string($db, $_POST['contraseña']);

    if (!$email) {
        $errores[] = "El Correo Es Obligatorio O No Es Valido";
    }
    if (!$password) {
        $errores[] = "La Contraseña Es Obligatoria";
    }


    if (empty($errores)) {
        // Revisar si el usuario existe
        $query = "SELECT * FROM residentes WHERE correo = '${email}'";
        $resultado = mysqli_query($db, $query);

        // echo "<pre>";
        // var_dump($query);
        // echo "<pre>";
        // exit;

        if ($resultado->num_rows) {
            // Revisar si el password es correcto
            $usuario = mysqli_fetch_assoc($resultado);

            // Verificar si e password es corretco o no
            $auth = password_verify($password, $usuario['contraseña']);

            if ($auth) {
                // el usuario es autenticado
                session_start();

                // Llenar el arreglo de la sesión 
                $_SESSION['id'] = $usuario['id'];
                $_SESSION['usuario'] = $usuario['correo'];
                $_SESSION['login'] = true;

                header('Location: /Propiedad Horizontal POO/paginas_residentes/inicio_residentes.php');
            } else {
                $errores[] = "La Contraseña es incorrecta";
            }
        } else {
            $errores[] = "El Correo No Existe";
        }
    }
}

?>


<div class="parte1">
    <img src="includes/img/logo sp1.png" alt="Logo Software Con Propiedad" class="p1__img-logo">
</div>
<div class="parte2">

    <?php foreach ($errores as $error) : ?>
        <div class="alerta error">
            <?php echo $error; ?>
        </div>
    <?php endforeach; ?>

    <form class="formulario" method="POST" novalidate>
        <fieldset>
            <legend>RESIDENTE</legend>

            <div class="p2__formulario--campos--residente">

                <p>Ingrese sus datos</p>

                <div>
                    <label for="correo">Correo</label>
                    <input type="email" placeholder="Correo" id="correo" name="correo" required>
                </div>

                <div>
                    <label for="contraseña">Contraseña</label>
                    <input type="password" placeholder="Contraseña" id="contraseña" name="contraseña" required>
                </div>


            </div>


            <button class="p2__boton">Ingresar</button>

        </fieldset>
    </form>
</div>

</body>

</html>