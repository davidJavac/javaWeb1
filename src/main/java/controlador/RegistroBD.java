package controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.GestorBD;
import negocio.*;

@WebServlet(name = "RegistroBD", urlPatterns = {"/RegistroBD"})
public class RegistroBD extends HttpServlet{

	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		
		response.setContentType("text/html; charset = UTF-8");
		
		PrintWriter out = response.getWriter();
		
		try {
			int clave = Integer.parseInt(request.getParameter("clave"));
			String nombre = request.getParameter("nombre");
			double precio = Double.parseDouble(request.getParameter("precio"));
			int cantidad = Integer.parseInt(request.getParameter("cantidad"));
			
			Productos producto = new Productos(clave, nombre, precio, cantidad);
			GestorBD gbd = new GestorBD(producto);
			
			request.setAttribute("producto", producto);
			
			if (gbd.registrar()) {
				
				request.getRequestDispatcher("/muestraRegistroP4.jsp").forward(request, response);
			}
			else {
				
				request.getRequestDispatcher("/errorEnRegistro.jsp").forward(request, response);
				
			}
		}
		finally {
			
			out.close();
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException{
		
		processRequest(request, response);
	}
}
