<%-- 
    Document   : notice
    Created on : 28 Jun, 2017, 3:03:52 PM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%!
    boolean val;
    String name;
    PreparedStatement ps;
    ResultSet rs;
    java.sql.Connection con;  
%>
<%
    String not=request.getParameter("notice");
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
     public boolean addingnotice(String content)
    {
     try
     {
         ps=con.prepareStatement("insert into noticeboard(content)values(?)");
         System.out.println("the image url is "+content);
         ps.setString(1,content);
         if(ps.executeUpdate()==1)
         {
             System.out.println("Notice board content added successfully");
         }
         else
         {
             System.out.println("Notice board content adding failed");
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
    val=addingnotice(not);
    System.out.println("the value returned is "+val);
%>
<c:choose>
    <c:when test="<%=val%>">
         <script>

                    window.alert("Notice added succesfully");
                    document.location.href = "adminloginsuccess.jsp";              

        </script> 
    </c:when>
    <c:otherwise>
          <script>

                    window.alert("Notice adding Failed");
                    document.location.href = "adminloginsuccess.jsp";              

        </script> 
    </c:otherwise>
</c:choose>
