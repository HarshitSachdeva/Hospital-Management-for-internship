

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;


public class LoginServlet extends HttpServlet {
    public void service(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException{
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        
        String email=req.getParameter("email");
        String password=req.getParameter("epass");
        String temp = req.getParameter("attemptCount");
        int attemptCount = (temp != null) ? Integer.parseInt(temp) : 0;
        
        	if(email.equals("harshsachdeva80@gmail.com") && password.equals("harshit")) {
                HttpSession session=req.getSession();
                session.setAttribute("email",email);
        		res.sendRedirect("dashboard.jsp");
        	}   
        	else{
        		res.sendRedirect("login.jsp");
        	}
       
        
    }

  
}
