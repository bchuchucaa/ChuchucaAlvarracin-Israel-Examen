package privada.entidad;

import java.io.Serializable;
import javax.persistence.*;

import com.sun.jmx.snmp.Timestamp;

/**
 * Entity implementation class for Entity: Ticket
 *
 */
@Entity

public class Ticket implements Serializable {

	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int numero;
	private Timestamp fechahoraingreso;
	private Timestamp fechahorasalida;
	@OneToOne
	private Vehiculo vehiculo;
	public Ticket() {
		super();
	}
	public Ticket(int numero, Timestamp fechahoraingreso, Timestamp fechahorasalida, Vehiculo vehicuo) {
		super();
		this.numero = numero;
		this.fechahoraingreso = fechahoraingreso;
		this.fechahorasalida = fechahorasalida;
		this.vehiculo = vehicuo;
	}
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public Timestamp getFechahoraingreso() {
		return fechahoraingreso;
	}
	public void setFechahoraingreso(Timestamp fechahoraingreso) {
		this.fechahoraingreso = fechahoraingreso;
	}
	public Timestamp getFechahorasalida() {
		return fechahorasalida;
	}
	public void setFechahorasalida(Timestamp fechahorasalida) {
		this.fechahorasalida = fechahorasalida;
	}
	public Vehiculo getVehicuo() {
		return vehiculo;
	}
	public void setVehicuo(Vehiculo vehicuo) {
		this.vehiculo = vehicuo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + numero;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Ticket other = (Ticket) obj;
		if (numero != other.numero)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Ticket [numero=" + numero + ", fechahoraingreso=" + fechahoraingreso + ", fechahorasalida="
				+ fechahorasalida + ", vehiculo=" + vehiculo + "]";
	}
	
   
	
}