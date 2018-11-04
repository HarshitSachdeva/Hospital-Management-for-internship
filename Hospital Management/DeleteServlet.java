

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;


public class DeleteServlet extends HttpServlet {
    public void service(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException{
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();

        
        String name=req.getParameter("name");
        String mobileno=req.getParameter("mobileno");
        
       
        try{
            String s1="delete from patients where name='"+name+"' and mobileno='"+mobileno+"' ";
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","harshit","12345");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(s1);
           while(rs.next()) {
             res.sendRedirect("dashboard.jsp");
           }
            
        }
        catch(Exception e) {
        	out.println(e);
        }
        
    }

  
}
