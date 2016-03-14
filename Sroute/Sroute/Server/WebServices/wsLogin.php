<?php
session_start();
	require_once ('../Controlador/ABCEntidades.php');
		if(isset($_POST["iniciar_sesion"])){
		$cont=NEW Usuario;
		$pss=md5($_POST["password"]);
		$resultado=$cont->iniciar_sesion( $_POST['usuario'],$pss);
		$registros = mysqli_fetch_array($resultado,MYSQLI_BOTH);
		if($registros[0]==null){
			echo(2);
		}
		else {
			if($pss==$registros[7]){
				$_SESSION["usuario"]= $registros[0];
				echo (1);
			}
			else{
				echo("error");
			}
		}
	}
?>
