<!DOCTYPE html>
<html >
<head>
	<title>Bancos</title>
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
              <a href="" class="waves-effect waves-light btn blue darken-1" style="width:100%;">Actividad</a>
              <table>
                <thead>
                  <tr>
                      <th data-field="id">Name Actividad</th>
                      <th data-field="price">Descripción</th>
                      <th data-field="price">Nombre</th>
                      <th data-field="name">Dias</th>
                      <th data-field="name">Horario</th>
                      <th data-field="name">Cupo</th>
                      <th data-field="price">Opciones</th>
                  </tr>
                </thead>
  <?php
      require_once '../conexion/conexion.php';
             $conn = dbConnect();
             $sql = 'SELECT * FROM actividades';
             $result = $conn->query($sql);
             $rows = $result->fetchAll();
             foreach ($rows as $row) {


                echo'
                      <tr>
                        <td>"'.$row['id_Actividad'].'"</td>
                        <td>"'.$row['Tipo_Actividad'].'"</td>
                        <td>"'.$row['Nombre_Actividad'].'"</td>
                        <td>"'.$row['Descripcion_Actividad'].'"</td>
                        <td>"'.$row['Horario'].'"</td>
                        <td>"'.$row['Cupo'].'"</td>
                        <td>

                            <a id="btnEditar" class="blue-text text-darken-1 " href="#" onclick="editar()">
                              <i class="material-icons">edit</i>
                            </a>
                            <a id="btnDelete" class="red-text text-darken-1"  href="#" onclick="eliminar()">
                              <i class="material-icons">delete</i>
                            </a>
                        </td>
                      </tr>

                ';
             }
      
     ?>
     <script src="..js/Eliminar.js">
        
                  </table>
                  <br>
                </div>
            </div>  
                
        
               
           <!--============================================================= Collapsibe ==================================================-->
            

            <!--============================================================= Modal Trigger ==================================================-->
            <div class="row">
          <div class="col s12">
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
                                  <h4 class="orange-text text-darken-2">Nueva Actividad</h4>
                                      <div class="row">
                                        <fieldset>
                                          <legend>Datos Eventos</legend>
                                          <div class="input-field col s12 m6">
                                            <i class="material-icons prefix">star_rate</i>
                                            <input id="name-Actividad" type="text" class="validate">
                                            <label for="name-Actividad">Nombre de actividad </label>
                                          </div>

                                          <div class="input-field col s12 m6">
                                            <i class="material-icons prefix">sort_by_alpha</i>
                                            <input id="Descripcion_Actividad" type="number" class="validate" min="1" max="99999999" step="1">
                                            <label for="Descripcion_Actividad">Descripcion actividad</label>
                                          </div>

                                          <div class="input-field col s12 m6">
                                            <i class="material-icons prefix">today</i>
                                            <input id="Horario" type="number" class="validate" min="1" max="99999999" step="1">
                                            <label for="Horario">Horario</label>
                                          </div>

                                          <div class="input-field col s12 m12 l12">
                                            <fieldset>
                                              <legend>Tipo de uso</legend>
                                                <div id="capa" class="input-fild col s10 m10 l10">
                                                  <select id="Tipo_Actividad"  class="Tipo_Actividad">
                                                    <option value="" disabled selected></option>
                                                    <option value="Computacion_Niños">Computacion Niños</option>
                                                    <option value="Computacion_Adultos">Computacion Adultos</option>
                                                    <option value="Computacion_Avanzados">Computacion Avanzados </option>
                                                    <option value="De_la_lectura_a_la_aventura">De la lectura a la aventura</option>
                                                    <option value="Diseño_de_invitaciones">Diseño de invitaciones</option>
                                                    <option value="Danza_Clasica">Danza Clasica</option>
                                                    <option value="Ingles_basico">Ingles basico</option>
                                                    <option value="Ingles_Intermedio">Ingles Intermedio</option>
                                                    <option value="Tae_Kwon_do">Tae Kwon do</option>
                                                    <option value="Activacion_Fisica">Activacion Fisica</option>
                                                    <option value="Dibujo">Dibujo</option>
                                                    <option value="Pintura">Pintura</option>
                                                    <option value="Cumbia_y_merengue">Cumbia y merengue</option>
                                                    <option value="Salsa_y_Bachata">Salsa y Bachata</option>
                                                    <option value="Rumba_Matutino">Rumba Matutino</option>
                                                    <option value="Rumba_Vespertino">Rumba Vespertino</option>
                                                    <option value="Bailes_Modernos">Bailes Modernos</option>
                                                    <option value="Ajedrez">Ajedrez</option>
                                                    <option value="BMX">BMX</option>
                                                    <option value="Iniciacion_Musical">Iniciacion Musical</option>
                                                    <option value="Lenguaje_de_señas_Mexicanas">Lenguaje de señas Mexicanas</option>
                                                    <option value="Ludoteca_Publica_Nacional">Ludoteca Publica Nacional</option>
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
                                         </div>

                                          

                                        </fieldset>
                                      </div>

                                      <div class="row">
                                        <div class="input-field col s6">
                                          <button class="btn waves-effect waves-light validate orange darken-2 modal-close btnRegistarBanco" type="submit" name="action">REGISTRAR Actividad
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