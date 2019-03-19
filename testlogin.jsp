<%-- 
    Document   : testlogin
    Created on : 20 Jun, 2017, 4:33:35 PM
    Author     : user
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   
        
        
        <%!

        boolean val;
        String name;
        PreparedStatement ps;
        ResultSet rs;
        java.sql.Connection con;
        static String status;
%>
<%
        String url="jdbc:mysql://localhost:3306/feast";
        String username1="root";
        String password1="root";
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection(url,username1,password1);
        System.out.println("Database connection established");
%>
<%
        String username=request.getParameter("username");
        String password=request.getParameter("password");      
        System.out.println("username "+username);
        System.out.println("Password "+password);

%>
<%!
  boolean checklogin(String username,String password)
  {
      try
      {
        ps=con.prepareStatement("select * from users where userID=? and password=?");
        ps.setString(1,username);
        ps.setString(2,password);
        rs=ps.executeQuery();
        if(rs.next())
        {
         System.out.println("username and password are matching");
         return true;
        }
        else
        {
         System.out.println("username and password are not matching");
         return false;
        }
     }
     catch(Exception e)
     {
        System.out.println(e);
       return false;
     }
      
      
  }

  %>
 
    <%
        
        val=checklogin(username,password);
        System.out.println("values returned "+val);
  
    %>  
        
        <p> username is : <%=username%>  
    </p>
</html>
