package controlador;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.GestorBD;
import negocio.Productos;

@WebServlet(name = "MuestraProductosBD", urlPatterns = {"/MuestraProductosBD"})
public class MuestraProductosBD extends HttpServlet{
	
	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException{
		
		response.setContentType("text/html; charset = UTF-8");
		
		try {
			GestorBD.clearCont();
			ArrayList<Productos> ar = GestorBD.allList();
			request.setAttribute("productos", ar);
			request.setAttribute("cont", GestorBD.getContador());
			
			request.getRequestDispatcher("/despliegaProductos.jsp").forward(request, response);
		}
		catch(Exception e) {
			
			e.printStackTrace();
			System.out.println("Error en la busqueda");
		}
	}
	
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response)throws ServletException, IOException{
		
		processRequest(request, response);
	}

}
