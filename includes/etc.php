<?php
	header('Content-type: text/html; charset="utf-8"');
	require ('conexion.php');

	echo 'Selecciona un Proyecto : <select onChange="getMunicipio(this.value);" name="cbx_pais" id="cbx_pais">';

	//$query = "SELECT `id-pais`, `pais-nom` FROM `pst-pais` ORDER BY `pais-nom`";
	$query = "SELECT `pais-id`, `pais-nom` FROM `pst-pais` ORDER BY `pais-nom`";

//	SELECT * FROM `pst-pais` WHERE `pais-id` = 2

	if($resultado=$mysqli->query($query))
	{
		?>
		<option value="" >Seleccione un Proyecto</option>

		<?php
		while($row = $resultado->fetch_assoc())
		{
		?>

		<option value="<?php echo $row['pais-id']; ?>"><?php echo $row['pais-nom']; ?></option>

		<?php
		}
	}
	echo '</select>';

?>
