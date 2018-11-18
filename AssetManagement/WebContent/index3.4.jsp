<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>View Status</title>
    
    <link rel="stylesheet" href="design3.4.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
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
            <li><a href="index3.4.jsp">Status</a></li>
            <li><a href="index3.1.jsp">Location</a></li>
            
            </ul>
            </li>
            <li><a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Update</a>
            <ul class="sub1">
             <li><a href="index3.2.jsp">Status</a></li>
                <li><a href="index3.3.jsp">Location</a></li>
            </ul>
            </li>
            
            
            <li><a href="Logout.jsp"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a></li>
                
            
        
            </ul>
             </div>
        </div>
              <div class="box">
                 <h2>View Status</h2>
      <form action="StaffActionServ" method="post">
        <div class="inputBox">
             <input type="text" name="asset_id"required>
            <label>Asset Id</label>
    </div>
           <div class="sub">
   <input type="submit" class="button" name="func" value="ViewStatus">

    </div>
                 </form>
          </div>
       
        
        </div>
</body>
</html>