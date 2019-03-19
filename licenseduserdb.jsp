<%-- 
    Document   : licenseduserdb
    Created on : 29 Jun, 2017, 2:17:13 PM
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
    String name=request.getParameter("name");
    String version=request.getParameter("version");
    String type=request.getParameter("type");
    String license=request.getParameter("license");
%>
<%
    String username="root";
    String password="root";
    String url="jdbc:mysql://localhost:3306/feastforum";
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection(url,username,password);
    System.out.println("Database connection for licensedusersdb established successfully");
%>
<%!
    public boolean addingpartner(String number,String name,String ver,String type,String lic )
    {
        try
        {
            ps=con.prepareStatement("insert into licensedusers ( num , username , version , type , totallicense ) values( ? , ? , ? , ? , ?)");
            ps.setString(1, number);
            ps.setString(2, name);
            ps.setString(3, ver);
            ps.setString(4, type);
            ps.setString(5, lic);
            System.out.println("number is "+number);
            System.out.println("name is "+name);
            System.out.println("version is "+ver);
            System.out.println("type is "+type);
            System.out.println("number of license is "+lic);

            if(ps.executeUpdate()==1)
            {
               System.out.println("Licensed users added successfully");
            }
            else
            {
                System.out.println("Licensed users can't added");
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
    val=addingpartner(number, name,version,type,license);
    System.out.println("value returned "+val);
%> 
<c:choose>
    <c:when test="<%=val%>">
        <script>
            window.alert("licensed users added successfully");
           document.location.href="adminloginsuccess.jsp";
        </script>
    </c:when>
    <c:otherwise>
        <script>
            window.alert("Error adding licensed users");
            document.location.href="adminloginsuccess.jsp";
        </script>
    </c:otherwise>
</c:choose>