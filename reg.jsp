<%-- 
    Document   : reg
    Created on : 8 Mar, 2017, 2:10:42 PM
    Author     : user
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
 <%!
  boolean val;
  boolean flag;
  PreparedStatement pst;
  ResultSet rs;
  java.sql.Connection con;
%>
<%
            String url="jdbc:mysql://localhost:3306/feastforum";
	    String username1="root";
	    String password1="root";
	    Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection(url,username1,password1);
	    System.out.println("Database connection established");
%>
  <%
            String name=request.getParameter("name");
            String id=request.getParameter("ID");
            String email=request.getParameter("email");
            String gender=request.getParameter("gender");
            String address=request.getParameter("address");
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            String cnfpwd=request.getParameter("Cnfpassword");
            System.out.println("Name "+name);
            System.out.println("employee Id "+id);
            System.out.println("email "+email);
            System.out.println("gender "+gender);
            System.out.println("address "+address);
            System.out.println("username "+username);
            System.out.println("Password "+password);
            System.out.println("Cnfpassword "+cnfpwd);
  
  %>
  <%!
    public  boolean registration(String name,String id,String email,String gender,String address,String username,String password)
		        {
		    	   try
		    	   {
		    		pst=con.prepareStatement("insert into registration(name,id,email,gender,address,username,password)values ( ? , ?, ?, ?, ?, ? ,?) ");
                                System.out.println("name "+ name);
                                System.out.println("Employee ID "+ id);
                                System.out.println("Email ID " +email);
                                System.out.println("Gender "+gender);
                                System.out.println("Address "+address);
                                System.out.println("username"+username);
                                System.out.println("password"+password);
                                pst.setString(1, name);
                                pst.setString(2, id);
                                pst.setString(3, email);
                                pst.setString(4,gender );
                                pst.setString(5,address);
                                pst.setString(6,username );
                                pst.setString(7,password);
                                if(pst.executeUpdate()==1)
                                {
                                        System.out.println("new Registration success");
                                }
                            else
                                {
                                        System.out.println("not Success");
                                }
		    	   }
		    	   catch(Exception e)
		    	   {
		    		System.out.println(e);   
		    	   }
		    	      
		    	   return true;
		    	   }
  %>
  <%
             val=registration(name,id,email,gender,address,username,password);
             System.out.println("values returned "+val);
   %>
       <c:choose>
    <c:when test="<%=val%>">        
        <script>
            function regPost() 
            {
                    window.alert("Registration Success");
                    document.location.href = "login.jsp";              
            }
            regPost();
        </script>
        
    </c:when>
    <c:otherwise> 
     <script>
            function regPost() 
            {
                window.alert("Error");
                document.location.href = "login.jsp";
            }
            regPost();
        </script>
    </c:otherwise>
</c:choose>
 </body>
</html>