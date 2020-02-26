<%-- 
    Document   : index
    Created on : 14/09/2019, 03:42:14 PM
    Author     : ngmonta
--%>

<%@page import="model.Jugadores"%>
<%@page import="dao.JugadoresDao"%>
<%@page import="dao.JugadoresDao"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="Spain">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Carga de datos masivos</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="./css/estilos.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript">
$(document).ready(function(){
	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
	// Select/Deselect checkboxes
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});
</script>
<script type="text/javascript">
var tableToExcel = (function() {
  var uri = 'data:application/vnd.ms-excel;base64,'
    , template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>'
    , base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) }
    , format = function(s, c) { return s.replace(/{(\w+)}/g, function(m, p) { return c[p]; }) }
  return function(table, name) {
    if (!table.nodeType) table = document.getElementById(table)
    var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}
    //window.location.href = uri + base64(format(template, ctx))
	var link = document.createElement("a");
                    link.download = "filename.xls";
                    link.href = uri + base64(format(template, ctx));
                    link.click();
  }
})()
</script>
</head>
<body>
    <%
            //CONECTANDO A LA BASE DE DATOS
            Connection con;
            String url = "jdbc:mysql://localhost:3306/hsd_plus";
            String Driver = "com.mysql.jdbc.Driver";
            String user = "root";
            String clave = "";
            Class.forName(Driver);
            con = DriverManager.getConnection(url, user, clave);
            //Empezamos Listado los Datos de la Tabla Usuario
            PreparedStatement ps;
            String id_ciudad, nombre;
            id_ciudad= request.getParameter("");
            nombre= request.getParameter("");
            ResultSet rs;
            ps = con.prepareStatement("select * from ciudad");
            rs = ps.executeQuery();

        %>
        <br>
        <a class="btn btn-primary btn-sm" href="ciudad/agregarciudad.jsp">Agregar Ciudad</a>
        
        <br>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    
                    <div class="col-sm-7">
                            <h2>Cargar archivo.....</h2>
                            <form action="CargarFichero" enctype="multipart/form-data" method="post">
                                <input class="btn btn-success" type="submit" name="Subir información" value="Subir">
                                <input class="btn btn-success" type="file" name="fichero" size="70" accept="text/plain;image/jpeg">
                            </form>
                    </div>
                    <b></b>
                    <b></b>
                    <div class="col-sm-14">
                            <input type=image src="./image/Excel.gif" width="50" height="36" onclick="tableToExcel('testTable', 'Empleados')" class="btn btn-success" data-toggle="tooltip" title="Exportar a Excel">
                            	
                    </div>
               </div>
            </div>
            <table id="testTable" class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>
                        <span class="custom-checkbox">
                                <input type="checkbox" id="selectAll">
                                <label for="select"></label>
                        </span>
                        </th>
                        <th>ID Ciudad</th>
                        <th>Nombre</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <%                    while (rs.next()) {
                %>
                   

                    
                    <tr>
                        <th>
                            <span class="custom-checkbox">
                                <input type="checkbox" id="selectAll">
                                <label for="selectAll"></label>
                            </span>
                        </th>

                        
                        <td class=""><%=rs.getInt("id_ciudad")%></td>
                        <td class=""><%=rs.getString("Nombre")%></td>
                        <td class="text-center">
                            <a href="ciudad/Editarciudad.jsp?id_ciudad=<%= rs.getInt("id_ciudad")%>" class="btn btn-warning btn-xs">Editar</a>
                            <a href="ciudad/Eliminarciudad.jsp?id_ciudad=<%= rs.getInt("id_ciudad")%>" class="btn btn-danger btn-xs">Eliminar</a>
                        </td>
                    


                    </tr>
                    <%}%>
                    
                        
                    				
                    
                
            </table>
		
        </div>
    </div>
	<!-- Edit Modal HTML -->
	<div id="addEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">						
						<h4 class="modal-title">Agregar Empleados</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<div class="form-group">
							<label>Nombre</label>
							<input type="text" class="form-control" required>
						</div>
						<div class="form-group">
							<label>Correo</label>
							<input type="email" class="form-control" required>
						</div>
						<div class="form-group">
							<label>Dirección</label>
							<textarea class="form-control" required></textarea>
						</div>
						<div class="form-group">
							<label>Teléfono</label>
							<input type="text" class="form-control" required>
						</div>					
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
						<input type="submit" class="btn btn-success" value="Adicionar">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Edit Modal HTML -->
	<div id="editEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">						
						<h4 class="modal-title">Editar empleados</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<div class="form-group">
							<label>Nombre</label>
							<input type="text" class="form-control" required>
						</div>
						<div class="form-group">
							<label>Correo</label>
							<input type="email" class="form-control" required>
						</div>
						<div class="form-group">
							<label>Dirección</label>
							<textarea class="form-control" required></textarea>
						</div>
						<div class="form-group">
							<label>Teléfono</label>
							<input type="text" class="form-control" required>
						</div>					
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
						<input type="submit" class="btn btn-info" value="Guardar">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Delete Modal HTML -->
	<div id="deleteEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">						
						<h4 class="modal-title">Borrar Empleados</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<p>¿Seguro, que quiere eliminar estos registros?</p>
						<p class="text-warning"><small>Esta acción no se puede deshacer.</small></p>
					</div>
					
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
						<input type="submit" class="btn btn-danger" value="Borrar">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- mostrar en modal pdf -->
	<div id="pdfmodal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form>
                            <div class="modal-header">						
                                <h4 class="modal-title">Ver PDF</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>

                            <div class="modal-body">
                                    <object data="./image/GAES1.pdf" type="application/pdf" width="480px" height="500px"></object>	
                            </div>
                        </form>    
                    </div>
                </div>
        </div>    
</body>
</html>


