$(document).ready(function () {
//----------------------------------------//
//---------------Iniciar Sesión-----------//
//----------------------------------------//
//----------------------------------------//
$('#formulario').submit(function( event ){
var username=$("#usuario").val();
var password=$("#password").val();
var dataString = 'usuario='+username+'&password='+password+'&iniciar_sesion=';
if($.trim(username).length>0 && $.trim(password).length>0){
        $.ajax({
            type: "POST",
            url: "http://hh360.com.mx/WebServices/wsLogin.php",
            data: dataString,
            cache: false,
            success: function(data){
            if(data==1) {
                activate_page("#control"); 
            }
                    else if(data==2){
                    navigator.notification.vibrate(1000);
                    navigator.notification.alert("El usuario no existe",1,"Error de inicio","Aceptar");  
                    }
                        else{
                    navigator.notification.vibrate(1000);
                    navigator.notification.alert("Contraseña no valida",1,"Error de inicio","Aceptar");
                        }
            }
        });
}
return false;
});
//----------------------------------------//
//---------------REGISTRAR USUARIO--------//
//----------------------------------------//
//----------------------------------------//
$('#registrar').submit(function( event ){
var usuario=$("#newuser_usuario").val();
var nombre=$("#newuser_nombre").val();
var email=$("#newuser_usuario").val();
var celular=$("#newuser_celular").val();
var password=$("#newuser_password").val();
var password1=$("#newuser_password1").val();
var datos =     'usuario='+usuario+'&nombre='+nombre+'&password='+password+'&celular='+celular+'&email='+email+
'&alta_usuario=';
    $.ajax({
        type        : "POST",
        cache       : false,
        url: "http://hh360.com.mx/WebServices/wsRegistrar.php",
        data        : datos,
        cache: false,
       
	   success: function(data) {
            if(data==1){
               navigator.notification.vibrate(1000);
               navigator.notification.alert("Registrado Correctamente",1,"Registro","Aceptar");
               activate_page("#control")
            }
            else if(data==2){
                navigator.notification.vibrate(1000);
                navigator.notification.alert("Ocurrio un error intentalo nuevamente",1,"Error","Aceptar")
            }
            else{
                navigator.notification.vibrate(1000);
                navigator.notification.alert("Error desconocido",1,"Error","Aceptar")
            }
       }
    });

    return false;
});
    
//----------------------------------------//
//---------------Maquetado html nombre----//
//----------------------------------------//
//----------------------------------------// 
function datos($id_usuario){
var nombre;
var id=$id_usuario;
var datos ='id='+id+'&maquetado_slider=';
 $.ajax({
        type        : "POST",
        cache       : false,
        url: "http://hh360.com.mx/WebServices/wsMaquetado.php",
        dataType: "json",
        data        : datos,
        cache: false,
       
	   success: function(data) {
            if(data==1){
               navigator.notification.vibrate(1000);
               navigator.notification.alert("Registrado Correctamente",1,"Registro","Aceptar");
               activate_page("#control")
            }
            else if(data==2){
                navigator.notification.vibrate(1000);
                navigator.notification.alert("Ocurrio un error intentalo nuevamente",1,"Error","Aceptar")
            }
            else{
                navigator.notification.vibrate(1000);
                navigator.notification.alert("Error desconocido",1,"Error","Aceptar")
            }
       }
    });
    
}
    
    
});