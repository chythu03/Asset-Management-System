package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class Action
 */
@WebServlet("/Action")
public class Action extends HttpServlet{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Action() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String function;
		String name=request.getParameter("name");
		String category=request.getParameter("category");
		function=(String)request.getParameter("func");
		
		HttpSession session=request.getSession();
		String actor=(String)session.getAttribute("actor");
		System.out.println(actor);
		if(actor.equalsIgnoreCase("admin"))
		{
			AdminAction obj=(AdminAction)session.getAttribute("userObj");
			switch(function)
			{
				case "create":obj.create(name,category);							 
							  RequestDispatcher view=request.getRequestDispatcher("AdminCreate.jsp");
							  view.include(request, response);
							  out.println("<script>");
							  out.println("alert(\"Product Created\");");
							  out.println("</script>");
				default:
			}
		}

		
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
