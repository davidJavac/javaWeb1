package negocio;

public class Empleado {
	
	private String nombre;
	private int dias_trabajados;
	private double sueldo_diario;
	
	public Empleado(String nombre, int dias_trabajados, double sueldo_diario){
		
		this.nombre = nombre;
		this.dias_trabajados= dias_trabajados;
		this.sueldo_diario = sueldo_diario;
	}
	
	public String getNombre() {
		return nombre;
	}
	
	public int getDias_trabajados() {
		return dias_trabajados;
	}
	
	public Double getSueldo_diario() {
		return sueldo_diario;
	}
	
}
