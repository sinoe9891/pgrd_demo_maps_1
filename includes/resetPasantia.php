<?php if ($_GET) {
	if (isset($_GET['pais'])) {
		echo "<h5 align='center'>Seleccione un Proyecto</h5>";
	}elseif (isset($_GET['areaTematica'])) {
		echo "<h5 align='center'>Seleccione un Municipio</h5>";
	}elseif (isset($_GET['rubro'])) {
		echo "<h5 align='center'>Seleccione un Rubro disponible</h5>";
	}
} ?>
