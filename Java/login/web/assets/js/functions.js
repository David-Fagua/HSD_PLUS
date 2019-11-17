
var editando=false;

 

function transformarEnEditable(nodo){

var nodoContenedorFormR = document.getElementById('contenedorFormR'); //Nodo DIV

if (editando == false) {

var nodoTd = nodo.parentNode; //Nodo TD

var nodoTr = nodoTd.parentNode; //Nodo TR

var nodoContenedorForm = document.getElementById('contenedorForm'); //Nodo DIV

var nodosEnTr = nodoTr.getElementsByTagName('td');

var Registro = nodosEnTr[0].textContent; 

var NombreCliente = nodosEnTr[1].textContent;

var CedulaCliente = nodosEnTr[2].textContent; 

var Direccióncliente = nodosEnTr[3].textContent;

var TelefonoCliente = nodosEnTr[4].textContent;

var Productos = nodosEnTr[5].textContent;

var Fecha = nodosEnTr[6].textContent;

var Vendedor = nodosEnTr[7].textContent;

var ValorTotal = nodosEnTr[8].textContent;

var opciones = nodosEnTr[10].textContent;

var nuevoCodigoHtml = '<td><input type="text" name="Registro" id="Registro" value="'+Registro+'" size="10"></td>'+

'<td><input type="text" name="NombreCliente" id="NombreCliente" value="'+NombreCliente+'" size="5"</td>'+

'<td><input type="text" name="CedulaCliente" id="CedulaCliente" value="'+CedulaCliente+'" size="5"</td>'+

'<td><input type="text" name="Direccióncliente" id="Direccióncliente" value="'+Direccióncliente+'" size="5"</td>'+

'<td><input type="text" name="TelefonoCliente" id="TelefonoCliente" value="'+TelefonoCliente+'" size="5"</td>'+

'<td><input type="text" name="Productos" id="Productos" value="'+Productos+'" size="5"</td>'+

'<td><input type="text" name="Fecha" id="Fecha" value="'+Fecha+'" size="5"</td>'+

'<td><input type="text" name="Vendedor" id="Vendedor" value="'+Vendedor+'" size="5"</td>'+

'<td><input type="text" name="ValorTotal" id="ValorTotal" value="'+ValorTotal+'" size="5"</td>'+

'<td><input type="text" name="opciones" id="opciones" value="'+opciones+'" size="5"</td>'+' <td>En edición</td>';
 

nodoTr.innerHTML = nuevoCodigoHtml;

 






nodoContenedorForm.innerHTML = '<br>Pulse Aceptar para guardar los cambios o cancelar para anularlos<br> <br>'+

'<form name = "formulario" action="file:///C:/Users/Sam/Desktop/HSD_PLUS/Admin/Inicio.html" onreset="anular()">'+

'<input class="btn btn-primary" type = "submit" value="Aceptar"> &nbsp; &nbsp; &nbsp; <input class="btn btn-default" type="reset" value="Cancelar">';

editando = "true";}

else {alert ('Solo se puede editar una línea. Recargue la página para poder editar otra');

}

}


 

function capturarEnvio(){

var nodoContenedorForm = document.getElementById('contenedorForm'); //Nodo DIV

nodoContenedorForm.innerHTML = 'Pulse Aceptar para guardar los cambios o cancelar para anularlos'+

'<input type="hidden" name="Registro" value="'+document.querySelector('#Registro').value+'">'+

'<input type="hidden" name="NombreCliente" value="'+document.querySelector('#NombreCliente').value+'">'+

'<input type="hidden" name="CedulaCliente" value="'+document.querySelector('#CedulaCliente').value+'">'+

'<input type="hidden" name="Direccióncliente" value="'+document.querySelector('#Direccióncliente').value+'">'+

'<input type="hidden" name="TelefonoCliente" value="'+document.querySelector('#TelefonoCliente').value+'">'+

'<input type="hidden" name="Productos" value="'+document.querySelector('#Productos').value+'">'+

'<input type="hidden" name="Fecha" value="'+document.querySelector('#Fecha').value+'">'+

'<input type="hidden" name="Vendedor" value="'+document.querySelector('#Vendedor').value+'">'+

'<input type="hidden" name="ValorTotal" value="'+document.querySelector('#ValorTotal').value+'">'+

'<input type="hidden" name="opciones" value="'+document.querySelector('#opciones').value+'">'+

'<input class="boton" type = "submit" value="Aceptar"> <input class="boton" type="reset" value="Cancelar">';

document.formulario.submit();

}

 

function anular(){

window.location.reload();

}