<%-- 
    Document   : technologyeditdb
    Created on : 29 Jun, 2017, 11:59:03 AM
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
    String partners=request.getParameter("partners");
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
    public boolean addingpartner(String number,String partner )
    {
        try
        {
            ps=con.prepareStatement("insert into partners ( num , name ) values( ? , ? )");
            ps.setString(1, number);
            ps.setString(2, partner);
            System.out.println("number is "+number);
            System.out.println("name is "+partner);
            if(ps.executeUpdate()==1)
            {
               System.out.println("Marketing Partners added successfully");
            }
            else
            {
                System.out.println("Marketing Partners can't added");
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
    val=addingpartner(number, partners);
    System.out.println("value returned "+val);
%> 
<c:choose>
    <c:when test="<%=val%>">
        <script>
            window.alert("Marketing partners added successfully");
           document.location.href="adminloginsuccess.jsp";
        </script>
    </c:when>
    <c:otherwise>
        <script>
            window.alert("Error adding Marketing partners");
            document.location.href="adminloginsuccess.jsp";
        </script>
    </c:otherwise>
</c:choose>