<!DOCTYPE html>
<html>
  <?php include '../view/head.php'; ?>
  <link rel="stylesheet" type="text/css" href="../css/style.css">
<body >

  <div class="col s1 m2 l3" style="width: 100%">
     <div class="col s10 m8 l6 container_user">
      <br>
      <div class="col s12 m8">
        <img src="../images/user.png" alt="" class="circle2" >
      </div>
      <h1 class="white-text" align="center"></h1>
     </div>
  </div>

<div class="row">
      <div class="col s1 m2 l2  container3 ">
      </div>
      <div class="col s10 m8 l8  container3">
        <div class="row grey lighten-4 tabla1">
          <table class="responsive-table">
            <thead>
              <tr>
                <th data-field="id">Actividad o Evento</th>
                <th data-field="name">Fecha</th>
                <th data-field="price">Descripción</th>
                <th data-field="price">Opciones</th
              </tr>
            </thead>

            <tbody>
              <tr>
                <td>Taller Cultural</td>
                <td>Lunes a Viernes</td>
                <td>Taller no 2</td>
                <td>
                        <a id="btnEditar" class="blue-text text-darken-1 " href="#" onclick="editar()">
                          <i class="material-icons">edit</i>
                        </a>
                        |
                        <a id="btnDelete" class="red-text text-darken-1"  href="#" onclick="eliminar()">
                          <i class="material-icons">delete</i>
                        </a>
                    </td>
              </tr>
              <tr>
                <td>Computación Intermedio</td>
                <td>Lunes a Viernes</td>
                <td>Taller no 2</td>
                <td>
                        <a id="btnEditar" class="blue-text text-darken-1 " href="#" onclick="editar()">
                          <i class="material-icons">edit</i>
                        </a>
                        |
                        <a id="btnDelete" class="red-text text-darken-1"  href="#" onclick="eliminar()">
                          <i class="material-icons">delete</i>
                        </a>
                    </td>
              </tr>
              <tr>
                <td>Hackaton</td>
               <td>Lunes a Viernes</td>
                <td>Taller no 2</td>
                <td>
                        <a id="btnEditar" class="blue-text text-darken-1 " href="#" onclick="editar()">
                          <i class="material-icons">edit</i>
                        </a>
                        |
                        <a id="btnDelete" class="red-text text-darken-1"  href="#" onclick="eliminar()">
                          <i class="material-icons">delete</i>
                        </a>
                    </td>
              </tr>
            </tbody>
          </table>
        </div>
</div>
  
            
  </div>
  <br>
  <!--=============================================== footer =============================================-->
  <?php  include '../view/footer.php'; ?> 
  <!--=============================================== scripts =============================================-->
  <?php  include '../view/scripts.php'; ?>
</body>
</html>



