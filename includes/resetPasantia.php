<?php if ($_GET) {
	if (isset($_GET['pais'])) {
		echo "<h5 align='center'>Selecciona un País disponible</h5>";
	}elseif (isset($_GET['areaTematica'])) {
		echo "<h5 align='center'>Selecciona un Area Tematica disponible</h5>";
	}elseif (isset($_GET['rubro'])) {
		echo "<h5 align='center'>Selecciona un Rubro disponible</h5>";
	}
} ?>

