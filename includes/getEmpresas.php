<?php header('Content-type: text/html; charset="utf-8"'); ?>

<?php
	// obtener rubro

	require ('conexion.php');

	$id_rubro = $_GET['rubroId'];
	$id_pais = $_GET['paisId'];
	$id_areaTematica = $_GET["aretematicaId"];
if ($id_areaTematica==1) {
	$query =  "select `pst-pasantia`.`pst-doc-id`, `pst-pais`.`pais-nom`, `pst-rubro`.`rb-at`, `pst-rubro`.`rb-nom`, `pst-rubro`.`rd-dsc`, `pst-empresa`.`emp-nom`, `pst-cultivos`.`ctv-nom` from `pst-pasantia` inner join `pst-detalle` inner join `pst-rubro` inner join `pst-inter-rb-emp`inner join `pst-empresa` inner join `pst-inter-emp-pais` INNER JOIN `pst-pais` inner JOIN `pst-cultivos` INNER JOIN `pst-inter-emp-cv` where `pst-pasantia`.`pst-id` = `pst-detalle`.`id-pst` AND `pst-inter-rb-emp`.`id-emp`=`pst-empresa`.`emp-id` AND `pst-detalle`.`id-rb`= `pst-rubro`.`rb-id` AND `pst-rubro`.`rb-id` = `pst-inter-rb-emp`.`id-rb` AND `pst-pasantia`.`pst-pais-id` = `pst-inter-emp-pais`.`emp-pais-id` and `pst-empresa`.`emp-id` = `pst-inter-emp-pais`.`emp-id` and `pst-pasantia`.`pst-emp-id`=`pst-empresa`.`emp-id` and `pst-pasantia`.`pst-pais-id` = ".$id_pais." and `pst-detalle`.`id-rb` = ".$id_rubro." and `pst-pais`.`pais-id` = `pst-pasantia`.`pst-pais-id` AND `pst-rubro`.`rb-id`=`pst-inter-emp-cv`.`pst-id-rb` AND `pst-empresa`.`emp-id`=`pst-inter-emp-cv`.`id-emp` AND `pst-inter-emp-cv`.`id-cv`=`pst-cultivos`.`ctv-id` and `pst-pasantia`.`pst-pais-id`=`pst-inter-emp-cv`.`id-pais`";
	if($resultado=$mysqli->query($query))
	{
		?>
		<h4>PROYECTOS</h4>
			<?php
			while($row = $resultado->fetch_assoc())
			{
			?>
		<div class="col s12 m4 l4">
          <div class="card">
            <div class="card-content ">
              <span class="card-title">Registro Número: <?php echo $row['pst-doc-id']; ?></span>
								<p>Nombre de Región: <?php echo $row['pais-nom']; ?></p>
								<p>Departamento: <?php  if($row['rb-at']==1){echo 'Fitotecnia';}elseif($row['rb-at']==2){echo "Zootecnia";}?></p>
								<p>Rubro: <?php echo $row['rb-nom']." (". $row['rd-dsc'].")" ; ?></p>
								<p>Cultivo: <?php echo $row['ctv-nom']; ?></p>
								<p>Empresa: <?php echo $row['emp-nom']; ?></p>
            </div>
          </div>
    </div>
		<div class="col s12 m4 l4">
          <div class="card">
            <div class="card-content ">
				<p>Cobertura del Proyecto:</p></br><img src="docs/<?php echo $row['pst-doc-id']; ?>.jpg" width="1200">
            </div>
            <div class="card-action">
	            <a class="waves-effect waves-light btn-large ripple-effect" target="_blank" style="background-color:#e8ac35" href="docs/<?php echo $row['pst-doc-id']; ?>.jpg"><i class="material-icons right">library_books</i>VER IMAGEN COMPLETA</a>
	        </div>
          </div>
    </div>
		<?php
			}
			?>
		<?php
	}
}elseif ($id_areaTematica==2){
	//echo 'Selecciona Rubro:';
	///     pst-id   pais-nom   rb-at   rb-nom   rd-dsc   emp-nom
	$query =  "select `pst-pasantia`.`pst-doc-id`, `pst-pais`.`pais-nom`, `pst-rubro`.`rb-at`, `pst-rubro`.`rb-nom`, `pst-rubro`.`rd-dsc`, `pst-empresa`.`emp-nom` from `pst-pasantia` inner join `pst-detalle` inner join `pst-rubro` inner join `pst-inter-rb-emp`inner join `pst-empresa` inner join `pst-inter-emp-pais` INNER JOIN `pst-pais` where `pst-pasantia`.`pst-id` = `pst-detalle`.`id-pst` AND `pst-inter-rb-emp`.`id-emp`=`pst-empresa`.`emp-id` AND `pst-detalle`.`id-rb`= `pst-rubro`.`rb-id` AND `pst-rubro`.`rb-id` = `pst-inter-rb-emp`.`id-rb` AND `pst-pasantia`.`pst-pais-id` = `pst-inter-emp-pais`.`emp-pais-id` and `pst-empresa`.`emp-id` = `pst-inter-emp-pais`.`emp-id` and `pst-pasantia`.`pst-emp-id`=`pst-empresa`.`emp-id` and `pst-pasantia`.`pst-pais-id` = ".$_GET['paisId']." and `pst-detalle`.`id-rb` = ".$_GET['rubroId']." and `pst-pais`.`pais-id` = `pst-pasantia`.`pst-pais-id`";
	if($resultado=$mysqli->query($query))
	{
		?>
		<h4>Pasantías Disponibles</h4>
			<?php
			while($row = $resultado->fetch_assoc())
			{
			?>
        <div class="col s12 m4 l4">
          <div class="card z-depth-2">
            <div class="card-content ">
              <span class="card-title">Registro Número: <?php echo $row['pst-doc-id']; ?></span>
				<p>Nombre de Región: <?php echo $row['pais-nom']; ?></p>
				<p>Departamento:  <?php  if($row['rb-at']==1){echo 'Fitotecnia';}elseif($row['rb-at']==2){echo "Zootecnia";}?></p>
				<p>Rubro: <?php echo $row['rb-nom']." (". $row['rd-dsc'].")" ; ?></p>
				<p>Empresa: <?php echo $row['emp-nom']; ?></p>
				<p>Cobertura del Proyecto:</p></br><img src="docs/<?php echo $row['pst-doc-id']; ?>.jpg" width="900">

            </div>
            <div class="card-action">
	            <a class="waves-effect waves-light btn btn-large ripple-effect" target="_blank" style="background-color:#e8ac35" href="docs/<?php echo $row['pst-doc-id']; ?>.jpg"><i class="material-icons right">camera_alt</i>VER IMAGEN COMPLETA</a>
	        </div>

          </div>
        </div>
		<?php
			}
			?>



		<?php



	}
}

?>
