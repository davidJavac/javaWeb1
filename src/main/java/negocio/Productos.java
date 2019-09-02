package negocio;

public class Productos implements Entidad{

	private int clave;
	private String nombre;
	private double precio;
	private int cantidad;
	
	public Productos(int clave, String nombre, double precio, int cantidad) {
		
		this.clave = clave;
		this.nombre = nombre;
		this.precio = precio;
		this.cantidad = cantidad;
	}
	
	public int getClave() {
		return clave;
	}
	public String getNombre() {
		return nombre;
	}
	public double getPrecio() {
		return precio;
	}
	public int getCantidad() {
		return cantidad;
	}
	
	public String toString() {
		
		return getClave() + "," + getNombre() + "," + getPrecio() + "," + getCantidad();
	}
}
