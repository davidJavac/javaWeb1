package negocio;

public class Alumno implements Entidad{

	private String nombre;
	private String apellido;
	private Double promedio;
	
	public Alumno(String nombre, String apellido, Double promedio){
		
		this.nombre = nombre;
		this.apellido = apellido;
		this.promedio = promedio;
	}

	public String getNombre() {
		return nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public Double getPromedio() {
		return promedio;
	}

	@Override
	public String toString() {
		return nombre + "," + apellido + "," + promedio;
	}
	
}
