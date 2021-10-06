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
        
        <div class="logo"> 
            <img class="logo" src="Estilos css/Imagenes/Imagen1.jpg" alt="Lotipo prueba" />
        </div>
    </header>

	<section class="main">
        <br />
        <h2>Gestión de Usuarios Tienda Generica</h2>
        <br />
        <form action="./UsuarioInicial" method="get">
            <div>
                
                <label>Cedula:</label>
                <input type="text" placeholder="Escriba la Cedula" name="cedula_usuario" id="Cedula" class="Cedula">
                <br /> 
                <label>Usuario:</label>
                <input type="text" placeholder="Escriba el Usuario" name="usuario" id="Usuario" class="Usuario">
                <br />         
                <label>Nombre:</label>
                <input type="text" placeholder="Escriba el Nombre" name="nombre_usuario" id="Nombre" class="Nombre">
                <br /> 
                <label>Contraseña:</label>
                <input type="text" placeholder="Escriba la Contraseña" name="password" id="Contraseña" class="Contraseña">
                <br />      
                <label>Correo:</label>
                <input type="text" placeholder="Escriba el Correo" name="email_usuario" id="Correo" class="Correo">
                <!--<label class="espacio"> . </label>-->
                
                <br />

                
                <button name="Crear" class="acciones">Crear</button>
                
                
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