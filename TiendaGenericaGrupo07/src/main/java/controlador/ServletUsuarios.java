package controlador;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import modelo.Modelo;
import packageDAO.UsuarioDAO;

/**
 * Servlet implementation class ServletUsuario
 */
@WebServlet("/ServletUsuarios")
public class ServletUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletUsuarios() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Server at ").append(request.getContextPath());
		
		String accion = request.getParameter("accion");
		int cedula_usuario = Integer.parseInt(request.getParameter("cedula_usuario") != null?request.getParameter("cedula_usuario"):"");
		String email_usuario = request.getParameter("email_usuario")!= null?request.getParameter("email_usuario"):"";
		String nombre_usuario = request.getParameter("nombre_usuario")!= null?request.getParameter("nombre_usuario"):"";;
		String password = request.getParameter("password")!= null?request.getParameter("password"):"";;
		String usuario = request.getParameter("usuario")!= null?request.getParameter("usuario"):"";;
		UsuarioDAO ud = new UsuarioDAO();
		Modelo mod = new Modelo(cedula_usuario, email_usuario,nombre_usuario,password,usuario);
		
		
		switch(accion) {
			case "insert":			
		    	if(ud.insert(mod)) {					
					request.setAttribute("mensaje", "El Usuario '"+request.getParameter("usuario") +"' Creado con Exito");
					request.getRequestDispatcher("usuarios.jsp").forward(request, response);
		    	}else {
		    		request.setAttribute("mensaje", "Error al agregar... Valide los datos");
					request.getRequestDispatcher("usuarios.jsp").forward(request, response);
		    	}	
		    	break;
		    	
			case "consultar":
				String cedula = String.valueOf(cedula_usuario);
				Modelo u = ud.listarUsuario(cedula);
				request.setAttribute("objModelo", u);
				
				if(u!= null) {
					request.setAttribute("mensaje", "El Usuario Consultado con Exito");
					request.getRequestDispatcher("usuarios.jsp").forward(request, response);
				}else {
					request.setAttribute("mensaje", "El Usuario No existe");
					request.getRequestDispatcher("usuarios.jsp").forward(request, response);
				}
				
				break;	
				
				
				
			case "update":		
				if(ud.update(cedula_usuario, mod)) {
					request.setAttribute("mensaje", "El usuario '"+request.getParameter("usuario")+"' ha sido actualizado Correctamente");
					request.getRequestDispatcher("usuarios.jsp").forward(request, response);
				}else {
					request.setAttribute("mensaje", "Error al actualizar... Valide los datos");
					request.getRequestDispatcher("usuarios.jsp").forward(request, response);
				}
				break;
				
			case "delete":
				if(ud.delete(cedula_usuario)) {
					request.setAttribute("mensaje", "El usuario '"+request.getParameter("usuario")+"' ha sido ELIMINADO Correctamente");
					request.getRequestDispatcher("usuarios.jsp").forward(request, response);
				}else {
					request.setAttribute("mensaje", "Error al Borrar... Valide los datos");
					request.getRequestDispatcher("usuarios.jsp").forward(request, response);
				}
				break;
				   	
	    	
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
