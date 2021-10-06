<%@page import="controlador.ServletLogin"%>
<%@page import="modelo.Modelo"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Principal</title>
</head>
<body>
	
<%
	
	out.println("Bienvenido... El login es exitoso");
			
	%>	
	<br>
	<br>
	<a href="index.jsp">Cerrar Sesión</a>
		
</body>
</html>