function objetoAjax(){
	var xmlhttp=false;
	try {
	xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
	} catch (e) {
	try {
	xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	} catch (E) {
	xmlhttp = false;
	}
	}
	if (!xmlhttp && typeof XMLHttpRequest!='undefined') {
	xmlhttp = new XMLHttpRequest();
	} return xmlhttp;
}
function enviarDatosNegocio(){
	divResultado = document.getElementById('resultado');
	_NomNeg=document.NuevoNeg.NomNeg.value;
	_DomNeg=document.NuevoNeg.DomNeg.value;
	_TitNeg=document.NuevoNeg.TitNeg.value;
	_GirNeg=document.NuevoNeg.GirNeg.value;
	_DesNeg=document.NuevoNeg.descripcion.value;
	//_CargImaNeg=document.NuevoNeg.CargImaNeg.value;
	ajax=objetoAjax();//instanciar el objeto ajax
	ajax.open("POST","registroNeg.php",true);//se utiliza el metodo post. se llama al archivo
	ajax.onreadystatechange=function(){
	//la función responseText tiene todos los datos pedidos al servidor
	if (ajax.readyState==4) {//mostrar resultados en esta capa
		alert("Se agrego pero falta validar");
		divResultado.innerHTML = ajax.responseText //llamar a funcion para limpiar los inputs
		LimpiarCampos();
	}
	}
	ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	//enviando los valores a registroNeg.php para que inserte los datos
	ajax.send("NomNeg="+_NomNeg+"&DomNeg="+_DomNeg+"&TitNeg="
				+_TitNeg+"&GirNeg="+_GirNeg+"&descripcion="+_DesNeg);
}
function LimpiarCampos(){
	document.NuevoNeg.NomNeg.value="";
	document.NuevoNeg.DomNeg.value="";
	document.NuevoNeg.TitNeg.value="";
	document.NuevoNeg.GirNeg.value="";
	document.NuevoNeg.descripcion.value="";
	document.NuevoNeg.NomNeg.focus();
}
