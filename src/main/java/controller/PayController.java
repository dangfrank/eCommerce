package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.OrdersDao;
import model.Cart;
import model.Order;

/**
 * Servlet implementation class PayController
 */
public class PayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		try {
			HttpSession session = request.getSession(true);
			
			if(session.getAttribute("cart") == null) {
				session.setAttribute("cart", new Cart());
			}
			OrdersDao dao = new OrdersDao();
			Cart c = (Cart) session.getAttribute("cart");
			String username = (String) request.getAttribute("name");
			String discount = (String) request.getAttribute("discount");
			String address = (String) request.getAttribute("address");
//			if(username == ""|| address == "") {
//				session.setAttribute("error", "Please enter your name and address");
//				response.sendRedirect("cart.jsp");
//			}
			
			Order d = new Order(username, 2, discount, address, "", null);
			dao.insertOrder(d, c);
			response.sendRedirect("home.jsp");
			
		}
		catch (Exception ex) {
			response.getWriter().println(ex);
			ex.printStackTrace();
		}
	}
}
