
<!DOCTYPE html>
<html>
    <head>
        <title>Login | Hospital Stores</title>
        <link rel="stylesheet" href="style.css" type="text/css">
        <link rel="icon" type="image/png" href="images/logo.png">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" >
        <script src="bootstrap/js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        
    </head>
    <body>
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
                        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>     
                    </ul>
                </div>
            </div>
        </nav>
        <div id="content">
            <div class="container">
                <div class="row row_style">
                    <div class="col-md-4 col-md-offset-4 login">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h4 class="text-default">LOGIN</h4>
                            </div>
                            <div class="panel-body">
                                <p class="text-default"><i>Login to access the details of the patient</i></p>
                                <form action="loginservlet" method="get">
                                    <div class="form-group">
                                        <input type="text" name="email" placeholder="Email" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="epass" placeholder="Password" class="form-control" required>
                                    </div>
                                    <input type="submit" value="Log In" class="btn btn-primary">
                                </form>

                            </div>
                            <div class="panel-footer">
                                <p>Don't have an account? <a href="signup.jsp">Register</a></p>
                            </div>

                        </div>
                    </div>
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