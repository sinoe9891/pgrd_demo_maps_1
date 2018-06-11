<?php   session_start();?>
<html>
<?php require_once('includes/header.php'); ?>


	<body onload="getEstado();">
  <main class="container">
    <div>
    <div class="row">

      <div class="col s12 m12 l12"> <h4 align="center">Pasantías <?php echo date('Y'); ?></h4> </div>
    </div>

    <div id="login-page" class="row body">
    <div class="col s12 z-depth-4 card-panel">
      <form class="login-form" action="includes/login.php" method="POST">
        <div class="row">
          <div class="input-field col s12 center">
            <i class="large material-icons orange600">verified_user</i>
            <h5 class="center login-form-text">Iniciar Sesión</h5>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-social-person-outline prefix"></i>
            <input name="user" id="username" type="text" placeholder="Nombre de Usuario">
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
            <input name="password" id="password" type="password" placeholder="Contraseña">
          </div>
        </div>

            <div class="row">
                <div class="input-field col s12">
                        <button class="btn waves-effect waves-light" type="submit" name="action">Acceder
              <i class="material-icons right">check</i>
            </button>
              </div>
        </div>

      </form>
    </div>
  </div>
      </div>

  </main>


<?php require_once('includes/footer.php'); ?>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

         <script type="text/javascript" src="css/materialize/js/materialize.min.js" ></script>
	</body>
</html>
