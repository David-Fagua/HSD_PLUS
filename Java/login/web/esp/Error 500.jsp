<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Error500</title>

	<link rel="icon" type="image/png" href="<%=request.getContextPath()%>/assets/Img/Logo.png">
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css" />

</head>

<body>

	<div id="notfound">
		<div class="notfound">
			<div class="notfound-404">
				<div></div>
				<h1>500</h1>
			</div>
			<h2>ERROR DE SERVIDOR INTERNO</h2>
			<p>Incapaz de encontrar el motivo exacto del error, no se ha podido completar la solicitud.</p>
			<a href="index.jsp">Pagina de Inicio</a>
		</div>
	</div>

</body>

</html>