package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.UsuarioDAO;
import modelo.UsuarioDTO;

/**
 * Servlet implementation class servletusuario
 */
@WebServlet("/servletusuario")
public class servletusuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servletusuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String usuario,nombre,email,password;
		int cedula;
		String res;
		UsuarioDTO udto;
		UsuarioDAO udao;
		UsuarioDTO recdatos;
		
		if(request.getParameter("registrar")!=null) {
			if(request.getParameter("cedula")!="" && request.getParameter("email")!=""&&request.getParameter("nombre")!=""&&
				request.getParameter("password")!=""&& request.getParameter("usuario")!="" ) {
				
				
				cedula=Integer.parseInt(request.getParameter("cedula"));
				email=request.getParameter("email");
				nombre=request.getParameter("nombre");
				password=request.getParameter("password");
				usuario=request.getParameter("usuario");
				udto=new UsuarioDTO(cedula,email,nombre,password,usuario);
				udao=new UsuarioDAO();
				res=udao.insertarusuario(udto);
				if(res.equals("r")) {
					request.setAttribute("mensaje_success","usuario registrado");
					request.getRequestDispatcher("usuario.jsp").forward(request, response);
					
				}else {
					request.setAttribute("error","no registrado");
					request.getRequestDispatcher("usuario.jsp").forward(request, response);
				}
				
				
				
			}
			
			
		else {
			request.setAttribute("mensaje_warning", "ingrese los valores requeridos");
			request.getRequestDispatcher("usuario.jsp").forward(request,response);
		}
		
		}
		if(request.getParameter("consultar")!=null) {
			
			if(request.getParameter("cedula")!="") {
				
				cedula=Integer.parseInt(request.getParameter("cedula"));
				udto=new UsuarioDTO(cedula);
				udao=new UsuarioDAO();
				recdatos=udao.consultarusuario(udto);
				
				if(recdatos!=null) {
					email=recdatos.getEmail_usuario();
					nombre=recdatos.getNombre_usuario();
					password=recdatos.getPassword();
					usuario=recdatos.getUsuario();
					response.sendRedirect("usuario.jsp?cedula="+cedula+"&email="+email+"&nombre="+nombre+"&password="+password+"&usuario="+usuario);
				}else {
					request.setAttribute("mensaje_error", "no existe cedula");
					request.getRequestDispatcher("usuario.jsp").forward(request, response);
				}
				
				
				
				
			}else {
				request.setAttribute("mensaje_warning", "ingrese cedula");
				request.getRequestDispatcher("usuario.jsp").forward(request, response);
			}
			
			
		}
		if(request.getParameter("actualizar")!=null) {
			boolean dat;
			if(request.getParameter("cedula")!=null) {
				cedula=Integer.parseInt(request.getParameter("cedula"));
				email=request.getParameter("email");
				nombre=request.getParameter("nombre");
				password=request.getParameter("password");
				usuario=request.getParameter("usuario");
				udto=new UsuarioDTO(cedula,email,nombre,password,usuario);
				udao=new UsuarioDAO();
				dat=udao.actualizar(udto);
				if(dat==true) {
					request.setAttribute("mensaje_success", "se actualizo");
					request.getRequestDispatcher("usuario.jsp").forward(request, response);
					
				}else {
					request.setAttribute("mensaje_error", "no se actualizo");
					request.getRequestDispatcher("usuario.jsp").forward(request, response);
					
				}	
				
			}else {
				request.setAttribute("mensaje_warning", "ingrese cedula");
				request.getRequestDispatcher("usuario.jsp").forward(request, response);
			}
			
		}
		if(request.getParameter("eliminar")!=null) {
			if(request.getParameter("cedula")!="") {
				int y;
				cedula=Integer.parseInt(request.getParameter("cedula"));
				udto=new UsuarioDTO(cedula);
				udao=new UsuarioDAO();
				y=udao.eliminar(udto);
				if(y>0) {
					request.setAttribute("mensaje_success", "se elimino");
					request.getRequestDispatcher("usuario.jsp").forward(request, response);
					
				}else {
					request.setAttribute("mensaje_error","no elimino");
					request.getRequestDispatcher("usuario.jsp").forward(request, response);
				}
				
					
					
				
			}else {
				request.setAttribute("mensaje_warning", "ingrese cedula");
				request.getRequestDispatcher("usuario.jsp").forward(request, response);
			}
		}
		
	
	}

}
