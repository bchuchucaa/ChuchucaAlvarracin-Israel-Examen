package privada.dao;

import privada.jpa.JPADAOFactory;

public abstract class DAOFactory {

	protected static DAOFactory factory= new JPADAOFactory();
	
	public static DAOFactory getFactory() {
		
		return factory;
	}
	
	
	public abstract ClienteDAO getUsuarioDAO();
	
	public abstract VehiculoDAO getTelefonoDAO();
	
	public abstract TicketDAO getTicketDAO();
	
	
}
