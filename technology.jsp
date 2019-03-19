<%-- 
    Document   : technology
    Created on : 11 Apr, 2017, 9:57:50 AM
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
	<title>FEAST-Technology Transfer</title>
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
            
            
            <div class="boxtechnology">
              
                 <div class="blogtechnology" style="">  
                 <!div class="zoom_img">
                <ul>
                <!input type="submit" value="vision" name="vision" size="" />
                <!marquee behaviour="alternate" width="350" direction="up" border="0" scrollamount="5" onmouseover="this.stop()" onmouseout="this.start()">
              
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
                
            
                <br><br>
                <h1 style="text-indent: 200pt;font-style: italic;font-size: 32px; margin: 100px 10px 0px 0px;font-family: monospace;color: black"> Marketing Partners </h1><br><br>
                <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/feastforum" user="root" password="root"/> 
                <sql:query dataSource="${snapshot}" var="result"> SELECT * from partners; </sql:query> 
                <div style="overflow: scroll;width: 780px;height:220px;font-family: cursive;padding: 0px 0px 0px 50px; border: 5px;text-indent: 0px; overflow: auto;font-size: 12px;text-align: justify;margin:  00px 10px 20px 300px;" >     
                <table border="1" width="800"  alignment="center" style="border-color: green;color: black;background: lightyellow;margin:  0px 10px 20px -50px;">

                <!table border="1" width="500" alignment="center" color="red" style="border-color: red;background: white;margin:  20px 10px 250px 450px"> 
                    <tr> 

                    </tr> 
                    <c:forEach var="row" items="${result.rows}"> 
                        <tr>
            
                            <!td style="font-size: 24px;text-indent:50pt;"><!img src="images/list.png">
                       
                        <td style="font-size: 18pt;text-align:center;color: black"><br><c:out value="${row.num}"/></td> 
                            <td style="font-size: 18pt;color: black"><c:out value="${row.name}"/></td> 
                        
                            <!--/td--> 
         
                        </tr>
                    </c:forEach> 
                </table> 
                </div>
                <br><br><br><br><br><br><br><br><br><br> <br><br><br><br><br><br><br><br><br><br>

     <!-- license users table -->    

            <!div style="width: 500px;height: auto;padding: 0px 0px 0px 0px; border: 5px;border-color: green;margin: -100px 10px 18px 100px">;
            <h1 style="text-indent: 80pt;font-style: italic;font-size: 32px;font-family: monospace; margin: -250px 10px 0px 140px;color: black"> Licensed Users </h1><br><br><br>
            <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/feastforum" user="root" password="root"/> 
            <sql:query dataSource="${snapshot}" var="result"> SELECT * from licensedusers; </sql:query> 
            
             <div style="overflow: scroll;width: 920px;height:520px;font-family: cursive;padding: 0px 0px 0px 50px; border: 5px;text-indent: 0px; overflow: auto;font-size: 12px;text-align: justify;margin:  -50px 10px 20px 300px;" >     
                <table border="1" width="950"  alignment="center" style="border-color: green;color: black;background: lightyellow ;margin:  10px 10px 20px -50px;">

            <!table border="1" width="900" alignment="center" style="border-color: green;background: white;margin: 20px 10px 250px 220px"> 
                <tr style="color: black"> 

                <th style="font-size: 18pt;text-align:center;">Sl.No</th> 
                <th style="font-size: 18pt;text-align:center;">Licensed User</th> 
                <th style="font-size: 18pt;text-align:center;">version</th> 
                <th style="font-size: 18pt;text-align:center;">Type</th> 
                <th style="font-size: 18pt;text-align:center;">No.Of License</th> 

                </tr> 
                <c:forEach var="row" items="${result.rows}"> 
                    <tr style="color: black">
            
                        <!td style="font-size: 24px;text-indent:50pt;"><!img src="images/list.png">
                        <td style="font-size: 18pt;text-align:center;"><c:out value="${row.num}"/></td> 
                        <td style="font-size: 18pt;text-align:center;"><c:out value="${row.username}"/></td> 
                        <td style="font-size: 18pt;text-align:center;"><c:out value="${row.version}"/></td> 
                        <td style="font-size: 18pt;text-align:center;"><c:out value="${row.type}"/></td> 
                        <td style="font-size: 18pt;text-align:center;"><c:out value="${row.totallicense}"/></td> 

                        <!--/td--> 

                    </tr>
                </c:forEach> 
            </table> 
             </div>
        <!--buttons-->    
        <br><br>
            
            <!div style="overflow: scroll;width: 300px;height:520px;font-family: cursive;padding: 0px 0px 0px 50px; border: 5px;text-indent: 0px; overflow: auto;font-size: 12px;text-align: justify;" >     

            <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/feastforum" user="root" password="root"/> 
                    <sql:query dataSource="${snapshot}" var="result"> SELECT * from noticeboard; </sql:query> 
                    <table border="1" width="300" height=""alignment="" style="overflow: scroll;border-color: tomato;margin:  -990px 00px 0px 1190px;text-indent: 0pt;overflow: auto;background: lightsteelblue"> 
                  
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
                         <p style="background: ">
                             <a href=<c:out value="${row.location}"/>><b><c:out value="${row.content}"/></b>   </a><img src=".//images/new.gif"/><br>
                         </p>
                         
                         
                     </div>
                </td> 
            </tr>
            </c:forEach> 
           </table>
            <!--/div-->
         <div id="banner_image" style="alignment-adjust: central;margin: 750px 0px 0px 270px">
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
        
        
        </div><!--body close-->
        <br><br><br><br><br><br>
        <div class="footnote">
                    <br>
                    <div style="background: gray;text-indent: 450pt;width: 1500px;margin: -130px 0px 0px 100px;color: white">
                                <p>&copy; 2017 BY VSSC | ALL RIGHTS RESERVED</p>
                        </div>
                    <br><br>
                </div>
        </div>
    </body>
</html>