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
 * Servlet implementation class UsuarioInicial
 */
@WebServlet("/UsuarioInicial")
public class UsuarioInicial extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioInicial() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
			
		int cedula_usuario = Integer.parseInt(request.getParameter("cedula_usuario"));
		String email_usuario = request.getParameter("email_usuario");
		String nombre_usuario = request.getParameter("nombre_usuario");
		String password = request.getParameter("password");
		String usuario = request.getParameter("usuario");
		
		UsuarioDAO ud = new UsuarioDAO();
		Modelo mod = new Modelo(cedula_usuario, email_usuario,nombre_usuario,password,usuario);
		
		if(ud.insert(mod)) {
			request.setAttribute("mensaje", "Usuario Creado con exito");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
		
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
