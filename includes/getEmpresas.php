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
		<h4>Pasantías Disponibles</h4>
			<?php
			while($row = $resultado->fetch_assoc())
			{
			?>
		<div class="col s12 m4 l4">
          <div class="card">
            <div class="card-content ">
              <span class="card-title">Pasantía ID: <?php echo $row['pst-doc-id']; ?></span>
				<p>País: <?php echo $row['pais-nom']; ?></p>
				<p>Área Temática: <?php  if($row['rb-at']==1){echo 'Fitotecnia';}elseif($row['rb-at']==2){echo "Zootecnia";}?></p>
				<p>Rubro: <?php echo $row['rb-nom']." (". $row['rd-dsc'].")" ; ?></p>
				<p>Cultivo: <?php echo $row['ctv-nom']; ?></p>
				<p>Empresa: <?php echo $row['emp-nom']; ?></p>
				<p>Mapa:</p></br><img src="docs/<?php echo $row['pst-doc-id']; ?>.jpg" width="900">

            </div>
            <div class="card-action">
	            <a class="waves-effect waves-light btn-large ripple-effect" target="_blank" style="background-color:#e8ac35" href="docs/<?php echo $row['pst-doc-id']; ?>.pdf"><i class="material-icons right">library_books</i>Información de Pasantía</a>
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
              <span class="card-title">Pasantía ID: <?php echo $row['pst-doc-id']; ?></span>
				<p>País: <?php echo $row['pais-nom']; ?></p>
				<p>Área Temática: <?php  if($row['rb-at']==1){echo 'Fitotecnia';}elseif($row['rb-at']==2){echo "Zootecnia";}?></p>
				<p>Rubro: <?php echo $row['rb-nom']." (". $row['rd-dsc'].")" ; ?></p>
				<p>Empresa: <?php echo $row['emp-nom']; ?></p>
				<p>Mapa:</p></br><img src="docs/<?php echo $row['pst-doc-id']; ?>.jpg" width="800">
            </div>
            <div class="card-action">
	            <a class="waves-effect waves-light btn btn-large ripple-effect" target="_blank" style="background-color:#e8ac35" href="docs/<?php echo $row['pst-doc-id']; ?>.pdf"><i class="material-icons right">library_books</i>Información de Pasantía</a>
	        </div>

          </div>
        </div>
		<?php
			}
			?>



		<?php



	}
}
/*
<select onchange="getrubro(this.value, cbx_pais.value);" name="cbx_areatematica" id="cbx_areatematica">
		<option value="">Seleccione un Área Temática</option>
		<option value="1">Fitotecnia</option>
		<option value="2">Zootecnia</option>

</select>';



$sql = "select * from `pst-empresa` inner join `pst-inter-rb-emp` where `pst-inter-rb-emp`.`id-rb`=22 AND `pst-empresa`.`pst-emp-pais-id`= 1 AND `pst-inter-rb-emp`.`id-emp`=`pst-empresa`.`emp-id`";

$sql = "select * from `pst-pasantia` inner join `pst-detalle` inner join `pst-rubro` inner join `pst-inter-rb-emp`inner join `pst-empresa` where `pst-pasantia`.`pst-id` = `pst-detalle`.`id-pst` AND `pst-inter-rb-emp`.`id-emp`=`pst-empresa`.`emp-id` AND `pst-detalle`.`id-rb`= `pst-rubro`.`rb-id` AND `pst-rubro`.`rb-id` = `pst-inter-rb-emp`.`id-rb` AND `pst-pasantia`.`pst-pais-id`=`pst-empresa`.`pst-emp-pais-id` AND `pst-pasantia`.`pst-pais-id`= 1";


select * from `pst-pasantia` inner join `pst-detalle` inner join `pst-rubro` inner join `pst-inter-rb-emp`inner join `pst-empresa` where `pst-pasantia`.`pst-id` = `pst-detalle`.`id-pst` AND `pst-inter-rb-emp`.`id-emp`=`pst-empresa`.`emp-id` AND `pst-detalle`.`id-rb`= `pst-rubro`.`rb-id` AND `pst-rubro`.`rb-id` = `pst-inter-rb-emp`.`id-rb` AND `pst-pasantia`.`pst-pais-id` = `pst-inter-emp-pais`.`emp-pais-id` AND `pst-pasantia`.`pst-pais-id`= 1


por pais

select * from `pst-pasantia` inner join `pst-detalle` inner join `pst-rubro` inner join `pst-inter-rb-emp`inner join `pst-empresa` inner join `pst-inter-emp-pais` where `pst-pasantia`.`pst-id` = `pst-detalle`.`id-pst` AND `pst-inter-rb-emp`.`id-emp`=`pst-empresa`.`emp-id` AND `pst-detalle`.`id-rb`= `pst-rubro`.`rb-id` AND `pst-rubro`.`rb-id` = `pst-inter-rb-emp`.`id-rb` AND `pst-pasantia`.`pst-pais-id` = `pst-inter-emp-pais`.`emp-pais-id` AND `pst-pasantia`.`pst-pais-id`= 1 and `pst-empresa`.`emp-id` = `pst-inter-emp-pais`.`emp-id`

todas

select * from `pst-pasantia` inner join `pst-detalle` inner join `pst-rubro` inner join `pst-inter-rb-emp`inner join `pst-empresa` inner join `pst-inter-emp-pais` where `pst-pasantia`.`pst-id` = `pst-detalle`.`id-pst` AND `pst-inter-rb-emp`.`id-emp`=`pst-empresa`.`emp-id` AND `pst-detalle`.`id-rb`= `pst-rubro`.`rb-id` AND `pst-rubro`.`rb-id` = `pst-inter-rb-emp`.`id-rb` AND `pst-pasantia`.`pst-pais-id` = `pst-inter-emp-pais`.`emp-pais-id` and `pst-empresa`.`emp-id` = `pst-inter-emp-pais`.`emp-id`

select * from `pst-pasantia` inner join `pst-detalle` inner join `pst-rubro` inner join `pst-inter-rb-emp`inner join `pst-empresa` inner join `pst-inter-emp-pais` where `pst-pasantia`.`pst-id` = `pst-detalle`.`id-pst` AND `pst-inter-rb-emp`.`id-emp`=`pst-empresa`.`emp-id` AND `pst-detalle`.`id-rb`= `pst-rubro`.`rb-id` AND `pst-rubro`.`rb-id` = `pst-inter-rb-emp`.`id-rb` AND `pst-pasantia`.`pst-pais-id` = `pst-inter-emp-pais`.`emp-pais-id` and `pst-empresa`.`emp-id` = `pst-inter-emp-pais`.`emp-id` and `pst-pasantia`.`pst-emp-id`=`pst-empresa`.`emp-id`

select `pst-pasantia`.`pst-id`, `pst-pais`.`pais-nom`, `pst-rubro`.`rb-at`, `pst-rubro`.`rb-nom`, `pst-rubro`.`rd-dsc`, `pst-empresa`.`emp-nom` from `pst-pasantia` inner join `pst-detalle` inner join `pst-rubro` inner join `pst-inter-rb-emp`inner join `pst-empresa` inner join `pst-inter-emp-pais` INNER JOIN `pst-pais` where `pst-pasantia`.`pst-id` = `pst-detalle`.`id-pst` AND `pst-inter-rb-emp`.`id-emp`=`pst-empresa`.`emp-id` AND `pst-detalle`.`id-rb`= `pst-rubro`.`rb-id` AND `pst-rubro`.`rb-id` = `pst-inter-rb-emp`.`id-rb` AND `pst-pasantia`.`pst-pais-id` = `pst-inter-emp-pais`.`emp-pais-id` and `pst-empresa`.`emp-id` = `pst-inter-emp-pais`.`emp-id` and `pst-pasantia`.`pst-emp-id`=`pst-empresa`.`emp-id` and `pst-pasantia`.`pst-pais-id` = 10 and `pst-detalle`.`id-rb` = 8 and `pst-pais`.`pais-id` = `pst-pasantia`.`pst-pais-id`


sin cultivo

	$query =  "select `pst-pasantia`.`pst-id`, `pst-pais`.`pais-nom`, `pst-rubro`.`rb-at`, `pst-rubro`.`rb-nom`, `pst-rubro`.`rd-dsc`, `pst-empresa`.`emp-nom` from `pst-pasantia` inner join `pst-detalle` inner join `pst-rubro` inner join `pst-inter-rb-emp`inner join `pst-empresa` inner join `pst-inter-emp-pais` INNER JOIN `pst-pais` where `pst-pasantia`.`pst-id` = `pst-detalle`.`id-pst` AND `pst-inter-rb-emp`.`id-emp`=`pst-empresa`.`emp-id` AND `pst-detalle`.`id-rb`= `pst-rubro`.`rb-id` AND `pst-rubro`.`rb-id` = `pst-inter-rb-emp`.`id-rb` AND `pst-pasantia`.`pst-pais-id` = `pst-inter-emp-pais`.`emp-pais-id` and `pst-empresa`.`emp-id` = `pst-inter-emp-pais`.`emp-id` and `pst-pasantia`.`pst-emp-id`=`pst-empresa`.`emp-id` and `pst-pasantia`.`pst-pais-id` = ".$_GET['paisId']." and `pst-detalle`.`id-rb` = ".$_GET['rubroId']." and `pst-pais`.`pais-id` = `pst-pasantia`.`pst-pais-id`";


con cultivo
	select `pst-pasantia`.`pst-id`, `pst-pais`.`pais-nom`, `pst-rubro`.`rb-at`, `pst-rubro`.`rb-nom`, `pst-rubro`.`rd-dsc`, `pst-empresa`.`emp-nom`, `pst-cultivos`.`ctv-nom` from `pst-pasantia` inner join `pst-detalle` inner join `pst-rubro` inner join `pst-inter-rb-emp`inner join `pst-empresa` inner join `pst-inter-emp-pais` INNER JOIN `pst-pais` inner JOIN `pst-cultivos` where `pst-pasantia`.`pst-id` = `pst-detalle`.`id-pst` AND `pst-inter-rb-emp`.`id-emp`=`pst-empresa`.`emp-id` AND `pst-detalle`.`id-rb`= `pst-rubro`.`rb-id` AND `pst-rubro`.`rb-id` = `pst-inter-rb-emp`.`id-rb` AND `pst-pasantia`.`pst-pais-id` = `pst-inter-emp-pais`.`emp-pais-id` and `pst-empresa`.`emp-id` = `pst-inter-emp-pais`.`emp-id` and `pst-pasantia`.`pst-emp-id`=`pst-empresa`.`emp-id` and `pst-pasantia`.`pst-pais-id` = ".$_GET['paisId']." and `pst-detalle`.`id-rb` = ".$_GET['rubroId']." and `pst-pais`.`pais-id` = `pst-pasantia`.`pst-pais-id` AND `pst-rubro`.`rb-id`=`pst-cultivos`.`ctv-rubro-id` AND `pst-empresa`.`emp-id`=`pst-cultivos`.`ctv-emp-id`


cultivo
	select `pst-pasantia`.`pst-doc-id`, `pst-pais`.`pais-nom`, `pst-rubro`.`rb-at`, `pst-rubro`.`rb-nom`, `pst-rubro`.`rd-dsc`, `pst-empresa`.`emp-nom`, `pst-cultivos`.`ctv-nom` from `pst-pasantia` inner join `pst-detalle` inner join `pst-rubro` inner join `pst-inter-rb-emp`inner join `pst-empresa` inner join `pst-inter-emp-pais` INNER JOIN `pst-pais` inner JOIN `pst-cultivos` INNER JOIN `pst-inter-emp-cv` where `pst-pasantia`.`pst-id` = `pst-detalle`.`id-pst` AND `pst-inter-rb-emp`.`id-emp`=`pst-empresa`.`emp-id` AND `pst-detalle`.`id-rb`= `pst-rubro`.`rb-id` AND `pst-rubro`.`rb-id` = `pst-inter-rb-emp`.`id-rb` AND `pst-pasantia`.`pst-pais-id` = `pst-inter-emp-pais`.`emp-pais-id` and `pst-empresa`.`emp-id` = `pst-inter-emp-pais`.`emp-id` and `pst-pasantia`.`pst-emp-id`=`pst-empresa`.`emp-id` and `pst-pasantia`.`pst-pais-id` = 2 and `pst-detalle`.`id-rb` = 8 and `pst-pais`.`pais-id` = `pst-pasantia`.`pst-pais-id` AND `pst-rubro`.`rb-id`=`pst-cultivos`.`ctv-rubro-id` AND `pst-empresa`.`emp-id`=`pst-inter-emp-cv`.`id-emp` AND `pst-inter-emp-cv`.`id-cv`=`pst-cultivos`.`ctv-id` and `pst-pasantia`.`pst-pais-id`=`pst-inter-emp-cv`.`id-pais`

select `pst-pasantia`.`pst-doc-id`, `pst-pais`.`pais-nom`, `pst-rubro`.`rb-at`, `pst-rubro`.`rb-nom`, `pst-rubro`.`rd-dsc`, `pst-empresa`.`emp-nom` from `pst-pasantia` inner join `pst-detalle` inner join `pst-rubro` inner join `pst-inter-rb-emp`inner join `pst-empresa` inner join `pst-inter-emp-pais` INNER JOIN `pst-pais` where `pst-pasantia`.`pst-id` = `pst-detalle`.`id-pst` AND `pst-inter-rb-emp`.`id-emp`=`pst-empresa`.`emp-id` AND `pst-detalle`.`id-rb`= `pst-rubro`.`rb-id` AND `pst-rubro`.`rb-id` = `pst-inter-rb-emp`.`id-rb` AND `pst-pasantia`.`pst-pais-id` = `pst-inter-emp-pais`.`emp-pais-id` and `pst-empresa`.`emp-id` = `pst-inter-emp-pais`.`emp-id` and `pst-pasantia`.`pst-emp-id`=`pst-empresa`.`emp-id` and `pst-pasantia`.`pst-pais-id` =28 and `pst-detalle`.`id-rb` = 9 and `pst-pais`.`pais-id` = `pst-pasantia`.`pst-pais-id`

*/



?>
