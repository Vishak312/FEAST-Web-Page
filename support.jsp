<%-- 
    Document   : support
    Created on : 18 May, 2017, 10:18:42 AM
    Author     : user
--%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>FEAST-Platform</title>
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
        <title>FEAST Vision</title>
    </head>
    <body>
            <div id="page">
		<div id="header">
                    
			<div>
				<!--a href="index.jsp" class="logo"><img src="images/logo.gif" alt=""></a-->
				<ul id="navigation">
					<li class="">
						<a href="index.jsp">Home</a>
					</li>
					<li>
						<a href="about.jsp">About</a>
					</li>
					
					<li class="menu">
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
                <br><br>

            <div id="body" class="home">   
                
                <img src="images/banner2.png"  style="margin: 0px 0px 0px 100px"/>         
            
            
            <div class="boxsupport">
              
                
                <!--buttons-->    
             <div class="blogsupport" style="">
                 <!div class="zoom_img">
                <ul>
                <!input type="submit" value="vision" name="vision" size="" />
                <!marquee behaviour="alternate" width="350" direction="up" border="0" scrollamount="5" onmouseover="this.stop()" onmouseout="this.start()">
               <div class="zoom_img">
                <a href =vision.jsp> <img src="images/visionlist.png" style="color: blue;;width: 210px;height: 40px;"></a>                
                <a href="docs/Capability.pdf" target="_newwindow"><img src="images/capability.png" style="width: 210px;height: 40px;"></a>
                <a href="roadmap.jsp"><img src="images/roadmap.png" style="width: 210px;height: 40px;"></a>
                <a href="news.jsp"><img src="images/newslist.png" style="width: 210px;height: 40px;"></a>
                <a href="technology.jsp"><img src="images/tech.png" style="width: 210px;height: 40px;"></a>
                <a href="collaboration.jsp"> <img src="images/collab.png" style="width: 210px;height: 40px;"></a>
                <a href="team.jsp"> <img src="images/feastteam.png" style="width: 210px;height: 40px;"></a>
                <a href="photo.jsp">  <img src="images/photo.png" style="width: 210px;height: 40px;"></a>     
                <!marquee>
                </div>              <!marquee>
                </ul>
            </div>
                
                
                 <div id="banner_image" style="alignment-adjust: central">
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
   
            <!-- main content-->       
            <!--div class="header">
                            <div>
			 </div>
                        </div-->  
            <!--div style="float: right">
                <marquee  behaviour="alternate"  width="300" direction="up" border="0" scrollamount="5" onmouseover="this.stop()" onmouseout="this.start()"><b><font color="blue" >Click here to access </font></b><a href="http://ashoka.vssc.dos.gov.in/intranet/ashoka/" target="_parent"><font color="red"> VSSC intranet </font></a><img src=".//images/new.gif"/><br></br>
              <b><font color="blue" >FEAST 2016 R2 Launched </font></b><a href="http://ashoka.vssc.dos.gov.in/intranet/STR/index.php?option=com_content&view=article&id=217&Itemid=728" target="_parent"><font color="red"> Click Here to Access </font></a>
              </marquee>
            </div-->
            <div style=" border: 00px;margin: 120px 10px 18px 600px; font-size: 42px;color: white;font-family: cursive;font-style: italic">
                <!--img src="images/vision.png" /-->
                <p>Platform Support</p>
                </div>
                    <div style=" width: 800px;height:50px;padding: 0px 0px 0px 50px; border: 5px;margin:  0px 10px 250px 220px;text-indent: 0px; font-size: 16px;text-align: justify;color: black; font-weight: bold">          
                        <table border="1" width="900" alignment="center" style="border-color: green;">
                            <tbody>
                                <tr>
                                    <td>
                                        <p>
                                            <br>
                                        <div style="text-indent:100pt; font-size: 24px;color: white">
                                         <br>
                                        </div>
                                        <br>
                                        <div style="font-size: 24px; color: white">
                                        <img src="images/list.png"> Windows Platform<br><br>  
                                           <img src="images/list.png"> Microsoft Windows XP<br><br> 
                                           <img src="images/list.png"> Windows 7,8<br><br> 
                                           <img src="images/list.png"> Windows server 2000,2003,2008 R2, <br><br> 
                                           <img src="images/list.png"> R2 Standard<br><br> 
                                           <!--img src="images/list.png"> Windows Platform<br> 
                                           <img src="images/list.png"> Windows Platform<br--> 
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div> 
                 <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/feastforum" user="root" password="root"/> 
                <sql:query dataSource="${snapshot}" var="result"> SELECT * from noticeboard; </sql:query> 
                <table border="10" width="300" alignment="" style="border-color: tomato;margin:  -650px 00px 0px 1195px;text-indent: 0pt"> 
                  <thead>
                        <tr>
                            <th style="font-size: 30px;font-family: monospace;font-style: italic;color: sandybrown">Notice Board</th>
                        </tr>
                </thead>  
                <c:forEach var="row" items="${result.rows}"> 
                <tr>
                <td style="height: 50px;font-size: 14px;">
                <div style="text-align: right">
                 
                   <p>
                       <a href=<c:out value="${row.location}"/><b><font color="white"><c:out value="${row.content}"/></font></b> <font color="red">  </font></a><img src=".//images/new.gif"/><br>
                   </p>


                </div>

                </td> 

                </tr>
                </c:forEach> 
                </table> 
             
        
           
  
        </div><!--box close-->
        
        
         <div class="footer" style="width: 1500px;margin: -50px 0px 0px 100px">                  
				<div>
                                    <ul>
					<li>
                                            <h1>FEAST Documentry</h1>
                                            <a href="ftp://localhost/FEASTDocumentary.flv"><img src="images/feastdocu.JPG" alt=""/><span></span></a>
					</li>   
                                    </ul>
				</div>
                           
                             <ul>
                        <li><a href="docs/tutorial.pdf" target="_newwindow"> <p style="font-size:24px;font-family: monospace; color:white;margin: -300px 0px 0px 800px"><img src="images/bullets.png">FEAST Tutorials</p></a></li>
                        <li><a href="support.jsp"><p style="font-size:24px;font-family: monospace; color:white;margin: -250px 0px 0px 800px"><img src="images/bullets.png">Platform Support</p></a></li>
                        <li><a href="docs/brochure.pdf" target="_newwindow"> <p style="font-size:24px;font-family: monospace; color:white;margin: -200px 0px 0px 800px"><img src="images/bullets.png">FEAST Brochure</p></a></li>
                        <li><a href="http://10.41.7.67/mediawiki/index.php/Main_Page" traget="_newwindow"> <p style="font-size:24px;font-family: monospace;; color:white;margin: -150px 0px 0px 800px"><img src="images/bullets.png">Intranet Wikipedia</p></a></li>
            
                    </ul>
            
		</div>
        
                 
        <br><br> <br><br>
        
        
        </div><!--body close-->
        <div style="color: white;text-indent: 350pt;background: gray">
           
            <p> Copyright &copy; 2017 BY Vikram Sarabhai Space Centre | ALL RIGHTS RESERVED</p>
            
        </div>
        </div>
    </body>
</html>

