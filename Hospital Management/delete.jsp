<!DOCTYPE html>
<html>
    <head>
        <title>Delete | Hospital Management</title>
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
                    <a class="navbar-brand" href="index.jsp">Hospital Management</a>
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
        <div class="container decor_bg" id="content">
            <div class="row">
                <div class="col-lg-offset-4 col-lg-4 col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 signupform">
                    <h2>Delete Details of the Patient</h2>
                    <form action="deleteservlet" method="post">
                        <input type="text" name="name" class="form-group form-control" placeholder="Name" required>
                        <input type="text" name="mobileno" class="form-group form-control" placeholder="Mobile No" required>
                        <input type="submit" value="Delete" class="form-control btn btn-block btn-primary input-lg">
                    </form>  
                </div>
            </div>
        </div>
            
         <footer>
            <div class="container">
                <center>
                    <p>Copyright &copy; Hospital Store. All Rights Reserved  |  Contact Us: +91 90000 00000</p> 
                </center>
            </div>
        </footer>
    </body>
</html>