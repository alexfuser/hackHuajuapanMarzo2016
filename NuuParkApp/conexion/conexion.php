<?php 
    function dbConnect (){
        $conn = null;
        $usuario = "root";
        $contrasena = "";
        try{
            $conn = new PDO('mysql:host=localhost;dbname=hack',$usuario, $contrasena);
            
            }
        catch(PDOException $e){
                echo "<p>Esto es Gracioso tienes un error: </p>" . $e->getMessage();
                exit;
            }
        return $conn;
    }
?>
