<!DOCTYPE html>
<html>
  <?php include '../view/head.php'; ?>
<head>
  <meta charset="utf-8">
  <title>Info-User</title>
  <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
    <div class="contenidoPrincipal">
    <div class="row">
      <h2 class="" align="center">Para recuperar tus datos necesitamos que nos proporciones lo siguiente:</h2>
    <div class="col s1 m2 l3"><p></p></div>
      <div class="col s10 m8 l6 container1">
        <h1 class="teal-text" align="center">Ingresa tus Datos</h1>
        <div class="progress">
          <div class="determinate" style="width: 100%"></div>
        </div>
        <form method="post" action="login.html">
          <div class="input-field col s12">
             <input id="txtemail" type="email" name="email" class="validate" >
            <label for="txtemail" >E-mail @: </label>
          </div>
          <input type="submit" class="btn btn-waves btnSubmit" name="commit" id="btnSubmit"value="Enviar "></p>
        </form>
        <br>
        <br>
      </div>
  </div>
</div>

<!--=============================================== footer =============================================-->
  <?php  include '../view/footer.php'; ?> 
  <!--=============================================== scripts =============================================-->
  <?php  include '../view/scripts.php'; ?>
</body>
</html>
