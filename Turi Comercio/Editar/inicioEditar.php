<!DOCTYLE html>
<html>
<head>
<div id=encabezado>
<meta charset ="UTF-8">
<meta name ="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="Inicio.css">
<script language ="JavaScript" type="text/javascript" src="ajax_editar.js"></script>
	<title>EDITAR</title>
</div>
</head>
<body>

<CENTER>
<p id="titular"><strong> Confirmar Tirular del negocio :</strong><input type="text" name="BuscTitular"></p>
<p id="parrafo1"> <strong> Nombre del negocio: </strong> <input  type="text" name="NomNeg"> </p>
<p id="parrafo1"> <strong> Domicilio del negocio: </strong> <input type="text" name="DomNeg"> </p>
<p id="parrafo1"> <strong> Giro del negocio: </strong> 
<td>&nbsp;</td><td><label><input type="submit" name="Submit" value="Grabar" /></label></td>
<br>
<input type="radio" name="GirNeg" value="Restaurante">Restaurante
<input type="radio" name="GirNeg" value="Club social">Club social
<input type="radio" name="GirNeg" value="Hotel">Hotel
<br>
<p id="parrafo1"><strong>Descripción  del negocio:<br></strong><textarea name="descripcion" rows="6" cols="40">Escriba la descripción</textarea> </p>
<br>

<p id="parrafo1"> <strong> Carga nueva imagen del negocio formato ".jpg":</strong> 
<form enctype="multipart/form-data" action="uploader.php" method="POST">
<input name="uploadedfile" type="file" />
<input type="submit" value="Subir imagen" />

</form>
</p>
<br>
<input type="button" value="Guardar" onclick="window.top.location.href=('file:///C:/Users/marco/Desktop/Dar de alta/index.html')" />
<div id="resultado"> <?php include('editarNegocios.php');?></div>
</CENTER>
<div id="resultado"><?php include('consultaNeg.php');?></div>

</body>
</html>
