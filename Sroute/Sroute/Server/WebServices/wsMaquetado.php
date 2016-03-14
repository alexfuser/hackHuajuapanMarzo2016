<?php
session_start();
	require_once ('../Controlador/ABCEntidades.php');

		if(isset($_POST["maquetado_slider"])){
		$cont=NEW Usuario;
		$pss=md5($_POST["password"]);
		$resultado=$cont->maquetado_slider($_POST['id']);
		if ($resultado==null)
		{
		echo(2);
		}
		else {
		json_encode($resultado);
		}
	}
?>
