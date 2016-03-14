<!DOCTYPE html>
<html>
<head>
	<title>Panel Configuración General</title>
	<?php  include '../view/head.php'; ?>
  <link rel="icon" type="image/png" href="../src/icono.png" />
  <link href="../css/prism.css" rel="stylesheet">
    <link href="../css/ghpages-materialize.css" type="text/css" rel="stylesheet" media="screen,projection">
    <link rel="stylesheet" href="../css/styleconfi.css">
</head>
<body>
<!--================================================================ Header ==================================================================-->
<header>  
  <div class="container">
    <a href="#" data-activates="nav-mobile" class="button-collapse top-nav waves-effect waves-light circle hide-on-large-only">
      <i class="mdi-navigation-menu"></i>
    </a>
  </div>
      <ul id="nav-mobile" class="side-nav fixed  blue lighten-1 ">
        <li class=""> <a href="panelConfiguracion.php"><h5 class="white-text"> <img src="../src/icono.png" width="100px"> </h5></a></li>
        <br><br><br>
         <div class="progress">
            <div class="determinate" style="width: 100%"></div>
        </div>
        <li class=""><a href="Evento.php" class="waves-effect waves-teal white-text"><h5><i class="Medium material-icons">query_builder</i> Evento</h5></a></li>
        <li class=""><a href="Actividad.php" class="waves-effect waves-teal white-text"><h5><i class="Small material-icons">web</i> Actividad</h5></a></li>
         <li class=""><a href="../conexion/logout.php" class="waves-effect waves-teal white-text"><h5><i class="Small material-icons">input</i> Salir</h5></a></li>
      </ul>
	</header>
  <!--============================================================= Main Navbar ===============================================================-->
    <main>
	    <div class="section  orange darken-3" id="index-banner">
	  		<div class="container ">
	    		<div class="row ">
	      			<div class="col s12 m9">
				        <h5 class="header center-on-small-only"><i class=" medium material-icons" >settings</i> Configuración General</h5> 
				    </div>
	    		</div>
			</div>
   </main>  

  <!--============================================================= Main Contenidos ==============================================================-->
  <main>
     <div class="section">
      <div class="container">
        <div class="row">
          <div class="col s12">
            <h5 class="flow-text blue-text text-darken-1" style="width:100%;">Bienvenido Administrador : </h5>
              <div class="carousel">
                <a class="carousel-item" href="#one!"><img src="../images/01.jpg"></a>
                <a class="carousel-item" href="#two!"><img src="../images/02.jpg"></a>
                <a class="carousel-item" href="#three!"><img src="../images/03.jpg"></a>
                <a class="carousel-item" href="#four!"><img src="../images/04.jpg"></a>
                <a class="carousel-item" href="#five!"><img src="../images/05.jpg"></a>
              </div>
          </div>
        </div>

        <div class="row">
          <h1 align="center" class="teal-text">NuuParkApp v.01</h1>
        </div>
      </div>
     </div> 
  </main>
  
	<!--=============================================================== Scripts ===============================================================-->
	    <?php include '../view/scripts.php';?>    
</body>
</html>