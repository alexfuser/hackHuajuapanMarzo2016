$(document).ready(function () {
  var operation = "C"; //"C"=Crear
  var selected_index = -1; // Indice de el elemento seleccionado en la lista
  var tblusuarios = localStorage.getItem("tblusuarios"); //Retornar los datos almacenados
  tblusuarios = JSON.parse(tblusuarios); //Convertir String a Object
  if (tblusuarios === null) // Si no hay datos, inicializar un array vacio
      tblusuarios = [];

  function Create() {
    //Obtener los valores de la forma HTML y transformalos en String.
    var person = JSON.stringify({
      ID:       $("#txtID").val(),
      Nombre:     $("#txtName").val(),
      Paterno: $("#txtApPaterno").val(),
      Email:    $("#txtEmail").val(),
      TipoUso:  $("#txtTipoUso").val(),
      TipoZona: $("#txtTipoZona").val(),
      NoPiso:   $("#txtNoPiso").val(),
      CoutaOrd: $("#txtCoutaOrd").val()
    }); 
    //Añadir el objeto a la tabla
    tblusuarios.push(person);
    //Almacenar los datos en el Local Storage
    localStorage.setItem("tblusuarios", JSON.stringify(tblusuarios));
    alert("Condómino Añanido Con Exito"); //Mensaje de alerta
    return true;
    location.reload();
  }

  function Edit() {
    // Editar el item seleccionado en la tabla
    tblusuarios[selected_index] = JSON.stringify({
      ID:       $("#txtID").val(),
      Name:     $("#txtName").val(),
      Telefono: $("#txtTelefono").val(),
      Email:    $("#txtEmail").val(),
      TipoUso:  $("#txtTipoUso").val(),
      TipoZona: $("#txtTipoZona").val(),
      NoPiso:   $("#txtNoPiso").val(),
      CoutaOrd: $("#txtCoutaOrd").val()
    });
    //Almacenar los datos en el Local Storage
    localStorage.setItem("tblusuarios", JSON.stringify(tblusuarios)); 
    alert("Condómino Guardado Corectamente"); //Mensaje de alerta
    return true;
  }

  function Delete() {
    //Eliminar el elemento seleccionado en la tabla
    tblusuarios.splice(selected_index, 1); 
    //Actualizar los datos del Local Storage
    localStorage.setItem("tblusuarios", JSON.stringify(tblusuarios)); 
    alert("Condominio Eliminado"); //Mensaje de alerta
  }

  function List() {
    for (var i in tblusuarios) {
      var condo = JSON.parse(tblusuarios[i]);
      $(".CardsDepartamento").append(
          "<li>"+
            "<div class='collapsible-header'><p class='flow-text light-blue-text text-darken-4'>"+ condo.Name +"</p><b>Departamento:</b> "+ condo.ID +"<b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Couta: </b>"+condo.CoutaOrd+"</b>"+
              "<a class='waves-effect waves-light btn green darken-3' href='#modal5' id='btnPagado" + i + "' style='left:50%;'>"+
                "<span>Pagado</span>"+
              "</a>"+
              "<!--Pending-->"+
              "</a>"+
              "<a class='waves-effect waves-light btn yellow darken-3 modal-trigger' href='#modal5'class='btnPending' id='Pending" + i + "' style='left:37%;'>"+
                "<span>Pending</span>"+
              "</a>"+
            "</div>"+
              "<div class='collapsible-body'>"+
                "<div class='row'>"+
                  "<div class='input-field col s12 m4 l6'>"+
                      "<b>Datos Generales:</b><br>"+
                      "<p><b>Telefono:</b>"+
                        "<span> "+ condo.Telefono +"</span>"+
                      "</p>"+
                      "<p>"+
                        "<b>E-mail:</b>"+
                        "<span> "+condo.Email+"</span>"+
                      "</p>"+
                      "<p>"+
                        "<b>Tipo de zona:</b>"+
                        "<span> "+condo.TipoZona+"</span>"+
                      "</p>"+
                      "<p>"+
                        "<b>Tipo de Uso:</b>"+
                        "<span> "+condo.TipoUso+"</span>"+
                      "</p>"+
                      "<p>"+
                        "<b>Numero de Piso:</b>"+
                        "<span> "+condo.NoPiso+"</span>"+
                      "</p>"+
                  "</div>"+
                  "<div class='input-field col s12 m4 l3'>"+
                    "<b>Opciones:</b><br>"+
                    "<br><a href='#modal1' id='Edit" + i + "' class='modal-trigger btnEdit'>Editar<i class='material-icons left'>settings</i></a> <br>"+
                    "<br><a href='#modal1' onclick='location.reload();' id='Delete" + i + "' class='btnDelete'>Eliminar<i class='red-text material-icons left'>delete</i></a>"+
                  "</div>"+
                  "<div class='input-field col s12 m4 l3'>"+
                    "<b>Ver:</b><br>"+
                    "<br><a href='panelDepartamento.html' class='waves-effect waves-light btn cyan darken-1'>Historial</a><br>"+
                  "</div>"+
              "</div>"+
           "</div>"+
          "</li>"
      );
    } 
  }

  $("#frmCondomino").bind("submit", function () {
    if (operation === "C")
        return Create();
    else
        return Edit();
  }); //Función para decidir si se encuentra añadiendo o editando un item
  
  List();


  $(".btnEdit").bind("click", function () {
    operation = "E"; //"E" = Editar
    //Obtener el identificador del item a ser editado
    selected_index = parseInt($(this).attr("id").replace("Edit", ""));
    // Convertir de JSON al formato adecuando para editarlos datos
    var condo = JSON.parse(tblDepartamentos[selected_index]); 
    $("#txtID").val(condo.ID);
    $("#txtName").val(condo.Name);
    $("#txtTelefono").val(condo.Telefono);
    $("#txtEmail").val(condo.Email);
    $("#txtTipoZona").val(condo.TipoZona),
    $("#txtTipoUso").val(condo.TipoUso),
    $("#txtNoPiso").val(condo.NoPiso),
    $("#txtCoutaOrd").val(condo.CoutaOrd),
    $("#txtID").attr("readonly", "readonly");
    $("#txtName").focus();
  });

  $(".btnDelete").bind("click", function () {
    var aceptar= confirm("¿Desea Eliminar Este Condómino?");
    if (aceptar == true){
      //Obtener el identificador del item a ser eliminado
      selected_index = parseInt($(this).attr("id").replace("Delete", "")); 
      Delete(); //Eliminar el item
      List(); //Volver a listar los items en la tabla
    }else{
      alert("Traquilo No se Eliminio ningun Condómino");
    }
  });

  $(".btnPending").bind("click",function(argument) {
    selected_index = parseInt($(this).attr("id").replace("Pending", "")); 
    $("#btnPending").hide();
    $("#btnPagado").show();
  });
});

