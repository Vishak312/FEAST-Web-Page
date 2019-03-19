<%-- 
    Document   : contact
    Created on : 28 Feb, 2017, 10:34:32 AM
    Author     : user
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<!doctype html>

<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>contact -FEAST</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/mobile.css">
	<script src="js/mobile.js" type="text/javascript"></script>
</head>
<body>
	<div id="page">
		<div id="header">
			<div>
                           
				<!--a href="index.html" class="logo"><img src="images/logo.gif" alt=""></a-->
				<ul id="navigation">
					<li>
						<a href="index.jsp">Home</a>
					</li>
					<li>
						<a href="about.jsp">About</a>
					</li>					
					<li class="menu selected">
						<a href="contact.jsp">Contact</a>						
					</li>
                                        
                                        <li>
						<a href="comments.jsp">Comments</a>						
					</li>
                                        
					<li>
						<a href="login.jsp">Login</a>
					</li>
				</ul>
			</div>
		</div>
            
            <div style="margin: -80px 10px 10px 1500px;">
                <!--h2 style="text-indent: 290pt;color: white;">Date:</h2-->
                
                <%
                    Date dNow = new Date( );
                    SimpleDateFormat ft =
                    new SimpleDateFormat ("E dd/MM/yyyy");
                 %>
                 <div style="color: white;font-size: 20px">
                 <%
                    out.print( "<p align=\"center\">" + ft.format(dNow) + "</p>");
                %>
                </div>
                </div>
            
            
             
		<!--div id="body"-->
                    <!--div id="contact" style=""!-->
                    <br><br><br><br>

            <div id="body" class="home">   
                
                <img src="images/banner2.png"  style="margin: 0px 0px 0px 100px"/>
    
                 <div class="boxcontact">
              
                      <!--buttons-->    
              <!--buttons-->    
             <div class="blogcontact" style="">
                 <!div class="zoom_img">
                    <ul>
                <!input type="submit" value="vision" name="vision" size="" />
                <!marquee behaviour="alternate" width="350" direction="up" border="0" scrollamount="5" onmouseover="this.stop()" onmouseout="this.start()">
              
                        <div class="zoom_img">
                            <a href =vision.jsp> <img src="images/visionlist.png" style="color: blue;;width: 210px;height: 40px;margin: 50PX 0PX 0PX 0PX"></a>                
                            <a href="history.jsp"><img src="images/history.png" style="width: 210px;height: 40px;margin: 10PX 0PX 0PX 0PX"></a>
                            <a href="capabilities.jsp"><img src="images/capability.png" style="width: 210px;height: 40px;margin: 10PX 0PX 0PX 0PX"></a>
                            <a href="roadmap.jsp"><img src="images/roadmap.png" style="width: 210px;height: 40px;margin: 10PX 0PX 0PX 0PX"></a>
                            <a href="news.jsp"><img src="images/newslist.png" style="width: 210px;height: 40px;margin: 10PX 0PX 0PX 0PX"></a>
                            <a href="technology.jsp"><img src="images/tech.png" style="width: 210px;height: 40px;margin: 10PX 0PX 0PX 0PX"></a>
                            <a href="collaboration.jsp"> <img src="images/collab.png" style="width: 210px;height: 40px;margin: 10PX 0PX 0PX 0PX"></a>
                            <a href="team.jsp"> <img src="images/feastteam.png" style="width: 210px;height: 40px;margin: 10PX 0PX 0PX 0PX"></a>
                            <a href="photo.jsp">  <img src="images/photo.png" style="width: 210px;height: 40px;margin: 10PX 0PX 0PX 0PX"></a>     
                            <!marquee>
                        </div>
                    </ul>
                </div>  
              
                <div style=" width: 1200px;height:900px;padding: 0px 0px 0px 50px; border: 5px;margin:  120px 10px 250px 65px;text-indent: 400px; font-size: 16px;text-align: justify;color: black">          
                           
                      <div class="header">
                         <!--div class="contact"-->         
                             <div style="text-align: left;margin: 80px 0px 0px 110px ">
             
                               <img src="images/address full.jpg" align="left" alt="" style="" />
                             </div>     
                         </div>
                                </div>                  
                            <!--/div--> 
               
             <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/feastforum" user="root" password="root"/> 
                    <sql:query dataSource="${snapshot}" var="result"> SELECT * from noticeboard; </sql:query> 
                    <table border="1" width="300" alignment="" style="border-color: tomato;margin:  -1080px 00px 0px 1190px;text-indent: 0pt"> 
                <thead>
                        <tr>
                            <th style="font-size: 30px;font-family: monospace;font-style: italic;color: sandybrown">Notice Board</th>
                        </tr>
                </thead>  
            <c:forEach var="row" items="${result.rows}"> 
            <tr>
            
                <td>
                     <div id="marquee">
                        <!--marquee  behaviour="alternate"  height= "50" width="300" direction="up" border="0" scrollamount="2" onmouseover="this.stop()" onmouseout="this.start()"><b><font color="blue" ><c:out value="${row.content}"/></font></b><a href=<c:out value="${row.location}"/> target="_parent"><font color="red"> Click Here to Access </font></a><img src=".//images/new.gif"/><br>
                        </marquee-->
                         <p style="background: white">
                             <a href=<c:out value="${row.location}"/>><b><c:out value="${row.content}"/></b>   </a><img src=".//images/new.gif"/><br>
                         </p>
                         
                         
                     </div>

                </td> 
         
            </tr>
            </c:forEach> 
            
        </table>     
            
             
                  
                    
             <!--div style="width: 500px;height: auto;padding: 0px 0px 0px 0px; border: 5px;border-color: green;margin: -100px 10px 18px 100px"-->
                   <div style="text-indent: 30px;margin: 450px 0px 0px -10px">
                 <img src="images/buckc.gif" alt="" />
                 </div>
                  <div style="margin: -120px 0px 0px 1250px">
                 <img src="images/gap-test.gif" alt="" />
                 </div>
             
              <div id="banner_image" style="alignment-adjust: central;margin: 100px 0px 0px 250px">
                        <div id="slider-wrapper">        
                           <div id="slider" class="nivoSlider">
                                <img src="images/test6.jpg" alt="" />
                                <img src="images/test.jpg" alt="" />
                                <img src="images/test1.gif" alt=""  />
                                <img src="images/test3.gif" alt="" />
                                <img src="images/test2.jpg" alt="" />
                                <img src="images/test4.jpg" alt="" />
                                <img src="images/test5.gif" alt="" />                       
                        
                        <!img src="images/ctsm1.gif" alt="" />
                            </div><!--close slider-->
                        </div><!--close slider_wrapper-->
                    </div><!--close banner_image-->	
             
             
        </div><!--box close-->

        </div><!--body close-->
			
                     <div class="footnote">
                    <br>
                    <div style="background: gray;text-indent: 450pt;width: 1500px;margin: -40px 0px 0px 100px;font-family: cursive;color: white">
                                <p>&copy; 2017 BY VSSC | ALL RIGHTS RESERVED</p>
                        </div>
                    <br><br>
                </div>
	<!--/div conatct id-->
    <!--/div-->
  </div>
</body>
</html>
