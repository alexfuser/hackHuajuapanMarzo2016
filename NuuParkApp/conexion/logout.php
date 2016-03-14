<?php 
	$parametros_cookies = session_get_cookie_params(); 
	setcookie(session_name(),0,1,$parametros_cookies["path"]);
	//header('Location: index.php');
	echo 'sesion finalizada';
	echo '<a href="../Index.php">Volver a Pagina Principal</a>';
?>