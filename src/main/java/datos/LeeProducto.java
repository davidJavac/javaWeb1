package datos;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

import negocio.*;

public class LeeProducto {

	private static ArrayList<Productos> ar = new ArrayList<Productos>();
	private static int cont = 0;
	public static ArrayList<Productos> leer(String path) {
		
		File archivo;
		FileReader fr = null;
		BufferedReader br = null;
		
		try {
			
			archivo = new File(path);
			fr = new FileReader(archivo);
			br = new BufferedReader(fr);
			String linea = "";
			
			linea = br.readLine();
			String elementos [];
			
			while(linea != null) {
				
				elementos = linea.split(",");
				Productos p = new Productos(Integer.parseInt(elementos[0]),elementos[1],Double.parseDouble(elementos[2]),
						Integer.parseInt(elementos[3]));
				
				ar.add(p);
				cont++;
				linea = br.readLine();
			}
			
		}
		catch(IOException e) {
			
			e.printStackTrace();
		}
		finally {
			
			try {
				
				if(fr != null) {
					
					fr.close();
				}
			}
			catch(Exception e) {
				
				e.printStackTrace();
			}
		}
		
		return ar;
	}
	
	public static void clearCont() {
		
		cont = 0;
	}
	
	public static int getCont() {
		
		return cont;
	}
	
}
