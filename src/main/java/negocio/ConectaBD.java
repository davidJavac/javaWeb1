package negocio;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConectaBD {
	
	public static Connection con;
	public static String bd = "tienda";
	public static String usuario = "root";
	public static String password = "";
	public static String url = "jdbc:mysql://localhost/" + bd;
	
	public static Connection abrir() {
		
		try {
		    Class.forName("com.mysql.jdbc.Driver");
		} 
		catch (ClassNotFoundException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		    System.out.println("Error con jdbc");
		} 
		
		try {
			
			//con = DriverManager.getConnection(url, usuario, password);
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tienda?autoReconnect=true&useSSL=false"
					
					//conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/halcones_diarios?autoReconnect=true&useSSL=false"
					, "root", "");
		}
		catch(Exception e) {
			System.out.println("Error en la conexion");
			e.printStackTrace();
		}
		
		return con;
	}
	
	public static void cerrar() {
		
		try {
			if(con != null)
				con.close();
		}
		catch(Exception e) {
			
			System.out.println("No se logro cerrar la aplicacion\n" + e);
		}
	}
}
