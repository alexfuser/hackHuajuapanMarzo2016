
<!DOCTYPE html>
<html>
	<?php include '../view/head.php'; ?>
<body>
	<div class="contenidoPrincipal">
		<div>
			<?php include'../view/header.php';?>
		</div>
		
		<div class="row">
			<div class="col s12 l12 m12" align="center">
				<ul class="pagination hide-on-med-and-down">
			    <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
			    <li class="active"><a href="#!">Lunes</a></li>
			    <li class="active"><a href="#!">Martes</a></li>
			    <li class="active"><a href="#!">Miercoles</a></li>
			    <li class="active"><a href="#!">Jueves</a></li>
			    <li class="active"><a href="#!">Viernes</a></li>
			    <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
			 </ul>
			  <ul class="pagination " data-activates="mobile-demo" id="mobile-demo">
			  	<li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
        		<li class="active"><a href="#!">L</a></li>
			    <li class="waves-effect"><a href="#!">Ma</a></li>
			    <li class="waves-effect"><a href="#!">Mi</a></li>
			    <li class="waves-effect"><a href="#!">J</a></li>
			     <li class="waves-effect"><a href="#!">V</a></li>
			    <li class="disabled"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
      		</ul>
			</div>
		</div>
		<div class="row">
		<?php
			require_once '../conexion/conexion.php';
             $conn = dbConnect();
             $sql = 'SELECT * FROM actividades';
             $result = $conn->query($sql);
             $rows = $result->fetchAll();
             foreach ($rows as $row) {
             	echo '<div class="col s12 m6 l4">
				<li>	
				<div class="card medium" >
			    	<div class="card-image waves-effect waves-block waves-light">
			      		<img class="activator" src="../images/'.$row['Nombre_Actividad'].'.jpg" height="300px" width="300px">
			    	</div>
			    <div class="card-content">
			      	<span class="card-title activator grey-text text-darken-4">'.$row['Nombre_Actividad'].'<i class="material-icons right green-text" style="font-size: 50px">add</i></span>
			      	<p><a href="#">'.$row['Descripcion_Actividad'].'<br>'.$row['Horario'].'</a></p>
			    </div>
			    <div class="card-reveal">
			      <span class="card-title grey-text text-darken-4">'.$row['Nombre_Actividad'].'<i class="material-icons right">close</i></span>
			      <p>'.$row['Descripcion_Actividad'].'<br>
			      '.$row['Horario'].'<br>
			      Cupo: Editar<br>
			      En este curso podrá   
			      </p>
				</div>
				</div>
			</li>
			</div>';
         	 }
		?>
		</div>
		<!--iniciacion musical-->
		

	<div>
		<?php include'../view/footer.php'; ?>
	</div>
		<?php include'../view/scripts.php'; ?>
</body>
</html>