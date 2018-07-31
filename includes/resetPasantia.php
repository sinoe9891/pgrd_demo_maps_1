<?php
 $img = "region1.jpg";
if ($_GET) {
	if (isset($_GET['pais'])) {
		echo "<h5 align='center'>Seleccione un Proyecto</h5>";
    echo "<img src='./docs/".$img."' />";
	}elseif (isset($_GET['areaTematica'])) {
		echo "<h5 align='center'>Seleccione un Municipio</h5>";
    echo "<img src='./docs/".$img."' />";
	}elseif (isset($_GET['rubro'])) {
		echo "<h5 align='center'>Seleccione un Rubro disponible</h5>";
    echo "<img src='./docs/".$img."' />";
	}
} ?>
