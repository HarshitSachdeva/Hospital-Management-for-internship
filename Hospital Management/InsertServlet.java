

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;


public class InsertServlet extends HttpServlet {

    public void service(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException{
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();

        
        String name=req.getParameter("name");
        String mobileno=req.getParameter("mobileno");
        String city=req.getParameter("city");
        String add=req.getParameter("add");
        
       
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","harshit","12345");
            PreparedStatement ps=con.prepareStatement("insert into patients values(?,?,?,?)");
            ps.setString(1,name);
            ps.setString(2,mobileno);
            ps.setString(3,city);
            ps.setString(4,add);
            int c=ps.executeUpdate();
            if(c>0){
             res.sendRedirect("dashboard.jsp");
            } 
        }
        catch(Exception e) {
        	out.println(e);
        }
        
    }

  
}
