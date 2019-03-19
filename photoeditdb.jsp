<%-- 
    Document   : photoeditdb
    Created on : 30 Jun, 2017, 2:04:28 PM
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
    String address=request.getParameter("page");
    String content=request.getParameter("name");
%>
<%
    String username="root";
    String password="root";
    String url="jdbc:mysql://localhost:3306/feastforum";
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection(url,username,password);
    System.out.println("Database connection for photogallerydb established successfully");
%>
<%!
    public boolean addinggallery(String page,String name )
    {
        try
        {
            ps=con.prepareStatement("insert into photo ( page , name ) values( ? , ? )");
            ps.setString(1, page);
            ps.setString(2, name);
            System.out.println("number is "+page);
            System.out.println("name is "+name);
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
            System.out.println("Exception while adding gallery "+e);
        }
      return true;  
    }
%>

<%
    val=addinggallery(address, content);
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