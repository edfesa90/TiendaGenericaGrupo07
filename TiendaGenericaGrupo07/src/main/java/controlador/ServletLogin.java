package controlador;

import java.io.IOException;
//import java.io.PrintWriter;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Modelo;
import packageDAO.Consultas;
import packageDAO.UsuarioDAO;


/**
 * Servlet implementation class ServletLogin
 */
@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String nombre = request.getParameter("nombre");
		String password = request.getParameter("password");
		
		//PrintWriter out = response.getWriter();
		
		UsuarioDAO ud = new UsuarioDAO();
		Consultas co = new Consultas();
		
		
		List<Modelo> lista = ud.selectAll();
		if(lista.size() > 0) {
			if(co.autenticacion(nombre, password)) {
				response.sendRedirect("principal.jsp");
			}else {
				request.setAttribute("mensaje", "Error nombre de usuario y/o clave");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			
		}else {
			if (nombre.equals("dmininicial") && password.equals("dmin123456")) {
				response.sendRedirect("usuarioInicial.jsp");
			}else {
				request.setAttribute("mensaje", "Error nombre de usuario y/o clave POR DEFECTO");
				request.getRequestDispatcher("index.jsp").forward(request, response);
				
				//out.print("Usuario Inicial incorrecto");
				//response.sendRedirect("principal.jsp");
				}
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	

}
