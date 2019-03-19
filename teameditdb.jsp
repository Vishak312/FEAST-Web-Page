<%-- 
    Document   : teameditdb
    Created on : 30 Jun, 2017, 9:53:40 AM
    Author     : user
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%!
    PreparedStatement ps;
    ResultSet rs;
    boolean val;
    java.sql.Connection con;  
    
%>
<%
    String number=request.getParameter("No");
    String location=request.getParameter("loc");
    String description=request.getParameter("desc");

%>
<%
    String username="root";
    String password="root";
    String url="jdbc:mysql://localhost:3306/feastforum";
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection(url,username,password);
    System.out.println("Database connection for partnersdb established successfully");
%>
<%!
    public boolean addingfeastteam(String number,String locat,String desc)
    {
        try
        {
            ps=con.prepareStatement("insert into feastteam ( num , location,desg ) values( ? , ? , ? )");
            ps.setString(1, number);
            ps.setString(2, locat);
            ps.setString(3, desc);
            System.out.println("number is "+number);
            System.out.println("The location is "+locat);
            System.out.println("The description is "+desc);

            if(ps.executeUpdate()==1)
            {
               System.out.println("FEAST team added successfully");
            }
            else
            {
                System.out.println("FEAST team can't added");
            }
        }
        catch(Exception e)
        {
            System.out.println("Exception while adding news "+e);
        }
      return true;  
    }
%>

<%
    val=addingfeastteam(number, location,description);
    System.out.println("value returned "+val);
%> 
<c:choose>
    <c:when test="<%=val%>">
        <script>
            window.alert("success");
           document.location.href="adminloginsuccess.jsp";
        </script>
    </c:when>
    <c:otherwise>
        <script>
            window.alert("Error");
            document.location.href="adminloginsuccess.jsp";
        </script>
    </c:otherwise>
</c:choose>