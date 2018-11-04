<%@ page import="java.util.*,com.harshit.dao.*,com.harshit.beans.*" %>  

<html>
<head>
        <title>Insert | Hospital Store</title>
        <link rel="stylesheet" href="style.css" type="text/css">
        <link rel="icon" type="image/png" href="images/logo.png">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" >
        <script src="bootstrap/js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        
    </head>

    <body>
     <%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        if(session.getAttribute("email")==null) {
        response.sendRedirect("login.jsp");
        }
    %>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">Hospital Store</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <%if(session.getAttribute("email")==null) { %>
                            <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                         <% } else { %>
                                <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                         <% } %>    
                    </ul>
                </div>
            </div>
        </nav>

		<%  
		String spageid=request.getParameter("page");  
		int pageid=Integer.parseInt(spageid);  
		int total=5;  
		if(pageid==1){}  
		else{  
		    pageid=pageid-1;  
		    pageid=pageid*total+1;  
		}  
		try {
		//out.println("ddaadd:: " + pageid + ":::::" + total);
		List<Patient> list=PatientDao.getRecords(pageid,total);  
		  
		  //out.println("size::: " + list.size());
		out.print("<h1 id='pages'>Page No: "+spageid+"</h1>"); 
		out.println("<div id='length'>"); 
		out.print("<table border='1' cellpadding='4' width='70%' height='100px' align='center' id='page'>");  
		out.print("<tr><th>Name</th><th>MobileNo</th><th>City</th><th>Address</th></tr>");  
		for(Patient patient:list){  
		    out.print("<tr><td>"+patient.getName()+"</td><td>"+patient.getMobileNo()+"</td><td>"+patient.getCity()+"</td><td>" + patient.getAddress() + "</td></tr>");  
		}  
		out.print("</table>");  
		out.println("<div id='viewpageno'>");
		out.println("<a href='view.jsp?page=1'>1</a>");
		out.println("<a href='view.jsp?page=2'>2</a>");
		out.println("<a href='view.jsp?page=3'>3</a>");
		out.println("</div>");
		out.println("</div>");
		} catch (Exception e) {
			out.println(e.getLocalizedMessage());
		}
		%>  
		
		<footer>
	            <div class="container">
	                <center>
	                    <p>Copyright &copy; Hospital Store. All Rights Reserved  |  Contact Us: +91 90000 00000</p> 
	                </center>
	            </div>
	    </footer>


</html>