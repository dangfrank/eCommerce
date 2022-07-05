package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class URLController
 */
public class URLController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public URLController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		
		String page = null;
		if(action == null) {
			page = "/error.jsp";
		}
		else if(action.equals("about")) {
			page = "/aboutus.jsp";
		}
		else if(action.equals("login")) {
			page = "/login.jsp";
		}
		else if(action.equals("register")) {
			page = "/register.jsp";
		}
		else if(action.equals("home")) {
			page = "/home.jsp";
		}
		else if(action.equals("products")) {
			page = "/products.jsp";
		}
		else if(action.equals("forgotpassword")) {
			page = "/forgotpassword.jsp";
		}
		else {
			page = "/error.jsp";
		}
		
		getServletContext().getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
