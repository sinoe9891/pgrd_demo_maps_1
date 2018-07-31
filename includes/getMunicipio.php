<?php header('Content-type: text/html; charset="utf-8"'); ?>


<?php

// obtener area tematica
	echo '<select  onchange="getrubro(this.value, cbx_pais.value);" name="cbx_areatematica" id="cbx_areatematica" placeholder="Seleccione un Municipio">		<option value="">Seleccione un Municipio</option>
			<option value="1">El Progreso</option>
			<option value="2">El Negrito</option>
			// <option value="3">Fitotecnia</option>
			// <option value="4">Zootecnia</option>

		</select>';

?>
