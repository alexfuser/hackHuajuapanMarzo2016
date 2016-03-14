<? php 
$destinatario = "rob.obediah@hotmail.com"; 
$asunto = "Este mensaje es de prueba"; 
$cuerpo = ''; 


<html> 
<head> 
   <title>Prueba de correo</title> 
</head> 
<body> 
<h1>Hola!!</h1> 
<p> 
<b>Para recuperar tu contraseña debes ir a tu correo!!</b>.<br>Hemos enviado un correo a la dirección que nos proporcionaste, revísalo. Deberás seguir una serie de pasos para obtener tu nueva contraseña. 
</p> 
</body> 
</html>  


$headers .= "MIME-Version: 1.0\r\n". 
$headers .= "Content-type: text/html; charset=iso-8859-1\r\n". 
$headers .= "From: Morales Hernández Roberto <rob.obediah@hotmail.com>\r\n". 
$headers .= "Reply-To: eddboykafaceless@gmail.com\r\n". 
$headers .= "Return-path: jonathan_dnainy@hotmail.com\r\n". phpversion();

mail($destinatario,$asunto,$cuerpo,$headers); 
?>