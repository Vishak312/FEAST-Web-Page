<!doctype html>
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
<html>
<head>
	<meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">
	<!--meta name="viewport" content="width=device-width, initial-scale=1.0"-->
	<title>FEAST-HOME</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
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
					<li class="selected">
						<a href="index.jsp">Home</a>
					</li>
					<li>
						<a href="about.jsp">About</a>
                                                <ul>
                                                    <li>test</li>
                                                </ul>
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
                                        
                                        <li>
                                            <a href="admin.jsp">Admin</a>
                                        </li>
				</ul>
			</div>
		</div>
                 <div style="margin: -50px 100px 10px 1400px;float: right;">
                <!--h2 style="text-indent: 290pt;color: white;">Date:</h2-->
                
                <%
                    Date dNow = new Date( );
                    SimpleDateFormat ft = new SimpleDateFormat ("E dd/MM/yyyy");
                 %>
                 <div style="color: skyblue;font-family: cursive;font-size: 20px">
                 <%
                    out.print( "<p align=\"center\">" + ft.format(dNow) + "</p>");
                %>
                </div>
                </div>
                <br><br><br>
                <div id="body" class="home"> 
                   <img src="images/banner21.png"  style="margin: 0px 0px 0px 100px"/>
                <div class="box">
              
                
                 <!--buttons-->    
                 <div class="blog" style="">
                 <!div class="zoom_img">
                <ul>
                <!input type="submit" value="vision" name="vision" size="" />
                <!marquee behaviour="alternate" width="350" direction="up" border="0" scrollamount="5" onmouseover="this.stop()" onmouseout="this.start()">
                <br><br><br>
                <div class="zoom_img">
                <a href =vision.jsp> <img src="images/visionlist.png" style="color: blue;;width: 210px;height: 40px;"></a>                
                <a href="history.jsp"><img src="images/history.png" style="width: 210px;height: 40px;"></a>
               <a href="capabilities.jsp"><img src="images/capability.png" style="width: 210px;height: 40px;"></a>
                <a href="roadmap.jsp"><img src="images/roadmap.png" style="width: 210px;height: 40px;"></a>
                <a href="news.jsp"><img src="images/newslist.png" style="width: 210px;height: 40px;"></a>
                <a href="technology.jsp"><img src="images/tech.png" style="width: 210px;height: 40px;"></a>
                <a href="collaboration.jsp"> <img src="images/collab.png" style="width: 210px;height: 40px;"></a>
                <a href="team.jsp"> <img src="images/feastteam.png" style="width: 210px;height: 40px;"></a>
                <a href="video.jsp"> <img src="images/video.png" style="width: 210px;height: 40px"></a>
                <a href="photo.jsp">  <img src="images/photo.png" style="width: 210px;height: 40px;"></a>       
                <!marquee>
                </div>
                </ul>
                 <br><br><br>
                 <div style="text-indent: 30px">
                 <img src="images/buckc.gif" alt="" />
                 </div>
                 <div style="margin: -140px 0px 0px 1250px">
                 <img src="images/gap-test.gif" alt="" />
                 </div>  
                    
            </div>
                 <br><br><br><br><br><br>
                <div id="banner_image" style="alignment-adjust: central">
                <div id="slider-wrapper">        
                    <div id="slider" class="nivoSlider">
                        
                        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/feastforum" user="root" password="root"/> 
                        <sql:query dataSource="${snapshot}" var="result"> SELECT * from bannerimages; </sql:query> 
       
                        <c:forEach var="row" items="${result.rows}"> 
 
                            <img src="<c:out value="${row.location}"/>"/>                
                        </c:forEach> 
                        
                        
                        
                        
                        <!--img src="images/test6.jpg" alt=" FEAST-SMT"/>
                        <img src="images/test.jpg" alt="" />
                        <img src="images/test1.gif" alt=""/>
                        <img src="images/test3.gif" alt="" />
                        <img src="images/test2.jpg" alt="" />
                        <img src="images/test4.jpg" alt="" />
                        <img src="images/test5.gif" alt="" /-->                       
                        
                        <!img src="images/ctsm1.gif" alt="" />
                    </div><!--close slider-->
                </div><!--close slider_wrapper-->
            </div><!--close banner_image-->	
   
            <!-- main content-->       
            <!--div class="header">
                            <div>
			 </div>
                        </div-->  
           
                 <div style=" width: 800px;height:50px;font-family: cursive;padding: 0px 0px 0px 50px; border: 5px;margin: 120px 10px 250px 220px;text-indent: 200px; font-size: 16px;text-align: justify;color: black">          
                        <table border="1" width="860" alignment="center" style="border-color: green;background: lightyellow;">
                            <tbody>
                                <tr>
                                    <td>
                                        <p style="color: black;">
                                            
                                            <b>FEAST</b> is an acronym for <b>Finite Element Analysis of STructures</b>. PreWin is the associated GUI based pre-post processor. 
                        The solver consists of various modules that cater to specific analysis capabilities like static, dynamic, stability, 
                        visco-elastic, aero-elastic, flutter and divergence, linear and nonlinear and heat transfer. 
                        The computer hardware technology since late seventies of last century has galloped in terms of speed and revolutionary architectures to the present times. 
                        Naturally, the software technologies have to be in tandem with the changes occurring in the areas of hardware for high end performances. 
                        To this end, the present version of in house code was developed using Substructure and Multithreading (SMT) concept since 2005, which suits our requirements. 
                        This concept is extendable to large scale parallelization, which is the one of the objectives of this developmental work. The present version is aptly named <b> FEAST<sup>SMT</sup></b>.     
                                        <div style="text-indent: 130px;font-size: 30px;font-family: monospace;">
                                            
                                            <a href="about.jsp" style="background: black;color: white;">&nbsp; Read More &nbsp;</a>
                                        </div>
                                        
                                        </p>
                                        
                                        
                                        <br>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div> 
       
                
                <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/feastforum" user="root" password="root"/> 
                    <sql:query dataSource="${snapshot}" var="result"> SELECT * from noticeboard; </sql:query> 
                    <table border="1" width="300" alignment="" style="border-color: tomato;margin:  -750px 00px 0px 1190px;text-indent: 0pt"> 
                  
                    <thead>
                        <tr>
                            <th style="font-size: 30px;font-family: monospace;font-style: italic;color: sandybrown;">Notice Board</th>
                        </tr>
                </thead>  
            
            <c:forEach var="row" items="${result.rows}"> 
            <tr>
            
                <td>
                     <div id="marquee">
                        <!--marquee  behaviour="alternate"  height= "50" width="300" direction="up" border="0" scrollamount="2" onmouseover="this.stop()" onmouseout="this.start()"><b><font color="blue" ><c:out value="${row.content}"/></font></b><a href=<c:out value="${row.location}"/> target="_parent"><font color="red"> Click Here to Access </font></a><img src=".//images/new.gif"/><br>
                        </marquee-->
                         <p style="background: white">
                             <a href="news.jsp"><b><c:out value="${row.content}"/></b>   </a><img src=".//images/new.gif"/><br>
                         </p>
                         
                         
                     </div>
                </td> 
            </tr>
            </c:forEach> 
        </table> 
        </div><!--box close-->
        <div style="width: 1500px;height: 400px;background: gray;margin: -300px 200px 20px 100px">                  
            <div>
                <br><br><br>
                <h1>FEAST Documentry</h1>
                <a href="ftp://localhost/FEASTDocumentary.flv" target="_newwindow"><img src="images/feastdocu.JPG" alt=""/><span></span></a>
            </div>
            <ul>
                <br><br><br>
               <a href="docs/tutorial.pdf" target="_newwindow"> <p style="font-size:24px;font-family: monospace; color:white;margin: -300px 0px 0px 600px"><img src="images/bullets.png">FEAST Tutorials</p></a><br>
               <a href="support.jsp"><p style="font-size:24px;font-family: monospace; color:white;margin: 0px 0px 0px 600px"><img src="images/bullets.png">Platform Support</p></a><br>
               <a href="docs/brochure.pdf" target="_newwindow"> <p style="font-size:24px;font-family: monospace; color:white;margin: 00px 0px 0px 600px"><img src="images/bullets.png">FEAST Brochure</p></a><br>
               <a href="http://10.41.7.67/mediawiki/index.php/Main_Page" target="_newwindow"> <p style="font-size:24px;font-family: monospace;; color:white;margin: 0px 0px 0px 600px"><img src="images/bullets.png">Intranet Wikipedia</p></a><br>
              <a href="http://ashoka.vssc.dos.gov.in/intranet/ashoka/" target="_newwindow"> <p style="font-size:24px;font-family: monospace;; color:white;margin: 0px 0px 0px 600px"><img src="images/bullets.png">VSSC Intranet</p></a><br>

            </ul>
		</div>
        
        </div><!--body close-->
        
 
                  
        <br><br>
                    <div style="font-size: 20px">   
                        <%
                            Integer hitsCount =(Integer)application.getAttribute("hitCounter");
                            if( hitsCount ==null || hitsCount == 0 ){
                             /* First visit */

                            hitsCount = 1;
                            }else{
                            /* return visit */

                            hitsCount += 1;
                            }
                            application.setAttribute("hitCounter", hitsCount);
                        %>
                        <center>
                            <div style="color: white;text-align: right">
                               <p>Total number of visits: <%= hitsCount%></p>
                            </div>
                        </center>
                    </div> 
			
		 <div class="footnote">
                     <br><br><br><br>
                    <div style="background: black;text-indent: 300pt;width: 1500px;margin: -340px 0px 0px 100px;color: white">
                                <p>&copy; 2017 BY VSSC | ALL RIGHTS RESERVED</p>
                        </div>
                    <br><br>
                </div>
	</div>
</body>
</html>