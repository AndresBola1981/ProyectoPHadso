<?php
require 'includes/app.php';

incluirTemplate('header', $inicio = 4);

use clases\contactenos_index;

$contacto = new contactenos_index;



// Arreglo con errores 
$errores = contactenos_index::getErrores();

//Ejecutar el codigo despues de que el usuario evio el formulario
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    // Crea una nueva instancia
    $contacto = new contactenos_index($_POST['contacto']);

    // Validar
    $errores = $contacto->validar();

    //debuguear($contacto);

    // Revisar que le arreglo de errores este vacio
    if (empty($errores)) {
        // Guardar en la base de datos
        $contacto->guardar();
    }
}

?>

<div class="parte1">
    <img src="includes/img/logo sp1.png" alt="Logo Software Con Propiedad" class="p1__img-logo">
</div>

<div class="parte2">

    <form class="formulario" method="POST" action="4-Contactenos.php">
        <fieldset>
            <legend>Escribenos y Te Contactaremos</legend>

            <?php foreach ($errores as $error) :  ?>
                <div class="alerta error">
                    <?php echo $error;  ?>
                </div>
            <?php endforeach;  ?>

            <div class="formulario__contactenos">
                <div>
                    <label for="nombres">Nombres</label>
                    <input type="text" placeholder="Nombres" id="nombres" name="contacto[nombres]">
                </div>

                <div>
                    <label for="apellidos">Apellidos</label>
                    <input type="text" placeholder="Apellidos" id="apellidos" name="contacto[apellidos]">
                </div>

                <div>
                    <label for="correo">Correo</label>
                    <input type="email" placeholder="Correo" id="correo" name="contacto[correo]">
                </div>

                <div>
                    <label for="telefono">Teléfono</label>
                    <input type="tel" placeholder="Teléfono" id="telefono" name="contacto[telefono]">
                </div>

                <div>
                    <label for="nombredelconjunto">Nombre Del Conjunto</label>
                    <input type="text" placeholder="Nombre Del Conjunto" id="nombredelconjunto" name="contacto[nombredelconjunto]">
                </div>

                <div>
                    <label for="ayudarlo">¿Podemos Ayudarlo?</label>

                    <input type="text" placeholder="Escribe lo que necesites" id="ayudarlo" name="contacto[ayudarlo]">
                </div>

            </div>



            <button class="p2__boton">Enviar</button>

        </fieldset>
    </form>

</div>

</body>

</html>