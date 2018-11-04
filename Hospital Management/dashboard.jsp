
<!DOCTYPE html>
<html>
    <head>
        <title>Dashboard | Hospital Store</title>
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
        <div class="container" id="content">
            <div class="col-md-6 col-md-offset-3 settings">
            <table class="table table-responsive table-striped">
                <thead>
                    <tr>
                        <th>Serial Number</th>
                        <th style="text-align:left">Tasks</th>
                        <th></th>  
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Insert Detail of a Patient</td>
                        <td><a href="insert.jsp"><input type="submit" value="Click Here" class="btn btn-primary"></a></td>  
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Delete Detail of a Patient</td>
                        <td><a href="delete.jsp"><input type="submit" value="Click Here" class="btn btn-primary"></a></td>  
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>View Detail of a Patient</td>
                        <td><a href="view.jsp?page=1"><input type="submit" value="Click Here" class="btn btn-primary"></a></td>  
                    </tr>
                </tbody>

            
            </table>
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