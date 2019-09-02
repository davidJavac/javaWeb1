package controlador;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.*;
import negocio.*;

@WebServlet(name = "MuestraProductosP4", urlPatterns = {"/MuestraProductosP4"})
public class MuestraProductosP4 extends HttpServlet{

	protected void processRequest(HttpServletRequest request, 
			HttpServletResponse response)throws ServletException, IOException{
		try {
			
			response.setContentType("text/html; charset= UTF-8");
			
			ServletContext sc = this.getServletContext();
			String path = sc.getRealPath("/WEB-INF/Productos.txt");
			path = path.replace("\\", "/");
			
			ArrayList<Productos> productos = LeeProducto.leer(path);
			int cont = LeeProducto.getCont();
			LeeProducto.clearCont();
			request.setAttribute("productos", productos);
			request.setAttribute("cont", cont);
			request.getRequestDispatcher("/despliegaProductos.jsp").forward(request, response);
			productos.clear();
			
		}
		catch(ServletException e) {
			
			e.printStackTrace();
		}
		catch(IOException e2) {
			
			e2.printStackTrace();
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response)throws ServletException, IOException{
		
		processRequest(request, response);
	}
}
