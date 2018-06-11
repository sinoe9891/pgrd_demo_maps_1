<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<?php
if (isset($_POST['subir'])) {
    $nombre = $_FILES['archivo']['name'];
    $tipo = $_FILES['archivo']['type'];
    $tamanio = $_FILES['archivo']['size'];
    $ruta = $_FILES['archivo']['tmp_name'];
    $destino = "docs/2016/" . $nombre;

    print_r($_FILES);

    if ($tipo=="application/pdf") {
    echo "pdf";
    if ($tamanio<500000) {
    echo "menos a 500kb";
        //copy($ruta, $destino);    
}
    }


    echo "</br>Datos</br>".$nombre." name</br>".
    $tipo." type</br>".
    $tamanio." Tamaño</br>".
    $ruta." Ruta</br>".
    $destino." Destino</br>";
}
?>

<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <div style="width: 500px;margin: auto;border: 1px solid blue;padding: 30px;">
            <h4>Subir PDF</h4>
            <form method="post" action="" enctype="multipart/form-data">
                <table>
                    <tr>
                        <td><label>Titulo</label></td>
                        <td><input type="text" name="titulo"></td>
                    </tr>
                    <tr>
                        <td><label>Descripcion</label></td>
                        <td><textarea name="descripcion"></textarea></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="file" name="archivo"></td>
                    <tr>
                        <td><input type="submit" value="subir" name="subir"></td>
                        <td><a href="lista.php">lista</a></td>
                    </tr>
                </table>
            </form>            
        </div>
    </body>
</html>
