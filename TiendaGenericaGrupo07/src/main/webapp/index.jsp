<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="Estilos css/Estilos5.css">
	<title>Validación Usuario</title>
</head>
<body>
	
		<header>
        <h1 class="titulo"> Tienda Generica</h1>
    </header>

	<section class="main">
        <br />
        <h2>Bienvenido a Tienda Generica Grupo 7</h2>
            
        <form action="./ServletLogin" method="get">
            <div>

                <label>Usuario:</label>
                <input type="text" placeholder="Escriba el usuario" name="nombre" id="usuario" class="usuario">
                <br />         
                <label>Contraseña:</label>
                <input type="password" placeholder="Escriba la contraseña" name="password" id="contraseña" class="contraseña">
                <br />      
                <button name="Aceptar" class="acciones">Aceptar</button>
                
            </div>
            
        
    </form>
    </section>
		<div>
			<p>
				<%
					String resultado = (String)request.getAttribute("mensaje");
					String mensaje = "";
					if (resultado != null) {
						mensaje = resultado;
					}
				%>
				<%=mensaje %>
			</p>
		</div>
				
		
	</form>
</body>
</html>