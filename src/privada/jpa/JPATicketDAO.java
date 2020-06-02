package privada.jpa;

import privada.dao.TicketDAO;
import privada.entidad.Ticket;

public class JPATicketDAO extends JPAGenericDAO<Ticket, Integer> implements TicketDAO{

	public JPATicketDAO() {
		super(Ticket.class);
		// TODO Auto-generated constructor stub
	}

}
