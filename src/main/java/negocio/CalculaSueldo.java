package negocio;

public class CalculaSueldo {

	private Empleado empleado;
	
	public CalculaSueldo(Empleado empleado){
		
		this.empleado = empleado;
	}
	
	public double getSueldo_calc(){
		
		return empleado.getDias_trabajados() * empleado.getSueldo_diario();
	}
}
