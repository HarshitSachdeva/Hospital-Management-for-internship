package com.harshit.dao;

import com.harshit.beans.*;  
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  

public class PatientDao {  
  
    public static Connection getConnection(){  
        Connection con=null;  
        try{  
            Class.forName("oracle.jdbc.driver.OracleDriver");  
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","harshit","12345");  
        }catch(Exception e){System.out.println(e);}  
        return con;  
    }  
  
    public static List<Patient> getRecords(int start,int total) throws Exception {  
        List<Patient> list=new ArrayList<>();  
        try{  
            Connection con=getConnection();  
            // PreparedStatement ps=con.prepareStatement("select * from patients limit "+(start-1)+","+total);
            // PreparedStatement ps=con.prepareStatement("select * from patients");
            PreparedStatement ps=con.prepareStatement("select name, mobileno, city, address from (SELECT p.*, row_number() over (ORDER BY name) r from patients p ) where r >= " + start + " AND r <= " + (start + total - 1));  
            ResultSet rs=ps.executeQuery();
            // out.println(rs.get)  
            while(rs.next()){  
                // out.println("aaa");
                Patient patient = new Patient();  
                patient.setName(rs.getString(1));  
                patient.setMobileNo(rs.getString(2));  
                patient.setCity(rs.getString(3));
                patient.setAddress(rs.getString(4));  
                list.add(patient);  
            }  
            con.close();  
        }catch(Exception e){
            // out.println(e.getLocalizedMessage());
                System.out.println(e);}  
        return list;  
    }  
}  