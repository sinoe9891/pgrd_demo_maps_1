<?php   session_start();?>
<html>
	<?php require_once('includes/header.php'); ?>

	<body onload="getEstado();">
  <nav style="height: 150px">
  <div class="container" >
    <div class="nav-wrapper">
      <a href="#!" class="brand-logo center">
      <img  src="img/logos-deptos-Blancos-10.png">
      </a>
    </div>
    </div>
  </nav>
	<main class="container">
		<div>
			<div class="row">
				<div class="col s12 m12 l12">
					<h4 align="center">PGRD <?php echo date('Y'); ?></h4>
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
