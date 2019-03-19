<%-- 
    Document   : comments
    Created on : 27 Mar, 2017, 4:37:57 PM
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
					<li>
						<a href="contact.jsp">Contact</a>						
					</li>
                                        <li class="menu selected">
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
            
            
              <br><br><br><br>

            <div id="body" class="home">   
                
                      
    
                 <div class="boxcomments">
              
                    
              <!--buttons-->    
              <br><br><br><br><br>
                <img src="images/banner2.png"  style="margin: 0px 0px 0px 00px"/> 
             <div class="blogcomments" style="">
                    <ul>
                             
                        <div class="zoom_img">
                            <a href =vision.jsp> <img src="images/visionlist.png" style="width: 210px;height: 40px; margin: 50PX 0PX 0PX 0PX "></a>               
                            <a href="history.jsp"><img src="images/history.png" style="width: 210px;height: 40px;margin: 10PX 0PX 0PX 0PX"></a>
                            <a href="capabilities.jsp"><img src="images/capability.png" style="width: 210px;height: 40px;margin: 10PX 0PX 0PX 0PX""></a>
                            <a href="roadmap.jsp"><img src="images/roadmap.png" style="width: 210px;height: 40px;margin: 10PX 0PX 0PX 0PX""></a>
                            <a href="news.jsp"><img src="images/newslist.png" style="width: 210px;height: 40px;margin: 10PX 0PX 0PX 0PX""></a>
                            <a href="technology.jsp"><img src="images/tech.png" style="width: 210px;height: 40px;margin: 10PX 0PX 0PX 0PX""></a>
                            <a href="collaboration.jsp"> <img src="images/collab.png" style="width: 210px;height: 40px;margin: 10PX 0PX 0PX 0PX""></a>
                            <a href="team.jsp"> <img src="images/feastteam.png" style="width: 210px;height: 40px;margin: 10PX 0PX 0PX 0PX""></a>
                            <a href="photo.jsp">  <img src="images/photo.png" style="width: 210px;height: 40px;margin: 10PX 0PX 0PX 0PX""></a>     
                        </div>
                    </ul>
                </div>   
                    <div style=" width: 1200px;height:900px;padding: 0px 0px 0px 50px; border: 5px;margin:  120px 10px 250px 65px;text-indent: 400px; font-size: 16px;text-align: justify;color: black">          
                      <div class="header">
                         <div class="contact">         
                            <div style="margin: 0px 10px 250px -50px;">
                                <!--h1>Messages</h1-->    
                                <p style="font-size: 44px; font-family: cursive; color:black;text-indent: -300pt;color: black;">Write a Comment</p>
                                <form action="suggetions.jsp">
                                <input type="text" name="Name" value="Name" onblur="this.value=!this.value?'Name':this.value;" onfocus="this.select()" onclick="this.value='';">			
                                <textarea name="message" cols="50" rows="7"onblur="this.value=!this.value?'Message':this.value;" onfocus="this.select()">Message</textarea>
                                <input type="submit" value="Send" id="submit">                                              
                                </form> 

                             </div>
                                                  
                                     </div>
                                </div>                  
                            </div> 
                    <h1 style="text-indent: 110pt;font-family: audiowide-regular-webfont;font-style: italic; font-size: 36px;color: black;margin:  -850px 10px 250px 50px"> Comments</h1>

                    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/feastforum" user="root" password="root"/> 
                        <sql:query dataSource="${snapshot}" var="result"> SELECT * from suggetion; </sql:query> 
                        <div style="overflow: scroll;width: 920px;height:520px;font-family: cursive;padding: 0px 0px 0px 50px; border: 5px;text-indent: 0px; overflow: auto;font-size: 12px;text-align: justify;margin:  -200px 10px 20px 250px;" >     
                        <table border="1" width="950" height="650" alignment="center" style="border-color: green;color: black;background: lightyellow;margin:  -0px 10px 20px -50px;">
                            <tbody>
                                <c:forEach var="row" items="${result.rows}"> 
                                    <tr>
                                       
                                        <td style="text-indent:0pt;"> 
                                            <p>
                                                <div style="font-size: 24px;color: blue;font-family: audiowide-regular-webfont;">  
                                                Name:<br> 
                                                </div>
                                                <div style="font-size: 24px;font-weight: bold;color: black;font-family: Times New Roman;">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <c:out value="${row.name}"/>
                                                 </div> 
                                            </p>
                                            <p> 
                                                <div style="font-size: 24px;color: blue;font-family: audiowide-regular-webfont;">  
                                                    Comments:<br>
                                                </div>
                                                <div style="font-size: 18px;color: black;font-family: Times New Roman;">  
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                                                <c:out value="${row.msg}"/>
                                                </div>
                                            </p>
                                            <br>

                                        </td> 

                                    </tr>
                                    </c:forEach> 
                            </tbody>
                            </table>  
                    </div>     
                <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/feastforum" user="root" password="root"/> 
                <sql:query dataSource="${snapshot}" var="result"> SELECT * from noticeboard; </sql:query> 
                <table border="1" width="300"  alignment="" style="border-color: tomato;margin:  -1000px 00px 0px 1150px;text-indent: 0pt"> 
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

             
              <div id="banner_image" style="alignment-adjust: central;margin: 900px 0px 0px 250px">
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
        
        
        <!--div class="footer" style="width: 1500px;margin: -50px 0px 0px 100px">                  
				<div>
                                    <ul>
					<li>
                                            <h1>FEAST Documentry</h1>
                                            <a href="ftp://localhost/FEASTDocumentary.flv"><img src="images/feastdocu.JPG" alt=""/><span></span></a>
					</li>   
                                       
                                    </ul>
				</div>
                           
		</div-->
        
        </div><!--body close-->
			
                     <div class="footnote">
                    <br>
                    <div style="background: gray;text-indent: 450pt;width: 1500px;margin: -40px 0px 0px 100px;color: white">
                                <p>&copy; 2017 BY VSSC | ALL RIGHTS RESERVED</p>
                        </div>
                    <br><br>
                </div>
	<!--/div conatct id-->
    <!--/div-->
  </div>
</body>
</html>
