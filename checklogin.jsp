<%-- 
    Document   : logincheck
    Created on : 21 Feb, 2017, 12:04:21 PM
    Author     : user
--%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.zip.ZipFile"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.zip.ZipEntry"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.net.Socket"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="com.sun.faces.facelets.util.Path"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=100%, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css.css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/style1.css" type="text/css">
<link rel="stylesheet" type="text/css" href="css/mobile.css">
<script src="js/mobile.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript">
    $(window).load(function() {
    $('#slider').nivoSlider();
    });
</script> 
<script type="text/javascript">
   <!--
   function msg()
   {
       alert("success");
       //document.write("login success");
   }
</script>
<title>FEAST</title>
</head>
<body>
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
        session.setAttribute("user", username);

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
 <p> 
     
 </p>
    
<c:choose>
    <c:when test="<%=val%>">        
        <script>

                    //window.alert("Login Success");
                    document.location.href = "loginsuccess.jsp";              

        </script>

    </c:when>
    <c:otherwise> 
        <script>
                          
                   document.location.href = "index.jsp";              
           
        </script>
    </c:otherwise>
</c:choose>
</body>
</html>

