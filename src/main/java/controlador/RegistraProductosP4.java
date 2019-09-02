package controlador;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.*;
import datos.*;

@WebServlet(name = "RegistraProductosP4", urlPatterns = {"/RegistraProductosP4"})
public class RegistraProductosP4 extends HttpServlet{

	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException{
		
		response.setContentType("text/html;charset = UTF-8");
		
		int clave = Integer.parseInt(request.getParameter("clave"));
		String nombre = request.getParameter("nombre");
		double precio = Double.parseDouble(request.getParameter("precio"));
		int cantidad = Integer.parseInt(request.getParameter("cantidad"));
		
		Productos producto = new Productos(clave, nombre, precio, cantidad);
		ServletContext sc = this.getServletContext();
		String path = sc.getRealPath("/WEB-INF/Productos.txt");
		path = path.replace("\\", "/");
		GuardaProducto gp = new GuardaProducto(producto, path);
		
		gp.guardar();
		
		request.setAttribute("producto", producto);
		request.getRequestDispatcher("/muestraRegistroP4.jsp").forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException{
		
		processRequest(request, response);
		
	}
}
