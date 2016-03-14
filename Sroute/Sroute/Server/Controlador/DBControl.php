<?php
			define("DB_RUTA", "db616731976.db.1and1.com");
			define("DB_USUARIO", "dbo616731976");
			define("DB_PASS", "sroute123");
			define("DB_NOMBRE", "db616731976");

			function conectar (){
				$enlace = mysqli_connect(DB_RUTA,DB_USUARIO,DB_PASS,DB_NOMBRE);
				if($enlace){
				}     else{
					die('Error de Conexion (' . mysqli_connect_errno() . ') '.mysqli_error());
				}
				return($enlace);
				mysqli_close($enlace);
			}
?>
