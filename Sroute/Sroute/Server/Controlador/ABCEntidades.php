<?php
		require "DBControl.php";
		class Usuario{

			function iniciar_sesion($usuario,$pass){
				$sql = "select * from Usuarios where (usuario = '".$usuario."' and password = '".$pass."')";
				$res = mysqli_query(conectar(),$sql);
				return ($res);
			}

			function alta_usuario($usuario,$nombre,$password,$celular,$email){
				$sql = "insert into Usuarios (idTipoUsuario,usuario,nombre,password,celular,email) values(1,'".$usuario."','".$nombre."','".$password."','".$celular."','".$email."')";
				$res=mysqli_query(conectar(),$sql);
				return ($res);
			}

			function maquetado_slider($id){
				$sql = "select * from Usuarios where (usuario = '".$id."')";
				$res=mysqli_query(conectar(),$sql);
				return ($res);
			}


		}

	?>
