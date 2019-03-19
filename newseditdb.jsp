<%-- 
    Document   : newseditdb
    Created on : 29 Jun, 2017, 9:42:55 AM
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
    String news=request.getParameter("news");
%>
<%
    String username="root";
    String password="root";
    String url="jdbc:mysql://localhost:3306/feastforum";
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection(url,username,password);
    System.out.println("Database connection for newsdb established successfully");
%>
<%!
    public boolean addingnews(String news)
    {
        try
        {
            ps=con.prepareStatement("insert into newstable (news) values(?)");
            ps.setString(1, news);
            System.out.println("new news is "+news);
            if(ps.executeUpdate()==1)
            {
               System.out.println("News added successfully");
            }
            else
            {
                System.out.println("news can't added");
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
    val=addingnews(news);
    System.out.println("valu returned "+val);
%> 
<c:choose>
    <c:when test="<%=val%>">
        <script>
            window.alert("NEWS added successfully");
           document.location.href="adminloginsuccess.jsp";
        </script>
    </c:when>
    <c:otherwise>
        <script>
            window.alert("Error adding news");
            document.location.href="adminloginsuccess.jsp";
        </script>
    </c:otherwise>
</c:choose>