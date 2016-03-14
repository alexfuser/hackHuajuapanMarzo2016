<?php
//configucarcion de la conexcion a base de datos
  $bd_host = "localhost"; 
  $bd_usuario = "root"; 
  $bd_password = "richarsam10"; 
  $bd_base = "test"; 

$con = mysql_connect($bd_host, $bd_usuario, $bd_password);
mysql_select_db($bd_base, $con);

$sql=mysql_query("select * from negocio",$con);
?>
<table style="color: rgb(0,0,250); width: 450px;">
	<tr style="background: #9BB;">
		<td>Nombre del Negocio</td>
		<td>Domimicilo del Negocio</td>
		<td>Titular del Negocio</td>
		<td>Giro del Neg</td>
		<td>Descripción</td>
	</tr>
	<?php
	while ($row = mysql_fetch_array($sql)) {
		echo "<tr>";
		echo "<td>".$row['NombreNegocio']."</td>";
		echo "<td>".$row['DomicilioNegocio']."</td>";
		echo "<td>".$row['TitularNegocio']."</td>";
		echo "<td>".$row['GiroNegocio']."</td>";
		echo "<td>".$row['DescripcionNegocio']."</td>";
		echo "</tr>";
	}
	?>
	
</table>