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
		
			AdminAction obj=(AdminAction)session.getAttribute("userObj");
			 RequestDispatcher view;
			switch(function)
			{
				case "create":String id=obj.create(name,category);							 
							  view=request.getRequestDispatcher("AdminCreate.jsp");
						      view.include(request, response);
							  if(id!=null)
							  {
								  out.println("<script>");
								  out.println("alert(\"Product "+id+" Created\");");
								  out.println("</script>");
							  }
							  else
							  {
								  out.println("<script>");
								  out.println("alert(\"error occured\");");
								  out.println("</script>");
							  }
							  
							  break;
				case "ViewStatus":String asset_id=request.getParameter("id");
								  View obj1=new View();
								  String res=obj1.ViewStatus(asset_id);
								  view=request.getRequestDispatcher("index1.4.jsp");
								  view.include(request, response);
								  out.println("<script>");
								  out.println("alert(\"Status: "+res+"\");");
								  out.println("</script>");
								  break;
				case "ViewLocation":String asset=request.getParameter("id");
									View obj2=new View();
									  String res1=obj2.ViewLocation(asset);
									  view=request.getRequestDispatcher("index1.5.jsp");
									  view.include(request, response);
									  out.println("<script>");
									  out.println("alert(\"Location: "+res1+"\");");
									  out.println("</script>");
									  break;
				case "ViewAsset":String asset1=request.getParameter("id");
								 View obj3=new View();
									  String res2=obj3.ViewAsset(asset1);
									  view=request.getRequestDispatcher("index1.6.jsp");
									  view.include(request, response);
									  out.println("<script>");
									  out.println("alert(\"Asset: "+res2+"\");");
									  out.println("</script>");
									  break;
				case "ViewByAssetID":String asset_id1=request.getParameter("asset_id");
								  	 session.setAttribute("asset_id", asset_id1);
								  	 view=request.getRequestDispatcher("ViewAssetShifting.jsp");
									 view.forward(request, response);
								  	 
				case "logout":/*session.invalidate();
							  view=request.getRequestDispatcher("index.html");
							  view.include(request, response);*/
				default:break;
			}
		

		
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String function;
		String name=request.getParameter("name");
		String category=request.getParameter("category");
		function=(String)request.getParameter("func");

		HttpSession session=request.getSession();
		String actor=(String)session.getAttribute("actor");
		System.out.println(actor);
		session.setAttribute("function", function);
			AdminAction obj=(AdminAction)session.getAttribute("userObj");
			 RequestDispatcher view;
			switch(function)
			{
				case "create":String id=obj.create(name,category);							 
							  view=request.getRequestDispatcher("AdminCreate.jsp");
							  view.include(request, response);
							  if(id!=null)
							  {
								  out.println("<script>");
								  out.println("alert(\"Product "+id+" Created\");");
								  out.println("</script>");
							  }
							  else
							  {
								  out.println("<script>");
								  out.println("alert(\"error occured\");");
								  out.println("</script>");
							  }
							  break;
				case "ViewStatus":String asset_id=request.getParameter("id");
								  View obj1=new View();
								  String res=obj1.ViewStatus(asset_id);
								  view=request.getRequestDispatcher("index1.4.jsp");
								  view.include(request, response);
								  
								  
								  out.println("<script>");
								  out.println("alert(\"Status: "+res+"\");");
								  out.println("</script>");
								  break;
				case "ViewLocation":String asset=request.getParameter("id");
									View obj2=new View();
									  String res1=obj2.ViewLocation(asset);
									  view=request.getRequestDispatcher("index1.5.jsp");
									  view.include(request, response);
									  out.println("<script>");
									  out.println("alert(\"Location: "+res1+"\");");
									  out.println("</script>");
									  break;
				case "ViewAsset":String asset1=request.getParameter("id");
								 View obj3=new View();
								  String res2=obj3.ViewAsset(asset1);
								  view=request.getRequestDispatcher("index1.6.jsp");
								  view.include(request, response);
								  out.println("<script>");
								  out.println("alert(\"Asset: "+res2+"\");");
								  out.println("</script>");
								  break;
				case "ViewByAssetID":String asset_id1=request.getParameter("asset_id");
								  	 session.setAttribute("asset_id", asset_id1);
								  	 view=request.getRequestDispatcher("ViewAssetShifting.jsp");
									 view.forward(request, response);
				case "ViewByStaffID":String staff_id=request.getParameter("staff_id");
								  	 session.setAttribute("staff_id", staff_id);
								  	 view=request.getRequestDispatcher("ViewAssetShifting.jsp");
									 view.forward(request, response);
				case "ReportByAssetID":String asset_id2=request.getParameter("AssetId");
									  	 session.setAttribute("asset_id", asset_id2);
									  	 view=request.getRequestDispatcher("Report.jsp");
										 view.forward(request, response);				
				case "ReportByStaffID":String staff_id1=request.getParameter("StaffId");
									  	 session.setAttribute("staff_id", staff_id1);
									  	 view=request.getRequestDispatcher("Report.jsp");
										 view.forward(request, response);
				case "logout":/*session.invalidate();
							  view=request.getRequestDispatcher("index.html");
							  view.include(request, response);*/
				default:break;
			}
	}

}
