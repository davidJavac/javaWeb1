package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.Alumno;
import datos.LeerArchivo;

@WebServlet(name = "MuestraRegistro", urlPatterns = { "/MuestraRegistro" })
//@WebServlet("/MuestraRegistro")
public class MuestraRegistro extends HttpServlet {

	protected void processRequest(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/html;charset=UTF-8");
		
		try {
			ArrayList<Alumno> alumnos = new ArrayList<Alumno>();
			int cont = 0;
			String contador;
			
			ServletContext sc = this.getServletContext();
			String path = sc.getRealPath("/WEB-INF/Promedios.txt");
			path = path.replace("\\", "/");
			LeerArchivo.clearCont();
			alumnos = LeerArchivo.leeAlumno(path);
			
			//Resetea la variable estatica
			cont = LeerArchivo.getCont();
			contador = String.valueOf(cont);
			
			request.setAttribute("Alumnos", alumnos);
			request.setAttribute("contador", contador);
			
			request.getRequestDispatcher("/alumnosRegistrados.jsp").forward(request, response);
		} finally {
			
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

