
<?php session_start();
if( !isset( $_SESSION['uid'] ) )
{
  header('Location: acceso.php');
  die();

}?>
<html>
<?php require_once('includes/header.php'); ?>
	<body onload="getPais();">
  <main class="container">
    <div>
    <div class="row">
        <div class="col s12 m12 l12">
        <h4 align="center">Proyectos PGRD <?php echo date('Y');?></h4>
        </div>
    </div>
        <div class="row" >
              <div class="input-field col s12  m12 l6">
              <div class="card">
                <div class="card-content">
                <span class="card-title">Agregar nuevo Proyecto </span>
                     <form method="POST" action="includes/new/nuevaPasantia.php" enctype="multipart/form-data" >
                        <div id="paisList"></div>
                        <div id="empresaList"></div>
                        <div id="atlist"></div>
                        <div id="rubroList"></div>
                        <div id="cultivoList"></div>
                         <div id="buttonnew"></div>
                       </form>
                 </div>
                </div>
              </div>

            <div class="input-field col s12  m12 l6" id="formEmpresa">



            </div>

       </div>
      </div>

  </main>


<?php require_once('includes/footer.php'); ?>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

         <script type="text/javascript" src="css/materialize/js/materialize.min.js" ></script>
	</body>
</html>
