<%-- 
    Document   : team
    Created on : 11 Apr, 2017, 12:26:30 PM
    Author     : user
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
	<title>FEAST-Team</title>
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
            <div class="boxcollaboration">
              
                     <!--buttons-->    
             <div class="blogcollaboration" style="">
                 <!div class="zoom_img">
                <ul>
                <!input type="submit" value="vision" name="vision" size="" />
                <!marquee behaviour="alternate" width="350" direction="up" border="0" scrollamount="5" onmouseover="this.stop()" onmouseout="this.start()">
                <br><br><br><br><br><br><br><br><br><br><br><br><br>
                <div class="zoom_img">
                <a href =vision.jsp> <img src="images/visionlist.png" style="color: blue;;width: 210px;height: 40px;"></a>                
                <a href="history.jsp"><img src="images/history.png" style="width: 210px;height: 40px;"></a>
                <a href="capabilities.jsp"><img src="images/capability.png" style="width: 210px;height: 40px;"></a>
                <a href="roadmap.jsp"><img src="images/roadmap.png" style="width: 210px;height: 40px;"></a>
                <a href="news.jsp"><img src="images/newslist.png" style="width: 210px;height: 40px;"></a>
                <a href="technology.jsp"><img src="images/tech.png" style="width: 210px;height: 40px;"></a>
                <a href="collaboration.jsp"> <img src="images/collab.png" style="width: 210px;height: 40px;"></a>
                <a href="team.jsp"> <img src="images/feastteam.png" style="width: 210px;height: 40px;"></a>
                <a href="photo.jsp">  <img src="images/photo.png" style="width: 210px;height: 40px;"></a>     
                <!marquee>
                </div>
                </ul> 
            </div>
                
                
                     <br><br><br><br><br><br><br><br> 
   
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
            <div style=" border: 00px;margin: 100px 10px 18px 250px;">
                    <img src="images/Team.png"/>
                </div>
            
               <div style="overflow:scroll;color: black;height:480px;width:1000px;overflow:auto;margin:0px 0px 0px 120px; ">
            
                   <table border="5" width="700" alignment="center" style="border-color: green;margin:  -110px 10px 20px 280px; padding: 0px 0px 0px 0px;background: lightyellow    "> 
             
               
               
                        <!--br>
                        <div style="text-indent: 50pt;">
                        <img src="images/TS.JPG" /> 
                        </div>
                        <br-->
                        
                        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/feastforum" user="root" password="root"/> 
                        <sql:query dataSource="${snapshot}" var="result"> SELECT * from feastteam order by num; </sql:query> 
       
                        <c:forEach var="row" items="${result.rows}"> 
                            <tr>
                                <td><img src="<c:out value="${row.location}"/>"/></td>
                                 <td style="font-size: 20pt;text-align: center;"><c:out value="${row.desg}"/></td> 
                                 <br>
                           </tr>
                        </c:forEach>  
                        
                   
                     </table>
                     </div>
                
            
           <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/feastforum" user="root" password="root"/> 
                    <sql:query dataSource="${snapshot}" var="result"> SELECT * from noticeboard; </sql:query> 
                    <table border="1" width="300" alignment="" style="border-color: tomato;margin:  -500px 00px 0px 1160px;text-indent: 0pt;"> 
                  
                    <thead>
                        <tr>
                            <th style="font-size: 30px;font-family: monospace;font-style: italic;color: sandybrown">Notice Board</th>
                        </tr>
                </thead>  
            
            <c:forEach var="row" items="${result.rows}"> 
            <tr>
            
                <td style="height: 50px;font-size: 14px;">
                     <div style="text-align: right">
                        <!--marquee  behaviour="alternate"  height= "50" width="300" direction="up" border="0" scrollamount="2" onmouseover="this.stop()" onmouseout="this.start()"><b><font color="blue" ><c:out value="${row.content}"/></font></b><a href=<c:out value="${row.location}"/> target="_parent"><font color="red"> Click Here to Access </font></a><img src=".//images/new.gif"/><br>
                        </marquee-->
                         <p>
                             <a href=<c:out value="${row.location}"/><b><font color="black"><c:out value="${row.content}"/></font></b> <font color="red">  </font></a><img src=".//images/new.gif"/><br>
                         </p>
                         
                         
                     </div>

                </td> 
         
            </tr>
            </c:forEach> 
           </table>
        
            <!--/div-->                  
        
           <div id="banner_image" style="alignment-adjust: central;;margin: 450px 0px 0px 250px">
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
        
          <div class="footer" style="width: 1500px;margin: -50px 0px 0px 100px">                  
				<div>
                                    <ul>
					<li>
                                            <h1>FEAST Documentry</h1>
                                            <a href="ftp://localhost/FEASTDocumentary.flv"><img src="images/feastdocu.JPG" alt=""/><span></span></a>
					</li>   
                                       
                                    </ul>
				</div>
                           
		</div>
        
        <br><br><br><br>    
        </div><!--body close-->
        <div style="color: white;text-indent: 350pt;background: gray">
            <p> Copyright &copy; 2017 BY Vikram Sarabhai Space Centre | ALL RIGHTS RESERVED</p>
            <br>
        </div>
 </div>
    </body>
</html>

