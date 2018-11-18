<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Report By Date</title>
    
    <link rel="stylesheet" href="design1.12.css">
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
			<li><a href="index1.2.jsp">Asset</a></li>
            <li><a href="index1.3.jsp">Multiple assets</a></li>
            </ul>
            </li>
            <li><a href="#"><i class="fa fa-eye" aria-hidden="true"></i> View </a>
            <ul class="sub1">
             <li><a href="index1.4.jsp">Status</a></li>
            <li><a href="index1.5.jsp">Location</a></li>
            <li><a href="index1.6.jsp">Asset</a></li>
            <li><a href="#">Shift</a><span class="rarrow">&#9654;</span>
            <ul class="sub2">
                <li><a href="index1.7.jsp">Date</a></li>
                <li><a href="index1.8.jsp">AssetId</a></li>
                 <li><a href="index1.9.jsp">StaffId</a></li>
                
                </ul>
                </li>
            
            </ul>
            </li>
            <li><a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Update</a>
            <ul class="sub1">
            <li><a href="index1.10.jsp">Status</a></li>
                 <li><a href="index1.11.jsp">Location</a></li>
            </ul>
            
            <li><a href="#"><i class="fa fa-flag" aria-hidden="true"></i> Report</a>
             <ul class="sub1">
                <li><a href="index1.12.jsp">Date</a></li>
            <li><a href="index1.13.jsp">AssetId</a></li>
                 <li><a href="index1.14.jsp">StaffId</a></li>
                
       
            </ul>
            </li>
            <li><a href="Logout.jsp"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a>
                
            </li>
        
            </ul>
             </div>
        </div>
             <div class="box">
                 <h2>Report by date</h2>
             <form action="Action" method="post" target="_blank">
                 <div class="boxx">
	<label for="FrDt">From Date</label>
            
	 <input name="FrDt" type="date" min="2009-01" max="2109-01"/>
                 </div>
	 
	 <div class="box1">
	 <label for="ToDt">To Date</label>
	 <input name="ToDt" type="date" min=FrDt max="2109-01"/>
                 </div>

	 
	 <div class="sub">
   <input type="submit" class="button" name="func" value="ReportByDate">

    </div>

</form> 
             </div>
        </div>
</body>
</html>