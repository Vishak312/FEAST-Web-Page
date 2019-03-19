<%-- 
    Document   : collaborationeditdb
    Created on : 29 Jun, 2017, 2:36:58 PM
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
    String collab=request.getParameter("collab");
%>
<%
    String username="root";
    String password="root";
    String url="jdbc:mysql://localhost:3306/feastforum";
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection(url,username,password);
    System.out.println("Database connection for collaborationdb established successfully");
%>
<%!
    public boolean addingpartner(String number,String coll )
    {
        try
        {
            ps=con.prepareStatement("insert into collaboration ( num , name ) values( ? , ? )");
            ps.setString(1, number);
            ps.setString(2, coll);
            System.out.println("number is "+number);
            System.out.println("name is "+coll);
            if(ps.executeUpdate()==1)
            {
               System.out.println("success");
            }
            else
            {
                System.out.println(" can't add");
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
    val=addingpartner(number, collab);
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
            window.alert("Error adding");
            document.location.href="adminloginsuccess.jsp";
        </script>
    </c:otherwise>
</c:choose>