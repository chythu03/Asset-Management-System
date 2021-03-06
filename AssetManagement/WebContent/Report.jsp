
<%@page import="controller.GenerateReport"%>
<%@page import="java.sql.*"%>
<%@page import="javax.naming.*" %>
<%@page import="javax.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<style>
*{
    margin: 0px;
    padding: 0px;
}
body{
    

    font-family: sans-serif;
    
    padding: 0px;
}
table {
    border-collapse: collapse;
    
}

td {
    text-align: center;
    padding: 10px;
    line-height: 5px;
    
    font-weight: bolder;
    font-family: sans-serif;
}

</style>
<body>

<button onclick="myFunction()">Print this page</button>

<script>
function myFunction() {
    window.print();
}
</script>


<%
Context ctx;
DataSource ds;
Connection con;
Statement stmt;
ResultSet rs;



String function=(String)session.getAttribute("function");
try {
/* 		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/asset";
		String user="root";
		String pass="lokesh1999";
		Connection con=(Connection) DriverManager.getConnection(url,user,pass); */
		ctx=new InitialContext();
		ds=(DataSource)ctx.lookup("java:comp/env/jdbc/asset");
		con=ds.getConnection();
		con.setAutoCommit(false);
		if(function.equalsIgnoreCase("ReportByAssetId"))
		{
			String sql1="Select tolocation,toroom,time from location where asset_id=?";
			String asset_id=(String)session.getAttribute("asset_id");
			System.out.println(asset_id);
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql1);
			ps.setString(1,asset_id);
			rs=ps.executeQuery();
			out.println("<h1>Report of "+asset_id+"</h1>");
			out.println("<h3>Shifting</h3>");
			out.println("<table class=\"table\">");
			out.println(" <tbody>");
			
			out.println("<tr>");
			out.println("<td>Location</td>");
			out.println("<td>Room</td>");
			out.println("<td>Time</td>");
			out.println("</tr>");

			
			while(rs.next())
			{
				out.println("<tr>");
				
				out.println("<td>"+rs.getString(1)+"</td>");
				out.println("<td>"+rs.getString(2)+"</td>");
				out.println("<td>"+rs.getString(3)+"</td>");
				out.println("</tr>");
				//out.println("<h5>"+rs.getString(1)+" - "+rs.getString(2)+" - "+rs.getString(3)+"</h5>");
				//out.println("\n");
			}
			out.println("</tbody></table>");
			out.println("<table class=\"table1\">");
			out.println(" <tbody>");
			
			out.println("<tr>");
			out.println("<td>Status</td>");
			out.println("<td>Time</td>");
			out.println("</tr>");
			sql1="Select status,time from status where asset_id=?";
			ps=(PreparedStatement) con.prepareStatement(sql1);
			ps.setString(1,asset_id);
			rs=ps.executeQuery();
			out.println("<h3>Status</h3>");
			
			while(rs.next()){
				//out.println("<h5>"+rs.getString(1)+" - "+rs.getString(2)+"</h5>");
				out.println("<tr>");
				
				out.println("<td>"+rs.getString(1)+"</td>");
				out.println("<td>"+rs.getString(2)+"</td>");
				out.println("<td>"+rs.getString(3)+"</td>");
				out.println("</tr>");
			}
			out.println("</tbody></table>");

			
	
		}
		if(function.equalsIgnoreCase("ReportByStaffId"))
		{
			String sql1="Select asset_id,tolocation,toroom,time from location where UserId=?";
			String staff_id=(String)session.getAttribute("staff_id");
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql1);
			ps.setString(1,staff_id);
			rs=ps.executeQuery();
			/*out.println("<table class=\"table\">");
			out.println(" <tbody>");*/
			out.println("<h1>Report of "+staff_id+"</h1>");
			out.println("<h3>Shifting</h3>");
			out.println("<table class=\"table\">");
			out.println(" <tbody>");
			
			out.println("<tr>");
			out.println("<td>AssetId</td>");

			out.println("<td>Location</td>");
			out.println("<td>Room</td>");
			out.println("<td>Time</td>");
			out.println("</tr>");
			while(rs.next())
			{
				//out.println("<h5>"+rs.getString(1)+" - "+rs.getString(2)+" - "+rs.getString(3)+" - "+rs.getString(4)+"</h5>");
				out.println("<tr>");
				
				out.println("<td>"+rs.getString(1)+"</td>");
				out.println("<td>"+rs.getString(2)+"</td>");
				out.println("<td>"+rs.getString(3)+"</td>");
				out.println("<td>"+rs.getString(4)+"</td>");

				out.println("</tr>");
				
			}
			out.println("</tbody></table>");
			out.println("<table class=\"table1\">");
			out.println(" <tbody>");
			
			out.println("<tr>");
			out.println("<td>AssetID</td>");
			out.println("<td>Status</td>");
			out.println("<td>Time</td>");
			out.println("</tr>");
			sql1="Select asset_id,status,time from status where UserId=?";
			ps=(PreparedStatement) con.prepareStatement(sql1);
			ps.setString(1,staff_id);
			rs=ps.executeQuery();
			out.println("<h3>Status</h3>");
			while(rs.next()){
				//out.println("<h5>"+rs.getString(1)+" - "+rs.getString(2)+" - "+rs.getString(3)+"</h5>");
				out.println("<tr>");
				
				out.println("<td>"+rs.getString(1)+"</td>");
				out.println("<td>"+rs.getString(2)+"</td>");
				out.println("<td>"+rs.getString(3)+"</td>");

				out.println("</tr>");
			}
			out.println("</tbody></table>");
		}
		if(function.equalsIgnoreCase("ReportByDate"))
		{
			String sql1="Select asset_id,tolocation,toRoom,time,userid from location where time>=? and time<=?";
			String staff_id=(String)session.getAttribute("staff_id");
			String frdt=(String)session.getAttribute("FrDt");
			String todt=(String)session.getAttribute("ToDt");
			
			frdt=frdt+" 00:00:00";
			
					
			todt=todt+" 24:59:59";
			out.println("<table class=\"table\">");
			out.println(" <tbody>");
			
			out.println("<tr>");
			out.println("<td>AssetId</td>");

			out.println("<td>Location</td>");
			out.println("<td>Room</td>");
			out.println("<td>Time</td>");
			out.println("<td>UserID</td>");
			out.println("</tr>");
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql1);
			ps.setString(1,frdt);
			ps.setString(2,todt);
			rs=ps.executeQuery();
			/*out.println("<table class=\"table\">");
			out.println(" <tbody>");*/
			out.println("<h1>Report from "+frdt+" to "+todt+"</h1>");
			out.println("<h3>Shifting</h3>");
			while(rs.next())
			{
				//out.println("<h5>"+rs.getString(1)+" - "+rs.getString(2)+" - "+rs.getString(3)+" - "+rs.getString(4)+" - "+rs.getString(5)+"</h5>");
				out.println("<tr>");
				
				out.println("<td>"+rs.getString(1)+"</td>");
				out.println("<td>"+rs.getString(2)+"</td>");
				out.println("<td>"+rs.getString(3)+"</td>");
				out.println("<td>"+rs.getString(4)+"</td>");
				out.println("<td>"+rs.getString(5)+"</td>");
				out.println("</tr>");
			}
			out.println("</tbody></table>");
			sql1="Select asset_id,status,time,userid from status where time>=? and time<=?";
			ps=(PreparedStatement) con.prepareStatement(sql1);
			ps.setString(1,frdt);
			ps.setString(2,todt);
			rs=ps.executeQuery();
			out.println("<table class=\"table1\">");
			out.println(" <tbody>");
			
			out.println("<tr>");
			out.println("<td>AssetId</td>");

			out.println("<td>Status</td>");
			out.println("<td>Time</td>");
			out.println("<td>UserId</td>");
			out.println("</tr>");
			out.println("<h3>Status</h3>");
			while(rs.next()){
				//out.println("<h5>"+rs.getString(1)+" - "+rs.getString(2)+" - "+rs.getString(3)+" - "+rs.getString(4)+"</h5>");
				out.println("<tr>");
				
				out.println("<td>"+rs.getString(1)+"</td>");
				out.println("<td>"+rs.getString(2)+"</td>");
				out.println("<td>"+rs.getString(3)+"</td>");
				out.println("<td>"+rs.getString(4)+"</td>");
				out.println("</tr>");
			}
			out.println("</tbody></table>");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>