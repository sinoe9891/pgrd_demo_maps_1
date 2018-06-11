<?php   session_start();?>
<html>
	<head>
		    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		    <title>Pasantías | Universidad Zamorano</title>
		    <link rel="icon" href="./img/favicon.png" type="image/x-icon" />
        <link rel="stylesheet" type="text/css" href="css/materialize/css/materialize.min.css">
          <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <script src="includes/js.js" charset="utf-8"></script>
        <style type="text/css">
            body {
                  display: flex;
                  min-height: 100vh;
                  flex-direction: column;
                }

                main {
                  flex: 1 0 auto;
                }

                footer.page-footer {

                  background-color: #931919;
                }
                nav {
                  background-color: #008341;
                }
								img {
										width:100%;
										max-width:1000px;
								}
								.imgfooter {
										width:100%;
										max-width:213px;
										display:block;
										margin:auto;
								}

								.aligncenter img {
										 display: center;
								 }
								 .image_frame .image_wrapper img, {
										 transition: all .3s ease-in-out;
								 }

        </style>

		<!--  <link rel="stylesheet" href="css/style.css">-->
	</head>


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
      <div class="col s12 m12 l12"> <h4 align="center">Búsqueda de Pasantías </br><?php echo date('Y');?></h4> </div>
    </div>
        <form name="form1" action="">
        <div class="row">
          <div class="input-field col s4 m12 l4" id="estadoList"></div>
          <div class="input-field col s4 m12 l4" id="municipioList"></div>
          <div class="input-field col s4  m12 l4" id="rubroList"></div>
    </div>
          <div class="input-field col s12  m12 l6" id="pasantiaList"></div>
      </form>
      </div>
  </main>
<?php require_once('includes/footer.php'); ?>          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
         <script type="text/javascript" src="css/materialize/js/materialize.min.js" ></script>


<script type="text/javascript">
  $(document).ready(function() {
    $('select').material_select();
  });
</script>

	</body>
</html>
