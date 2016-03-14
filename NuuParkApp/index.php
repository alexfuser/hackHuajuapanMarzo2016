<!DOCTYPE html>
<html>
	<?php  include 'view/head.php'; ?>
	<link rel="icon" type="image/png" href="src/icono.png" />
	<link rel="stylesheet" type="text/css" href="css/styleIndex.css">

<body>
	<!--=============================================== header ================================================-->
	
	<!--=============================================== body ================================================-->
		<div class="contenidoPrincipal">
			<div class="slider fullscreen ">
				<ul class="slides">
				    <li>
				      <img src="images/01R.png "> <!-- random image -->
				      <div class="caption center-align ">
				      	<img src="images/logo-nvo.png" style="width:300px;">
				        <h3 class="white-text text-darker-1">Bienvenido a Parque Bicentenario!</h3>
				        <h5 class="white-text text-darker-4">Huajapan de León Óaxaca</h5>
				      </div>
				    </li>
				    <li>
				      <img src="images/02.png"> <!-- random image -->
				      <div class="caption left-align ">
				      	<img src="images/logo-nvo.png" style="width:300px;">
				        <h3 class="white-text">Talleres, Eventos, Actividades y Cursos. </h3>
				        <h5 class="white-text text-darker-4">Conoce nuevos eventos y talleres.</h5>
				        <h5><a href="view/opciones.php">Checa aquí los eventos </a><i class="material-icons left"> view_agenda</i></h5>
				      </div>
				    </li>
				    <li>
				      <img src="images/03.png"> <!-- random image -->
				      <div class="caption right-align ">
				      	<img src="images/logo-nvo.png" style="width:300px;">
				      	<img src="images/flx.png" style="width:100px;">
				        <h3 class="white-text text-darker-1 ">Enterate de todo antes que nadie</h3>
				        <h5 class="white-text text-darker-4">Regístrate y empieza a disfutar nuestros eventos.</h5>
				      </div>
				    </li>
				  </ul>
				</div>
		</div>

			<div class="fixed-action-btn" style="bottom:300px; right: 24px;">
			    <a href="view/login.php" class="btn-floating btn-large white tooltipped" data-position="left" data-delay="50" data-tooltip="Iniciar Sesión">
			      <i class="large material-icons blue-text text-lighten-1">supervisor_account</i>
			    </a>
			  </div>
		
	
	
	<!--=============================================== footer =============================================
	< ? php  include 'view/footer.php'; ?>	-->
	<!--=============================================== scripts =============================================-->
	<?php  include 'view/scriptIndex.php'; ?>
</body>
</html>