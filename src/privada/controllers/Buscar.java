package privada.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import privada.dao.ClienteDAO;
import privada.dao.DAOFactory;
import privada.dao.TelefonoDAO;
import privada.dao.UsuarioDAO;
import privada.dao.VehiculoDAO;
import privada.entidad.Cliente;
import privada.entidad.Telefono;
import privada.entidad.Usuario;
import privada.entidad.Vehiculo;

/**
 * Servlet implementation class Buscar
 */
@WebServlet("/Buscar")
public class Buscar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Buscar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url=null;
		String cedula= request.getParameter("cedula");
		ClienteDAO clienteDAO = DAOFactory.getFactory().getClienteDAO();
		Cliente cliente=clienteDAO.buscarPorId(cedula);
		System.out.println(cliente.toString());
		VehiculoDAO vdao =DAOFactory.getFactory().getVehiculoDAO();
		Vehiculo vehiculo= new Vehiculo();
		vehiculo.setCliente(cliente);
		vdao.recuperarVehiculos(vehiculo);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
