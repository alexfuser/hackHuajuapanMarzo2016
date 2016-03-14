<!DOCTYPE html>
<html>
 <head>
 <div id=encabezado>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>ALTA COMERCIANTE</title>
  <Link rel="stylesheet" tipe"text/css" href="negocioregistro.css">
  <script language ="JavaScript" type="text/javascript" src="ajax.js"></script>
  </div>
 </head>
 <body>
 
<div class="main-container">
<div id="divAnid">
<center>
<form name="NuevoNeg" action="" onsubmit="enviarDatosNegocio(); return false">
<h1 id="titulo">ALTA COMERCIANTE</h1>
 <h2>Introdusca sus datos:</h2>
<p id="parrafo1"> <strong> Nombre del negocio: </strong> <input name="NomNeg" type="text"> </p>
<p id="parrafo1"> <strong> Domicilio del negocio: </strong> <input type="text" name="DomNeg"> </p>
<p id="parrafo1"> <strong> Titular del negocio: </strong> <input type="text" name="TitNeg"> </p>
<p id="parrafo1"> <strong> Giro del negocio: </strong> 
<br>
<input type="radio" name="GirNeg" value="Restaurante">Restaurante</input>
<input type="radio" name="GirNeg" value="Club social">Club social</input>
<input type="radio" name="GirNeg" value="Hotel">Hotel</input>
<p id="parrafo1"><strong>Descripción  del negocio:<br></strong><textarea name="descripcion" rows="6" cols="40">Escriba la descripción</textarea> </p>
</p>
<td>&nbsp;</td><td><label><input type="submit" name="Submit" value="Grabar" /></label></td>
</center>
</form>
</div>
<form enctype="multipart/form-data" action="uploader.php" method="POST">
<input name="SubirArchivo" type="file" />
<input type="submit" value="Subir imagen" name="SubirImag" /><br>
<input type="button" value="home" onclick="window.top.location.href=('http://localhost/proyecto/inicio.html')" />
</form>
<div id="resultado"><?php include('consultaNeg.php');?></div>
</div>


 </body>

</html>