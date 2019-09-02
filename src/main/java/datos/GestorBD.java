package datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import negocio.ConectaBD;
import negocio.Entidad;
import negocio.Productos;

public class GestorBD {

	Productos producto;
	static Connection con = null;
	static ResultSet rs;
	int resultInsert = 0;
	static int contador = 0;
	private static String insert = "insert into productos(clave, nombre , precio, cantidad) values"+
							" (?,?,?,?)";
	
	private static String select_porId= "select * from productos where clave = ?";
	private static String selectAll= "select * from productos";
	
	public GestorBD(Productos producto) {
		
		this.producto = producto;
	}
	
	public static Productos consultar(int cl) {
		
		Productos prod = null;
		con = ConectaBD.abrir();
		PreparedStatement ps = null;
		
		try {
			ps = con.prepareStatement(select_porId);
			ps.setInt(1, cl);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				int clave = rs.getInt(1);
				String nombre = rs.getString(2);
				double precio = rs.getDouble(3);
				int cantidad = rs.getInt(4);
				prod = new Productos(clave, nombre, precio, cantidad);
				System.out.println("Registro encontrado");
				return prod;
			}
			else {
				
				System.out.println("Registro no encontrado");
			}
			ConectaBD.cerrar();
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		return null;
	}
	
	public boolean registrar() {
		
		con = ConectaBD.abrir();
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(insert);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			ps.setInt(1, producto.getClave());
			ps.setString(2, producto.getNombre());
			ps.setDouble(3, producto.getPrecio());
			ps.setInt(4, producto.getCantidad());
			
			resultInsert = ps.executeUpdate();
			
			ConectaBD.cerrar();
			
			if(resultInsert != 0) return true;
			else return false;
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en el insert a la base de datos");
			e.printStackTrace();
			return false;
		}
		
	}
	
	public static ArrayList<Productos> allList(){
		
		con = ConectaBD.abrir();
		try {
			PreparedStatement ps = con.prepareStatement(selectAll);
			ResultSet rs = ps.executeQuery();
			ArrayList<Productos> ar = new ArrayList<Productos>();
			while(rs.next()) {
				
				int clave = rs.getInt(1);
				String nombre = rs.getString(2);
				double precio = rs.getDouble(3);
				int cantidad = rs.getInt(4);
				Productos p = new Productos(clave, nombre, precio, cantidad);
				ar.add(p);
				contador++;
			}
			ConectaBD.cerrar();
			return ar;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	public static void clearCont() {
		
		contador = 0;
	}
	public static int getContador() {
		
		return contador;
	}
}
