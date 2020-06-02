package privada.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.jmx.snmp.Timestamp;

import privada.dao.ClienteDAO;
import privada.dao.DAOFactory;
import privada.entidad.Cliente;
import privada.entidad.Ticket;
import privada.entidad.Vehiculo;

/**
 * Servlet implementation class ServletTicket
 */
@WebServlet("/ServletTicket")
public class ServletTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletTicket() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String fechaingreso= request.getParameter("fechaingreso");
		String fechasalida= request.getParameter("fechasalida");
		String placa= request.getParameter("placa");
		String marca = request.getParameter("marca");
		String modelo= request.getParameter("modelo");
		String cedula= request.getParameter("cedula");
		ClienteDAO clienteDAO = DAOFactory.getFactory().getClienteDAO();
		Cliente cliente=clienteDAO.buscarPorId(cedula);
		System.out.println(cliente.toString());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
