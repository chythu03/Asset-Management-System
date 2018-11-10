<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String function=(String)session.getAttribute("function");
try {
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/asset";
		String user="root";
		String pass="lokesh1999";
		Connection con=(Connection) DriverManager.getConnection(url,user,pass);
		if(function.equalsIgnoreCase("ReportByDate"))
		{
			
		}
		if(function.equalsIgnoreCase("ReportByAssetId"))
		{
			String sql1="Select tolocation,toroom,time from location where asset_id=?";
			String asset_id=(String)session.getAttribute("asset_id");
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql1);
			ps.setString(1,asset_id);
			ResultSet rs=ps.executeQuery();
			/*out.println("<table class=\"table\">");
			out.println(" <tbody>");*/
			out.println("<h1>Report of "+asset_id+"</h1>");
			out.println("<h3>Shifting</h3>");
			while(rs.next())
				out.println(rs.getString(1)+" - "+rs.getString(2)+" - "+rs.getString(3));
			
			sql1="Select status,time from status where asset_id=?";
			ps=(PreparedStatement) con.prepareStatement(sql1);
			ps.setString(1,asset_id);
			rs=ps.executeQuery();
			out.println("<h3>Status</h3>");
			while(rs.next())
				out.println(rs.getString(1)+" - "+rs.getString(2));
			
		}
		if(function.equalsIgnoreCase("ReportByStaffId"))
		{
			String sql1="Select tolocation,toroom,time from location where UserId=?";
			String staff_id=(String)session.getAttribute("staff_id");
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql1);
			ps.setString(1,staff_id);
			ResultSet rs=ps.executeQuery();
			/*out.println("<table class=\"table\">");
			out.println(" <tbody>");*/
			out.println("<h1>Report of "+staff_id+"</h1>");
			out.println("<h3>Shifting</h3>");
			while(rs.next())
				out.println(rs.getString(1)+" - "+rs.getString(2)+" - "+rs.getString(3));
			
			sql1="Select status,time from status where UserId=?";
			ps=(PreparedStatement) con.prepareStatement(sql1);
			ps.setString(1,staff_id);
			rs=ps.executeQuery();
			out.println("<h3>Status</h3>");
			while(rs.next())
				out.println(rs.getString(1)+" - "+rs.getString(2));
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>