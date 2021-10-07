<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="packageVO.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cargar productos</title>
</head>
<body>
	<form action="/uploadCSVFile" enctype ="multipart/form-data" method ="post">
		<input type="file" name="file" accept =".csv"/>
		<input type="submit" value="Cargar archivo"/>
	
	</form>
	
	<div style="color:red">${errorCargaArchivo}</div>}
	<div style="color:blue">${CargaArchivo}</div>}


</body>
</html>