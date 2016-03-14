<?php
include("qrcode.php");
session_start();
	require_once ('../Controlador/ABCEntidades.php');
		if(isset($_POST["generar_qr"])){
		$cont=NEW Usuario;
		$usuario=$_POST["id"];
		$qr = new qrcode();
		$qr->text($usuario);
		echo($qr->get_link());
	}
?>
