<%@page import="controller.StaffAction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="design3.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%
StaffAction obj=(StaffAction)session.getAttribute("userObj");
String name=obj.getName();
String position=obj.getActor();
int userId=obj.getId();
%>
<div class="homepage">
       <div class="menu">
           
            <div class="leftmenu">
            <h4>ASSET MANAGEMENT SYSTEM</h4>
            </div>
        <div class="rightmenu">
        
            
           
        
        <ul id="navmenu">
            <li><a href="Staff.jsp"><i class="fa fa-home" aria-hidden="true"></i>Home</a></li>
            <li><a href="#"><i class="fa fa-eye" aria-hidden="true"></i> View </a>
            <ul class="sub1">
            <li><a href="index1.4.jsp">Status</a></li>
            <li><a href="#">Location</a></li>
            
            </ul>
            </li>
            <li><a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Update</a>
            <ul class="sub1">
            <li><a href="#">Status</a></li>
                <li><a href="#">Location</a></li>
            </ul>
            </li>
            
            
            <li><a href="#"><i class="fa fa-sign-out" aria-hidden="true"></i></a>
                <ul class="sub1">
                <li><a href="Logout.jsp">LogOut</a></li>
                </ul>
            </li>
        
            </ul>
             </div>
        </div>
             <div class="container">
  <h2>Staff Details</h2>
             </div>
        
  <table class="table">
  
    <tbody>
      <tr>
        <td>Name</td>
        <td><%=name %></td>
        </tr>
        <tr>
            <td>User Id</td>
        <td><%=userId %></td>
        </tr>

        <tr>
        <td>Position</td>
          <td><%=position %><td>
        </tr>
    </tbody>
  </table>


        
        </div>
</body>
</html>