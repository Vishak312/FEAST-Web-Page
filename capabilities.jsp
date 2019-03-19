<%-- 
    Document   : capabilities
    Created on : 8 Jun, 2017, 12:02:53 PM
    Author     : user
--%>

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
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>FEAST-Capabilities</title>
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
					<li>
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
                <img src="images/banner2.png" height="25%" style="margin: 0px 0px 0px 100px"/>
                <div class="boxcapabilities">
              
                
                 <!--buttons-->    
                 <div class="blogcapability" style="">
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
                 <br><br><br>
                 <div style="text-indent: 30px">
                 <img src="images/buckc.gif" alt="" />
                 </div>
                  <div style="margin: -150px 0px 0px 1250px">
                 <img src="images/gap-test.gif" alt="" />
                 </div>
            </div>
                
                 <!--div id="banner_image" style="alignment-adjust: central">
                <div id="slider-wrapper">        
                    <div id="slider" class="nivoSlider">
                        <img src="images/test6.jpg" alt=" FEAST-SMT"/>
                        <img src="images/test.jpg" alt="" />
                        <img src="images/test1.gif" alt=""/>
                        <img src="images/test3.gif" alt="" />
                        <img src="images/test2.jpg" alt="" />
                        <img src="images/test4.jpg" alt="" />
                        <img src="images/test5.gif" alt="" />                       
                        
                        <!img src="images/ctsm1.gif" alt="" />
                    </div><!--close slider-->
                <!--/div><!--close slider_wrapper-->
            <!--/div><!--close banner_image-->	
   
            <!-- main content-->       
            <!--div class="header">
                            <div>
			 </div>
                        </div-->  
            <br><br><br><br><br><br><br>
             <div style="font-family: monospace;font-size: 48px;color:  black;text-indent: 150px">
                            FEAST 2016 R1
                                </div>
                           
                        <div style=" overflow: scroll;width: 900px;height:600px;overflow: auto;padding: 0px 0px 0px 50px; border: 5px;margin: 20px 10px 250px 200px;text-indent: 50px; font-size: 16px;text-align: justify;color: black">          
                        <table border="1" alignment="center" style="border-color: green;background: lightyellow;">
                            <tbody>
                                <tr>
                                    <td>
                                        <p style="color: black;font-family: cursive">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PreWin, the graphical pre and post processor for FEAST<sup>SMT</sup> has many standard capabilities, some of which are highlighted below:
                                        <ul>
                                            <li>
                                                Advanced visual display for pre and post processing using OpenGL technology
                                            </li>
                                            <li>
                                                User friendly model manipulation almost mimicking a CAD tool
                                            </li>
                                            <li>
                                                Dynamic mesh seed setting by clicking mouse 
                                            </li>
                                            <li>
                                               Multilevel redo and undo actions
                                            </li>
                                            <li>
                                                Can import and export data files of proprietary software
                                            </li>
                                            <li>
                                                Conventional/tree type menu, editable scripts, quick control tools buttons
                                            </li>
                                            <li>
                                                Advanced visual display for pre and post processing using OpenGL technology
                                            </li>
                                            <li>
                                                Command prompt queries
                                            </li>
                                            <li>
                                                 Cross-section contours on specified moving plane
                                            </li>
                                           
                                        </ul>
                                        <table border="1">
                                           
                                            <tbody>
                                                <tr>
                                                    <td> Analysis Types :   </td>
                                                    <td>Linear static, Free Vibration,Elastic Stability, Transient Response, Fluid-structure interaction, 
                                                        Linear contact using gap element, frequency response, random response, Base Excitation, Buckling.
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Element libraries</td>
                                                    <td>mass, spring, gap, glue, beam, shell, solid, axisymmetric, Plane stress and strain, rigid link, ...</td>
                                                </tr>
                                                <tr>
                                                    <td>Material models:</td>
                                                    <td>Isotropic, Orthotropic, Incompressible, Layered orthotropic materials...</td>
                                                </tr>
                                                <tr>
                                                    <td>Constraints:</td>
                                                    <td>Single point, Multipoint...</td>
                                                </tr>
                                                <tr>
                                                    <td>Load types:</td>
                                                    <td>Point, Pressure, Element Edge,  Acceleration, Body Force, Centrifugal ...</td>
                                                </tr>
                                                <tr>
                                                    <td>Eigen value solvers:</td>
                                                    <td>Lanczos, subspace iteration</td>
                                                </tr>
                                                <tr>
                                                    <td>Linear solvers:</td>
                                                    <td>Multi frontal, Cholesky, PCG</td>
                                                </tr>
                                            </tbody>
                                        </table>

                                        </p>
                                        <br>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div> 
       
                
                <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/feastforum" user="root" password="root"/> 
                    <sql:query dataSource="${snapshot}" var="result"> SELECT * from noticeboard; </sql:query> 
                    <table border="10" width="300" alignment="" style="border-color: tomato;margin:  -870px 00px 0px 1180px;text-indent: 0pt;"> 
                  
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
                    
             <div id="banner_image" style="alignment-adjust: central;margin: 500px 0px 0px 230px">
                <div id="slider-wrapper">        
                    <div id="slider" class="nivoSlider">
                        <img src="images/test6.jpg" alt=" FEAST-SMT"/>
                        <img src="images/test.jpg" alt="" />
                        <img src="images/test1.gif" alt=""/>
                        <img src="images/test3.gif" alt="" />
                        <img src="images/test2.jpg" alt="" />
                        <img src="images/test4.jpg" alt="" />
                        <img src="images/test5.gif" alt="" />                       
                        
                        <!img src="images/ctsm1.gif" alt="" />
                    </div><!--close slider-->
                </div><!--close slider_wrapper-->
            </div><!--close banner_image-->	
  
        </div><!--box close-->
        
        <!--div class="footer" style="width: 1500px;height: 400px;;margin: -240px 0px 0px 100px">                  
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
        
        
            <div class="zoom_img">
               
                <!img src="images/logo.png" title="testing Hover"/>
            </div>

		 <div class="footnote">
                    <br>
                    <div style="background: gray;text-indent: 400pt;width: 100%;margin: 0px 0px 0px 0px;color: white">
                                <p>&copy; 2017 BY VSSC | ALL RIGHTS RESERVED</p>
                        </div>
                    
                </div>
	</div>
</body>
</html>
