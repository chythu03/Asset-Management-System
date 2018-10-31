<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="AdminCreate.css">
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
            <li><a href="Admin.jsp"><i class="fa fa-home" aria-hidden="true"></i>Home</a></li>
            <li><a href="AdminCreate.jsp"><i class="fa fa-plus" aria-hidden="true"></i> Create</a></li>
            <li><a href="#"><i class="fa fa-puzzle-piece" aria-hidden="true"></i> ADD</a>
            <ul class="sub1">
            <li><a href="#">Asset</a></li>
            <li><a href="#">Multiple assets</a></li>
            </ul>
            </li>
            <li><a href="#"><i class="fa fa-eye" aria-hidden="true"></i> View </a>
            <ul class="sub1">
            <li><a href="#">Status</a></li>
            <li><a href="#">Location</a></li>
            <li><a href="#">Asset</a></li>
            <li><a href="#">Shift</a><span class="rarrow">&#9654;</span>
            <ul class="sub2">
                <li><a href="#">Date</a></li>
                <li><a href="#">AssetId</a></li>
                <li><a href="#">StaffId</a></li>
                
                </ul>
                </li>
            
            </ul>
            </li>
            <li><a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Update</a>
            <ul class="sub1">
            <li><a href="#">Status</a></li>
            </ul>
            
            <li><a href="#"><i class="fa fa-flag" aria-hidden="true"></i> Report</a>
             <ul class="sub1">
                <li><a href="#">Date</a></li>
            <li><a href="#">AssetId</a></li>
                 <li><a href="#">StaffId</a></li>
                
       
            </ul>
            </li>
            <li><a href="#"><i class="fa fa-sign-out" aria-hidden="true"></i></a>
                <ul class="sub1">
                <li><a href="#">Logout</a></li>
                </ul>
            </li>
        
            </ul>
            <div class="box">             
			     <h2>Create Asset</h2>
				      <form action="Action" method="get">
					        <div class="inputBox">
					             <label>Name</label>
					             <input type="text" name="name"required>
					        </div>
					        <div class="inputBox">
					             <label>Category</label>
					        	 <input type="text" name="category"required>
					        </div>
				        	<input type="submit" class="btn btn-default" name="func" value="create">
				      </form>
             </div>
                
        </div>
        
     </div>
  </div>
        
</body>
</html>