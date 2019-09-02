package datos;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import negocio.*;

public class GuardaProducto {

	private Productos producto;
	private String path;
	
	public GuardaProducto(Productos producto, String path) {
		
		this.producto = producto;
		this.path = path;
	}
	
	public void guardar() {

		File archivo;
		FileWriter fw = null;
		PrintWriter pw = null;
		
		try {
			archivo = new File(path);
			fw = new FileWriter(archivo, true);
			pw = new PrintWriter(fw);
			
			pw.println(producto.toString());
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				
				if(pw != null) {
					
					pw.close();
				}
				
			}
			catch(Exception e) {
				
				e.printStackTrace();
			}
		}
		
		
	}
}
