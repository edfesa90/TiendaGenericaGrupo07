<%@page import="modelo.Modelo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title>Usuarios</title>
</head>
<body>
	<%
	Modelo u = new Modelo(0,"","","","");	
	if(request.getAttribute("objModelo") != null){
		u = (Modelo)request.getAttribute("objModelo");
	}
	%>
	<header>
        <div class="titulo">
            <h1><a href="Tienda.jsp">Tienda Generica</a></h1>
        </div>
        <nav>
            <a href="#" class="b">◦ Usuarios</a>
            <a href="clientes.jsp" class="b">◦ Clientes</a>
            <a href="proveedores.jsp" class="b">◦ Proveedores</a>
            <a href="productos.jsp" class="b">◦ Productos</a>
            <a href="ventas.jsp" class="b">◦ Ventas</a>
            <a href="reportes.jsp" class="b">◦ Reportes</a>
            <a href="index.jsp">◦ Cerrar Sesión</a>
        </nav>
        <div class="logo"> 
            <img class="logo" src="Estilos css/Imagenes/Imagen1.jpg" alt="Lotipo prueba" />
        </div>
    </header>

	<section class="main">
        <br />
        <h2>Gestión de Usuarios Tienda Generica</h2>
        <br />
        <form action="./ServletUsuarios" method="get">
            <div>
                
                <label>Cedula:</label>
                <input type="text" placeholder="Escriba la Cedula" name="cedula_usuario" id="Cedula" class="Cedula" value ="<%=u.getCedula_usuario() %>">
                <br /> 
                <label>Usuario:</label>
                <input type="text" placeholder="Escriba el Usuario" name="usuario" id="Usuario" class="Usuario" value ="<%=u.getUsuario() %>">
                <br />         
                <label>Nombre:</label>
                <input type="text" placeholder="Escriba el Nombre" name="nombre_usuario" id="Nombre" class="Nombre" value ="<%=u.getNombre_usuario() %>">
                <br /> 
                <label>Contraseña:</label>
                <input type="text" placeholder="Escriba la Contraseña" name="password" id="Contraseña" class="Contraseña" value ="<%=u.getPassword() %>">
                <br />      
                <label>Correo:</label>
                <input type="text" placeholder="Escriba el Correo" name="email_usuario" id="Correo" class="Correo" value ="<%=u.getEmail_usuario() %>">
                <!--<label class="espacio"> . </label>-->
                
                <br />
                <button name="accion" value ="consultar" class="acciones">Consultar</button>
				<button name="accion" value ="insert" class="acciones">Crear</button>                                
                <button name="accion" value ="update" class="acciones">Actualizar</button>
                <button name="accion" value ="delete" class="acciones">Borrar</button>
            </div>
            
        
        </form>

        <section class="datos">
            <h2>Usuarios</h2>
            <br />
            <table class="data">
                <tr>
                    <td class="icon"> <img src="https://img.icons8.com/nolan/64/checked.png"/> </td>
                    <td>Cedula</td>
                    <td>Usuario</td>
                    <td>Nombre</td>
                    <td>Correo</td>
                    <td>Contraseña</td>
                </tr>
</table>

        </section>
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

</body>
</html>