function iniciar(){
	// declaramos las bariables a modificar 
	document.getElementById('libreria_?').addEventListener('click', function(){muestra('libreria_?');});
	document.getElementById('else_?').addEventListener('click', function(){muestra('else_?');});
	document.getElementById('while_?').addEventListener('click', function(){muestra('while_?');});
	document.getElementById('printf_?').addEventListener('click', function(){muestra('printf_?');});
	document.getElementById('switch_?').addEventListener('click', function(){muestra('switch_?');});
	//document.getElementById('if_?').addEventListener('click', function(){muestra('if_?');});
	document.getElementById('for_?').addEventListener('click', function(){muestra('for_?');});
	document.getElementById('do_?').addEventListener('click', function(){muestra('do_?');});
	document.getElementById('scanf_?').addEventListener('click', function(){muestra('scanf_?');});
	document.getElementById('case_?').addEventListener('click', function(){muestra('case_?');});
	
	document.getElementById('libreria_0').addEventListener('click', function(){muestra1('libreria_0');});
	document.getElementById('else_0').addEventListener('click', function(){muestra1('else_0');});
	document.getElementById('while_0').addEventListener('click', function(){muestra1('while_0');});
	document.getElementById('printf_0').addEventListener('click', function(){muestra1('printf_0');});
	document.getElementById('switch_0').addEventListener('click', function(){muestra1('switch_0');});
	document.getElementById('if_0').addEventListener('click', function(){muestra1('if_0');});
	document.getElementById('for_0').addEventListener('click', function(){muestra1('for_0');});
	document.getElementById('do_0').addEventListener('click', function(){muestra1('do_0');});
	document.getElementById('scanf_0').addEventListener('click', function(){muestra1('scanf_0');});
	document.getElementById('case_0').addEventListener('click', function(){muestra1('case_0');});
  	
	document.getElementById('descargar').addEventListener('click', function(){ generat(); });

	//document.getElementById('si').value = "\n\tint a = o;\n";
}



function muestra(nombre){

	switch(nombre){
		case "libreria_?":
			alert("Una librería es un conjunto de recursos (algoritmos) prefabricados, que pueden ser utilizados por el programador para realizar determinadas operaciones");
			break;

		case "else_?":
			alert("En esta sentencia no se plantea directamente una condición, es mas bien, una respuesta a la condición que se formulo dentro de la sentencia if. Si la condición de if no se cumplió, entonces se ejecuta el bloque de código que contenga la sentencia else. Además, no puedo haber una sentencia else sin su respectiva sentencia if ");
			break;

		case "while_?":
			alert("Las sentencias de iteración permiten repetir un conjunto de sentencias ejecutando un bucle.   En C++ existen tres formas de iteraciones: los bucles Whilw Do While For");
			break;

		case "printf_?":
			alert("Mediante la función printf podemos escribir datos en el dispositivo de salida estandar (pantalla). Complementariamente a scanf, printf puede escribir cualquier combinación de valores numéricos, caracteres sueltos y cadenas de caracteres. La función printf transporta datos desde la memoria a la pantalla, a diferencia de scanf, que envía datos desde el teclado para almacenarlos en la memoria. La función printf devuelve el número de caracteres escritos. Si devuelve un valor negativo indica que se ha producido un error.");
			break;

		case "switch_?":
			alert("La sentencia switch, la expresión a evaluar será entera, por lo tanto, el número de opciones es mucho mayor, y en consecuencia, también es mayor el número de diferentes sentencias que se pueden ejecutar.");
			break;

		case "if_?":
			alert();
			break;

		case "for_?":
			alert("Las sentencias de iteración permiten repetir un conjunto de sentencias ejecutando un bucle.  En C++ existen tres formas de iteraciones: los bucles Whilw Do While For");
			break;

		case "do_?":
			alert("Las sentencias de iteración permiten repetir un conjunto de sentencias ejecutando un bucle.  En C++ existen tres formas de iteraciones: los bucles Whilw Do While For");
			break;

		case "scanf_?":
			alert("Mediante la función scanf podemos introducir cualquier combinación de valores numéricos, caracteres sueltos y cadenas de caracteres a través del teclado. En definitiva, scanf lee datos formateados de la entrada estandar. Cuando hablamos de datos formateados, nos referimos a que los datos se pueden presentar en distintos formatos. La función devolverá el número de datos que se han introducido correctamente");
			break;

		case "case_?":
			alert("La expresión constante coincida con el valor de la expresión entera evaluada dentro del switch.");
			break;
	}
	
	//document.getElementById('si').value = "#include <iostream>\nusing namespace std;\n\nint main() {\n\n\tcout << \"Hola Mundo\" << endl; \n\tfor (i == 0; i <= 6; i++)\n\t{\n\t\tcoutt<< \"hola\" << i << endl;\n\t}\n\treturn 0;\n}";
	
}

function muestra1(nombre){

	var caso;
	switch(nombre){

		case "libreria_0":
			caso += "#include <iostream>";
			break;

		case "else_0":
			caso += "\nif(if a >= 2)\n{\n\tcout << ‘a >= 2’\n}else \n{\n\tcout << “ a<=0”;\n};\n\n";
			break;
		case "while_0":
			caso += "\nwhile (a != 0) \n{\n\t cout << “este bucle  se ejecuta cada \n\tcuando exista una condición para ello”;\n}";
			break;
		case "printf_0":
			caso += "\nprintf(“imprime texto en pantalla”);";
			break;
		case "switch_0":
			caso += "\nswitch (a) {\n\tcase 0: cout<< “es esto”; \n\tbreak;default:; break;\n }";
			break;
		case "if_0":
			caso += "\nIf(a  == 0 ){\n\tcout << “sde cumple la iunstruccion”;\n}";
			break;
		case "do_0":
			caso += "\ndo (a <= ) {\n\t cout << “esta instrucción ejecuta al menos una ves el código dentro de ella ”;\n}";
			break;
		case "scanf_0":
			caso += "\nscanf (%n %n, a, b ) ;  //ingresamos datos para aplicación ";
			break;
		case "case_0":
			caso += "\ncase 0:   breack;	//selecciona un caso en especifico ";
			break;

		case "for_0":
			caso += "\tfor (i == 0; i <= 6; i++)\n\t{\n\t\tcoutt<< \"hola\" << i << endl;\n\t}";
			break;
		
	}
	document.getElementById('si').value += caso;

}


function generat(){
	
	var texto = document.getElementById("si").value;
	
	jsPDF.init();
	jsPDF.addPage();
	jsPDF.text(20, 20, texto);
	jsPDF.text(20, 30, 'Practica en cpp.');
	jsPDF.addPage();
	
	
	// Making Data URI
	var out = jsPDF.output();
	var url = 'data:application/pdf;base64,' + Base64.encode(out);
	document.location.href = "hola.pdf";
}

/*/function 

	/*var libreria_? = document.gue;
	var else_?;
	var while_?;
	var printf_?;
	var switch_?;
	var if_?;
	var for_?;
	var do_?;
	var scanf_?;
	var case_?;*/
	
	//libreria_? else_? while_? printf_? switch_? if_? for_? do_? scanf_? case_?*/

window.addEventListener('load', iniciar, false);