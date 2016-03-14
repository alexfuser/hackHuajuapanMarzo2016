<!DOCTYPE html>
<html >
<head>
	<title>Eventos</title>
	<title>Panel Configuración General</title>
  <?php  include '../view/head.php'; ?>
  <link rel="icon" type="image/png" href="../src/icono.png" />
  <link href="../css/prism.css" rel="stylesheet">
    <link href="../css/ghpages-materialize.css" type="text/css" rel="stylesheet" media="screen,projection">
    <link rel="stylesheet" href="../css/styleconfi.css">
</head>
<body>
<!--================================================================ Header ==================================================================-->
  <header>  
  <div class="container">
    <a href="#" data-activates="nav-mobile" class="button-collapse top-nav waves-effect waves-light circle hide-on-large-only">
      <i class="mdi-navigation-menu"></i>
    </a>
  </div>
      <ul id="nav-mobile" class="side-nav fixed  blue lighten-1 ">
        <li class=""> <a href="panelConfiguracion.php"><h5 class="white-text"> <img src="../src/icono.png" width="100px"> </h5></a></li>
        <br><br><br>
         <div class="progress">
            <div class="determinate" style="width: 100%"></div>
        </div>
        <li class=""><a href="Evento.php" class="waves-effect waves-teal white-text"><h5><i class="Medium material-icons">query_builder</i> Evento</h5></a></li>
        <li class=""><a href="Actividad.php" class="waves-effect waves-teal white-text"><h5><i class="Small material-icons">web</i> Actividad</h5></a></li>
         <li class=""><a href="../conexion/logout.php" class="waves-effect waves-teal white-text"><h5><i class="Small material-icons">input</i> Salir</h5></a></li>
      </ul>
  </header>
  <!--============================================================= Main Navbar ===============================================================-->
    <main>
	    <div class="section orange darken-3" id="index-banner">
	  		<div class="container ">
	    		<div class="row ">
	      			<div class="col s12 m12">
				        <h5 class="header center-on-small-only"><i class="medium material-icons" > settings</i> Configuración General</h5>
				    </div>
	    		</div>
			</div>
   </main>  

  <!--================================================================ Main de Bancos =========================================================-->
  <main>
     <div class="section">
      <div class="container">
        <div row>
          <div class="input-field col s12 m4">
              <a  class="waves-effect waves-light btn blue darken-1" style="width:100%;">Evento</a>
              <table>
                <thead>
                  <tr>
                      <th data-field="id">Name Evento</th>
                      <th data-field="name">Tipo Evento</th>
                      <th data-field="price">Duración</th>
                      <th data-field="price">Fecha</th>
                      <th data-field="price">Descripción</th>
                      <th data-field="price">Opciones</th>
                  </tr>
                </thead>

                <tbody>
                  <tr>
                    <td>Alvin</td>
                    <td>Eclair</td>
                    <td>$0.87</td>
                    <td>Alvin</td>
                    <td>Eclair</td>
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
                    <td>Alvin</td>
                    <td>Eclair</td>
                    <td>$0.87</td>
                    <td>Alvin</td>
                    <td>Eclair</td>
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
                    <td>Alvin</td>
                    <td>Eclair</td>
                    <td>$0.87</td>
                    <td>Alvin</td>
                    <td>Eclair</td>
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
        <div class="row">
          <div class="col s12">
               
           <!--============================================================= Collapsibe ==================================================-->
            

            <!--============================================================= Modal Trigger ==================================================-->
            <div class="row fixed-action-btn">
              <a class="btn-floating btn-large waves-effect waves-light red modal-trigger " href="#modal1">
                <i class="material-icons" style=" font-size:45px;">add</i>
              </a>
            </div>
            <!--============================================================= Action Trigger ==================================================-->
               <div class="row" style="width:100%;">   
                  <div id="modal1"  class="modal">
                      <div class="modal-content">
                          <div class="formularioRegistro z-depth-5">
                            <form class="col s12" method="post" action="#">
                              <h4 class="orange-text text-darken-2">Nuevo Evento</h4>
                                <div class="row">
                                    <fieldset>
                                      <legend>Datos Eventos</legend>
                                          <div class="input-field col s12 m6">
                                            <i class="material-icons prefix">grade</i>
                                            <input id="name-Evento" type="text" class="validate">
                                            <label for="name-Evento">Evento </label>
                                          </div>

                                          <div class="input-field col s12 m6">
                                           <i class="material-icons prefix">view_list</i>
                                            <input id="Fecha_inicio" type="text" class="validate">
                                            <label for="Fecha_inicio">Fecha de inicio</label>
                                          </div>

                                          <div class="input-field col s12 m6">
                                            <i class="material-icons prefix">label_outline</i>
                                            <input id="Descripcion_Evento" type="number" class="validate" min="1" max="99999999" step="1">
                                            <label for="Descripcion_Evento">Descripcion evento</label>
                                          </div>

                                          <div class="input-field col s12 m6">
                                             <select id="Duracion"  class="Tipo_Evento">
                                              <option value="" disabled selected></option>
                                              <option value="Comercial">Lunes a Viernes</option>
                                              </select>
                                          </div>

                                          <div class="input-field col s12 m12 l12">
                                          <fieldset>
                                              <legend>Tipo de evento</legend>
                                              <div id="capa" class="input-fild col s10 m10 l10">
                                                <select id="Tipo_Evento"  class="Tipo_Evento">
                                              <option value="" disabled selected></option>
                                              <option value="Comercial">Comercial</option>
                                            <option value="Habitacional">Habitacional</option>
                                            <option value="Oficina">Oficina</option>
                                          </select>
                                          <input type="text" placeholder="Escriba nuevo tipo de uso" id="nuevaOpcion">
                                          </div>
                              
                                
                                          <div class="input-field col s2 m2 l2">
                                            <a id="btnNuevo"  class="green-text text-accent-3 " href="#" onclick="agregar()">
                                              <i class="material-icons">add</i>
                                              </a>

                                              <a id="btnEditar" class="blue-text text-darken-1 " href="#" onclick="editar()">
                                              <i class="material-icons">edit</i>
                                              </a>

                                              <a id="btnDelete" class="red-text text-darken-1"  href="#" onclick="eliminar()">
                                              <i class="material-icons">delete</i>
                                              </a>
                                          </div>  
                                          </fieldset>
                                        </fieldset>
                                      </div>

                                      <div class="row">
                                        <div class="input-field col s6">
                                          <button class="btn waves-effect waves-light validate orange darken-2 modal-close btnRegistarBanco" type="submit" name="action">REGISTRAR EVENTO
                                          <i class="material-icons right">send</i>
                                          </button>
                                        </div> 
                                      
                                        <div class="input-field col s6">
                                          <a class="waves-effect waves-light btn modal-close red darken-3 btnCancelarB">Cancelar</a>
                                        </div>   
                                      </div>
                                </form>

                              </div>
                            </div>
                          </div>
                        </div>

                    </div>
                  </div>
                </div> 
          </main> 
  
	<!--=============================================================== Scripts ===============================================================-->
	   <?php  include '../view/scripts.php'; ?>
</body>
</html>