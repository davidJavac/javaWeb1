package negocio;
public class Calcula {
	
	private Double tInicial;
	private Double tFinal;
	private Double distancia;
	private Double vel;
	private Double tTotal;
	
	public Calcula(String tIni, String tFin, String dist){
		
		tInicial = Double.parseDouble(tIni);
		tFinal = Double.parseDouble(tFin);
		distancia = Double.parseDouble(dist);
	}
	
	public void velocidad(){
		
		vel = distancia/(tFinal - tInicial);
		
	}
	public void tiempoTotal(){
		
		tTotal = tFinal -tInicial;
	}
	
	public Double getVel(){
		
		return vel;
	}
	
	public Double getTiempo(){
		
		return tTotal;
	}
	
}
