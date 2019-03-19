<%-- 
    Document   : usage
    Created on : 1 May, 2017, 3:43:58 PM
    Author     : user
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<!DOCTYPE html>
   <!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>FEAST-HOME</title>
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
</head>
    <div id="usagepage">
		<!--div id="header"-->
          <div style="margin: -200px 10px 10px 1000px;color: red;font-size: 24pt;float: right">
                <!--h2 style="text-indent: 290pt;color: white;">Date:</h2-->
                
                <%
                    Date dNow = new Date( );
                    SimpleDateFormat ft =
                    new SimpleDateFormat ("E dd/MM/yyyy");
                 %>
               
                 <%
                    out.print( "<p align=\"center\">" + ft.format(dNow) + "</p>");
                %>
              
                </div>           
			
		
                <br><br>
             <div id="body" class="home">   
                 
                 <img src="images/banner2.png" height="25%" style="margin: 0px 0px 0px 100px"/>
            <div class=" boxusage ">
              
                
                
                 <!--buttons-->    
                 <div class="blogusage" style="">
                     
                    
                     
                 <!div class="zoom_img">
                <ul>
                <!input type="submit" value="vision" name="vision" size="" />
                <!marquee behaviour="alternate" width="350" direction="up" border="0" scrollamount="5" onmouseover="this.stop()" onmouseout="this.start()">
              <div class="zoom_img"><br><br><br><br><br><br>
                <a href = "execute.jsp" ><img src="images/execute.png" style="color: blue;;width: 210px;height: 40px;"></a>                
                <a href="usage.jsp" ><img src="images/usage.png" style="width: 210px;height: 40px;"></a>
                <a href="download.jsp"><img src="images/download.png" style="width: 210px;height: 40px;"></a>
                <a href =login.jsp> <img src="images/logout.png" style="color: blue;;width: 210px;height: 40px;"></a>                               
                <!marquee>
                </div>
                </ul>
            </div>
                 <%
                    String userid=session.getAttribute("user").toString();
                    System.out.println("the user ID from session 1 is "+userid);
                    String username=session.getAttribute("nameofuser").toString();
                    System.out.println("the username from session 2 is "+username);
                 %>   
                 <br><br><br><br>
                  <p style="font-size: 30px;text-indent:450px; font-family: monospace;font-style: italic;color: white ">Usage status of <%=username%></p>  
                  <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/feast" user="root" password="root"/> 
                  <sql:query dataSource="${snapshot}" var="result"> SELECT * from usagestatus where userID = '<%=userid%>'; </sql:query> 
                    <table border="1" width="1150" alignment="left" style="margin:  10px 10px 250px 270px"> 
                  
                    
                        <tr style="font-size: 30px;font-family: monospace;font-style: italic;color: sandybrown">
                            <!th style="font-size: 30px;font-family: monospace;font-style: italic;color: sandybrown"><!th>
                        <th>UserName</th>
                        <th>Date</th>
                        <th>login time</th>
                        <th>logout time</th>
                        <th>total usage</th>
                        <th>Hit count</th>

                        </tr>
               
            
            <c:forEach var="row" items="${result.rows}"> 
            <tr>
            
                <td style="height: 50px;font-size: 14px;">                     
                         <tr style="font-size: 24px;text-indent:10pt;color: white;">
                             
                            <!td border = "1" style="font-size: 24px;text-indent:50pt;color: white">
                            <td><c:out value="${row.userID}"/></td>
                            <td><c:out value="${row.lldate}"/></td>
                            <td><c:out value="${row.llitime}"/></td>
                            <td><c:out value="${row.llotime}"/></td>
                            <td><c:out value="${row.totalusage}"/></td>
                            <td><c:out value="${row.hitcount}"/></td>


                            <!td> 
                         </tr>
                </td> 
         
            </tr>
            </c:forEach> 
        </table> 
        </div><!--box close-->
        
        
		</div><!--body close-->	
</div>
            <div style="color: white;text-indent: 350pt;background: gray;">
                    <p> Copyright &copy; 2017 BY Vikram Sarabhai Space Centre | ALL RIGHTS RESERVED</p>
            </div>
                
    
</html>
