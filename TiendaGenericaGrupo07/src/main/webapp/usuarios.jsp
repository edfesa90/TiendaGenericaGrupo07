<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="Estilos css/Estilos1.css">
	<title>Usuarios</title>
</head>
<body>

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
        </nav>
        <div class="logo"> 
            <img class="logo" src="Estilos css/Imagenes/Imagen1.jpg" alt="Lotipo prueba" />
        </div>
    </header>

	<section class="main">
        <br />
        <h2>Gestión de Usuarios Tienda Generica</h2>
        <br />
        <form action="./ServletUsuario" method="get">
            <div>
                
                <label>Cedula:</label>
                <input type="text" placeholder="Escriba la Cedula" name="Cedula" id="Cedula" class="Cedula">
                <br /> 
                <label>Usuario:</label>
                <input type="text" placeholder="Escriba el Usuario" name="Usuario" id="Usuario" class="Usuario">
                <br />         
                <label>Nombre:</label>
                <input type="text" placeholder="Escriba el Nombre" name="Nombre" id="Nombre" class="Nombre">
                <br /> 
                <label>Contraseña:</label>
                <input type="text" placeholder="Escriba la Contraseña" name="Contraseña" id="Contraseña" class="Contraseña">
                <br />      
                <label>Correo:</label>
                <input type="text" placeholder="Escriba el Correo" name="Correo" id="Correo" class="Correo">
                <!--<label class="espacio"> . </label>-->
                
                <br />

                <button name="Consultar" class="acciones">Consultar</button>
                <button name="Crear" class="acciones">Crear</button>
                <button name="Actualizar" class="acciones">Actualizar</button>
                <button name="Borrar" class="acciones">Borrar</button>
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

    

</body>
</html>