package controlador;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.GestorBD;
import negocio.Productos;

@WebServlet(name= "ContultaBD", urlPatterns= {"/ConsultaBD"})
public class ConsultaBD extends HttpServlet{
7
	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException{
		
		response.setContentType("text/html; charset = UTF-8");
		
		try {
			
			int clave = Integer.parseInt(request.getParameter("clave"));
			Productos producto = GestorBD.consultar(clave);
			
			
			if(producto != null) {
				
				request.setAttribute("producto", producto);
				request.getRequestDispatcher("/resultadoConsulta.jsp").forward(request, response);
			}
			else {
				
				request.getRequestDispatcher("/errorConsulta.jsp").forward(request, response);
				
			}
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException{
		
		processRequest(request, response);
	}
}
