<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
>>>>>>> branch 'master' of https://github.com/edfesa90/TiendaGenericaGrupo07.git
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="Estilos css/Estilos1.css">
	<title>Tienda Generica G7</title>
</head>
<body>
<<<<<<< HEAD
	
	Bienvenido... El login es exitoso
			
		
	<br>
	<br>
	<a href="index.jsp">Cerrar Sesi�n</a>
		
=======
	<header>
        <div class="titulo">
            <h1>Tienda Generica</h1>
        </div>
        <nav>
            <a href=ServletUsuarios class="b">◦ Usuarios</a>
            <a href="clientes.jsp" class="b">◦ Clientes</a>
            <a href="proveedores.jsp" class="b">◦ Proveedores</a>
            <a href="productos.jsp" class="b">◦ Productos</a>
            <a href="ventas.jsp" class="b">◦ Ventas</a>
            <a href="reportes.jsp" class="b">◦ Reportes</a>
        </nav>
        <div class="logo"> 

        </div>
    </header>

	<section class="main">
        <br />
            <h2>Bienvenido a Tienda Generica Grupo 7</h2>
    </section>
    <%String user = (String)request.getAttribute("nombre"); %>
    <h3 class="user"><%= user %></h3>
>>>>>>> branch 'master' of https://github.com/edfesa90/TiendaGenericaGrupo07.git
</body>
</html>