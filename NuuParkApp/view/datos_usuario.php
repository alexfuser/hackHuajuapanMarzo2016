<!DOCTYPE html>
<html>
  <?php include '../view/head.php'; ?>
<head>
  <meta charset="utf-8">
  <title>Info-User</title>
  <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body >

  <div class="row">
    <div class="col s1 m2 l3"><p></p></div>
      <div class="col s10 m8 l6 container1">
        <h1 class="teal-text" align="center">Ingresa tus Datos</h1>
        <div class="progress">
          <div class="determinate" style="width: 100%"></div>
        </div>
        <form method="post" action="login.">
          <div class="input-field col s12">
            <input id="txtNombre" type="text">
            <label for="txtNombre">Nombre:</label>
          </div>
           <div class="input-field col s12">
            <input id="txtApPaterno" type="text" >
            <label for="txtappaterno" >Apellido Paterno: </label>
          </div>
          <div class="input-field col s12">
            <input id="txtApMaterno" type="text" >
            <label for="txtApMaterno" >Apellido Materno: </label>
          </div>
          <div class="input-field col s12">
            <input id="txtedad" type="number" name="age"   min="0" max="99" step="1" class="validate">
            <label for="txtedad" >Edad: </label>
          </div>
          <div class="input-field col s12">
             <input id="txtemail" type="email" name="email" class="validate" >
            <label for="txtemail" >E-mail: </label>
          </div>
          <div class="input-field col s12">
            <input id="txtContraseña" type="password" name="password" >
            <label for="txtContraseña" >Contraseña: </label>
          </div>
          <input type="submit" class="btn btn-waves btnSubmit" name="commit" id="btnSubmit"value="Registrar "></p>
        </form>
        <br>
      </div>
    <div class="col s1 m2 l3"><p></p></div>
  </div>

<!--=============================================== footer =============================================-->
  <?php  include '../view/footer.php'; ?> 
  <!--=============================================== scripts =============================================-->
  <?php  include '../view/scripts.php'; ?>
</body>
</html>