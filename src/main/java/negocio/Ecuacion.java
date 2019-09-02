package negocio;

public class Ecuacion implements Entidad{

	private double primera_raiz_r;
	private double segunda_raiz_r;
	private double primera_raiz_i;
	private double segunda_raiz_i;
	private double a;
	private double b;
	private double c;
	
	public Ecuacion(double a, double b, double c){
		this.a = a;
		this.b = b;
		this.c = c;
		
	}
	
	public void calc_primera_raiz(){
		
		primera_raiz_r = (-b + Math.sqrt(Math.pow(b, 2) - 4*a*c))/2*a;
		
	}
	public void calc_segunda_raiz(){
		
		segunda_raiz_r = (-b - Math.sqrt(Math.pow(b, 2) - 4*a*c))/2*a;
		
	}
	
	public double getPrimera_raiz_r() {
		return primera_raiz_r;
	}

	public double getSegunda_raiz_r() {
		return segunda_raiz_r;
	}

	@Override
	public String toString() {
		return "Ecuacion [primera_raiz=" + primera_raiz_r + ", segunda_raiz=" + segunda_raiz_r + "]";
	}
}
