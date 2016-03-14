<?php

session_start();

include_once "../conexion/conexionLogin.php";

 

function verificar_login($user,$password,&$result) {

    $sql = "SELECT * FROM usuarios WHERE user = '$user' and password = '$password'";

    $rec = mysql_query($sql);

    $count = 0;

 

    while($row = mysql_fetch_object($rec))

    {

        $count++;

        $result = $row;

    }

 

    if($count == 1)

    {

        return 1;

    }

 

    else

    {

        return 0;

    }

}

 

if(!isset($_SESSION['userid']))

{

    if(isset($_POST['login']))

    {

        if(verificar_login($_POST['user'],$_POST['password'],$result) == 1)

        {

            $_SESSION['userid'] = $result->userid;

            header("location:login.php");
        }

        else

        {

            //echo '<div class="error">Su usuario es incorrecto, intente nuevamente.</div>';
            echo '<script>alert("Su usuario es incorrecto, intente nuevamente.");</script>';
        }

    }

?>
<!DOCTYPE html>
<html>
  <?php include '../view/head.php'; ?>
  <link rel="stylesheet" type="text/css" href="../css/style.css">
<body >

  <div class="row">
      <div class="col s1 m2 l4  container1 ">
      </div>
      <div class="col s10 m8 l4  container1 ">
        <h1 class="teal-text" align="center">Ingresar</h1>
        <div class="progress">
          <div class="determinate" style="width: 100%"></div>
        </div>
        <form method="post" action="">
          <div class="input-field col s12">
             <input id="txt" type="text" name="user" >
            <label for="user" >Nombre  </label>
          </div>
          <div class="input-field col s12">
            <input id="txtContraseña" type="password" name="password" >
            <label for="txtContraseña" >Contraseña: </label>
          </div>
          <input type="submit" class="btn btn-waves btnSubmit" name="login" value="Ingresar "></p>
        </form>
        <br>
        <div class="login-help">
          <p>¿Olvidaste tu contraseña? <a href="recupera_pass.php" > Click Aquí para recuperarla</a>.</p>
        </div>
      </div>
      <div class="col s1 m2 l4  container1 ">
      </div>
  </div>

  <div class="row">
  <div class="col s12 m2 l4"><p></p></div>
    <div class="col s12 m8 l4 container2">
      <a  href="datos_usuario.php" class="waves-effect waves-light btn btnNewR" style="width: 100%;"><i class="material-icons right">perm_identity</i>Aún No estas registrado registrate aquí.</a>
    </div></div>
  </div>
  <!--=============================================== footer =============================================-->
  <?php  include '../view/footer.php'; ?> 
  <!--=============================================== scripts =============================================-->
  <?php  include '../view/scripts.php'; ?>
</body>
</html>

<?php

} else {/*
    echo '<script>alert("Su usuario ingreso correctamente");</script>';
    echo '<a href="../view/opcioneswithLogin.php">Continuar</a> <br>';
    echo '<a href="../conexion/Loout.php">Salir</a>';*/
    echo "<script> alert('Logeo Correctamente');</script>";
    echo "<script> window.location='../view/opcioneswithLogin.php'</script>";
}

?>