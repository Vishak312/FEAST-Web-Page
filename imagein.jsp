<%-- 
    Document   : imagein
    Created on : 27 Jun, 2017, 4:48:21 PM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%!
    boolean val;
    PreparedStatement ps;
    ResultSet rs;
    java.sql.Connection con;  
%>
<%
    String location=request.getParameter("image");
%>
<%
    String url="jdbc:mysql://localhost:3306/feastforum";
    String username="root";
    String password="root";
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection(url,username,password);
    System.out.println("database connection estblished for adding image");  
%>
<%!
     public boolean addingimage(String url)
    {
     try
     {
         ps=con.prepareStatement("insert into bannerimages(location)values(?)");
         System.out.println("the image url is "+url);
         ps.setString(1,url);
         if(ps.executeUpdate()==1)
         {
             System.out.println("banner image added successfully");
         }
         else
         {
             System.out.println("banner image adding failed");
         }
     }
     catch(Exception e)
     {
         System.out.println("Exception "+e);
     }
     return true;
    }
%>
<%
    val=addingimage(location);
    System.out.println("the value returned is "+val);
%>
<c:choose>
    <c:when test="<%=val%>">
         <script>

                    window.alert("Image added succesfully");
                    document.location.href = "adminloginsuccess.jsp";              

        </script> 
    </c:when>
    <c:otherwise>
          <script>

                    window.alert("Image adding Failed");
                    document.location.href = "adminloginsuccess.jsp";              

        </script> 
    </c:otherwise>
</c:choose>
