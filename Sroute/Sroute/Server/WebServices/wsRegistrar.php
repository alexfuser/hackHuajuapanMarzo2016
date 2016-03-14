<?php
session_start();
	require_once ('../Controlador/ABCEntidades.php');
		if(isset($_POST["alta_usuario"])){
		$cont=NEW Usuario;
		$pss=md5($_POST["password"]);
		$resultado=$cont->alta_usuario($_POST['usuario'],$_POST['nombre'],$pss,$_POST['celular'],$_POST['email']);
		if ($resultado==null)
		{
		echo(2);
		}
		else {
		echo(1);
		}
	}
?>
