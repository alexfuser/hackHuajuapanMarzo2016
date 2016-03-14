<?php
  $bd_host = "localhost"; 
  $bd_usuario = "root"; 
  $bd_password = "richarsam10"; 
  $bd_base = "test"; 

$con=mysql_connect($bd_host,$bd_usuario,$bd_password);
mysql_select_db($bd_base, $con);
//varialbes
$NombNeg=$_POST['NomNeg'];
$DomiNeg=$_POST['DomNeg'];
$TituNeg=$_POST['TitNeg'];
$giroNeg=$_POST['GirNeg'];
$descNeg=$_POST['descripcion'];

//registra los datos del empleados
$sql="INSERT INTO negocio (NombreNegocio,DomicilioNegocio,TitularNegocio,GiroNegocio,DescripcionNegocio) VALUES ('$NombNeg','$DomiNeg','$TituNeg','$giroNeg','$descNeg')";
mysql_query($sql,$con) or die ('Error.'.mysql_error());
include('consultaNeg.php');
?>