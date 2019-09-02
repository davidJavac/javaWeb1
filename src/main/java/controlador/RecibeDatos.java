package controlador;
import negocio.*;
import datos.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RecibeDatos", urlPatterns = {"/RecibeDatos"})
public class RecibeDatos extends HttpServlet{

	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException{
		
		PrintWriter out = response.getWriter();
		try {
			
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			double promedio = Double.parseDouble(request.getParameter("promedio"));
			
			Alumno alumno = new Alumno(nombre, apellido, promedio);
			ServletContext sc = this.getServletContext();
			String path = sc.getRealPath("/WEB-INF/Promedios.txt");
			//Guardar en archivo
			EscribeArchivo ea = new EscribeArchivo(alumno, path);
			ea.add();
			request.setAttribute("atribAlumno", alumno);
			request.getRequestDispatcher("/muestraDatos.jsp").forward(request, response);
			
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
	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response)throws ServletException, IOException{
		
		processRequest(request, response);
	}
	
}
