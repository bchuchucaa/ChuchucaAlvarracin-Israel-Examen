package privada.jpa;

import privada.dao.VehiculoDAO;
import privada.entidad.Vehiculo;

public class JPAVehiculoDAO extends JPAGenericDAO<Vehiculo, String> implements VehiculoDAO{

	public JPAVehiculoDAO() {
		super(Vehiculo.class);
		// TODO Auto-generated constructor stub
	}

}
