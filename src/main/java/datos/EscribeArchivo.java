package datos;

import negocio.*;
import java.io.*;

public class EscribeArchivo {

	private Entidad entidad;
	private String path;

	public Entidad getEntidad() {
		return entidad;
	}

	public String getPath() {
		return path;
	}

	public EscribeArchivo(Entidad entidad, String path) {
		this.entidad = entidad;
		this.path = path;
	}

	public void add() throws IOException {

		File archivo;
		FileWriter fw = null;
		PrintWriter pw = null;
		try {
			archivo = new File(path);
			fw = new FileWriter(archivo, true);
			pw = new PrintWriter(fw);
			pw.println(entidad.toString());
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		} finally {

			try {
				if (pw != null)
					pw.close();

			} catch (Exception e2) {

				e2.printStackTrace();
			}

		}
	}
}
