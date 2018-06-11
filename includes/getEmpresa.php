<?php header('Content-type: text/html; charset="utf-8"'); ?>
<?php
	 //obtener pais 

	require ('conexion.php');
	
	echo '<select  onChange="getEmpresa(this.value);" name="cbx_pais" id="cbx_pais" placeholder="Selecciona un País">';
	
	//$query = "SELECT `id-pais`, `pais-nom` FROM `pst-pais` ORDER BY `pais-nom`";
	$query = "SELECT DISTINCT `pst-pais`.`pais-id` FROM `pst-pasantia` INNER JOIN `pst-pais` WHERE `pst-pais`.`pais-id`= `pst-pasantia`.`pst-pais-id` ";

//	SELECT * FROM `pst-pais` WHERE `pais-id` = 2

	if($resultado=$mysqli->query($query))
	{
		?>
		<option value="" >Seleccione un País</option>
		
		<?php
		while($row = $resultado->fetch_assoc())
		{
		?>
		<option value="<?php echo $row['pais-id']; ?>"><?php echo $row['pais-nom']; ?></option></div>
		
		<?php
		}
	}
	echo '</select>';

?>