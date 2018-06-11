<?php   session_start();?>
<html>
	<?php require_once('includes/header.php'); ?>

	<body onload="getEstado();">
	<main class="container">
		<div>
			<div class="row">
				<div class="col s12 m12 l12">
					<h4 align="center">Capacitación y planificación territorial</br> para la Gestión de Riesgos. <?php echo date('Y'); ?></h3>
				</div>
			</div>
			<div class="input-field col s12  m12 l6">
			<div class="card">
				<div class="card-content">
				<span class="card-title">Escoge una opción</span>
					<form name="form1" action="">
					<div class="row">
						<div class="input-field col s4 m12 l4" id="estadoList"></div>
						<div class="input-field col s4 m12 l4" id="municipioList"></div>
						<div class="input-field col s4  m12 l4" id="rubroList"></div>
					</div>
						<div class="input-field col s12  m12 l6" id="pasantiaList"></div>
					</form>
		</div>
		</div>
		</div>
		</div>
	</main>
<?php require_once('includes/footer.php'); ?>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
         <script type="text/javascript" src="css/materialize/js/materialize.min.js" ></script>
<script type="text/javascript">
  $(document).ready(function() {
    $('select').material_select();
  });
</script>

	</body>
</html>
