<html>
    <head>
        <title>Logout| Hiospital Management</title>
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
    <%
	session.removeAttribute("email");
	session.invalidate();
    %>
    <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">Hospital Management</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>     
                    </ul>
                </div>
            </div>
        </nav>
    <div class="container-fluid" id="content">
            <div class="col-md-12 con">
                <div class="jumbotron" style="background-color:#D3D3D3">
                    <center>
                        <%
                        out.println("<h1>You have successfully logged out</h1>");
                        out.println("<h2>Click here to Login again</h2>");
                        out.println("<a href='login.jsp'>Login</a>");
                        response.setHeader("Refresh","20;login.jsp");     
                        %>
                    </center>
                </div>
            </div>
            
        </div>
        <footer>
            <div class="container">
                <center>
                    <p>Copyright &copy; Lifestyle Store. All Rights Reserved  |  Contact Us: +91 90000 00000</p>    
                </center>
            </div>
        </footer>
       
    </body>
    </html>   
    

  

