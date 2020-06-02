package privada.jpa;

import privada.dao.ClienteDAO;
import privada.entidad.Cliente;

public class JPAClienteDAO extends JPAGenericDAO<Cliente, String> implements ClienteDAO{

	public JPAClienteDAO() {
		super(Cliente.class);
		// TODO Auto-generated constructor stub
	}

}
