<%-- 
    Document   : teamedit
    Created on : 29 Jun, 2017, 4:46:43 PM
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
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">
	<!meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>FEAST-SMT Collaborations</title>
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
     
    <div id="Adminpage">
		<div id="header">
			<div>
				<!--a href="index.jsp" class="logo"><img src="images/logo.gif" alt=""></a-->
				<ul id="navigation">
					<li>
						<a href="adminindex.jsp">Home</a>
					</li>
					<li>
						<a href="adminabout.jsp">About</a>
					</li>
					
					<li class="menu">
						<a href="admincontact.jsp">Contact</a>
						
					</li>
                                        
                                        <li>
						<a href="admincomments.jsp">Comments</a>						
					</li>
                                        <li class="selected">
                                            
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
                 <div class="blogAdmin" style="">
                 <!div class="zoom_img">
                <ul>
                <!input type="submit" value="vision" name="vision" size="" />
                <!marquee behaviour="alternate" width="350" direction="up" border="0" scrollamount="5" onmouseover="this.stop()" onmouseout="this.start()">
                <br><br><br>
                <div class="zoom_img">
                <a href="capabilitiesedit.jsp"><img src="images/capability.png" style="width: 210px;height: 40px;"></a>
                <a href="newsedit.jsp"><img src="images/newslist.png" style="width: 210px;height: 40px;"></a>
                <a href="technologyedit.jsp"><img src="images/tech.png" style="width: 210px;height: 40px;"></a>
                <a href="collaborationedit.jsp"><img src="images/collab.png" style="width: 210px;height: 40px;"></a>
                <a href="teamedit.jsp"><img src="images/feastteam.png" style="width: 210px;height: 40px;"></a>
                <a href="videoedit.jsp"><img src="images/video.png" style="width: 210px;height: 40px"></a>
                <a href="photoedit.jsp"><img src="images/photo.png" style="width: 210px;height: 40px;"></a>       
                <!marquee>
                </div>
                </ul>
                 <br><br><br>
            </div>
                <!--Marketing Partners-->
                <br><br><br><br>                   
                <p style="color: blue;font-size: 40px;font-family: monospace;margin: 290px 0px 0px 290px"> FEAST TEAM</p>
                <br><br><br>
                <div style="font-size: 28px"> 
                    <form name="partners" action="teameditdb.jsp" method="POST">
                        <table border="1" width="900"height="100" alignment="float" style="border-color: green;margin: -80px 10px 0px 300px">
                        <p style="color: blue;font-size: 20px;font-family: monospace;margin: 0px 0px 0px 425px">NO:</p>                        
                        <p style="color: blue;font-size: 20px;font-family: monospace;margin: -30px 0px 0px 600px">Location</p>
                        <p style="color: blue;font-size: 20px;font-family: monospace;margin: -30px 0px 0px 900px">Description</p>
                        <input type="text" name="No" id="num" style= "height: 30px;width: 60px;margin: 0px 0px 0px 300px;font-size: 20px;" />&nbsp; &nbsp;<B></B>
                        <input type="text" name="loc" id="collaboration" style= "height: 30px;width: 300px;margin: 0px 0px 0px 0px;font-size: 20px;" />&nbsp; &nbsp;<B></B>
                        <input type="text" name="desc" id="collaboration" style= "height: 30px;width: 300px;margin: 0px 0px 0px 0px;font-size: 20px;" />&nbsp; &nbsp;<B></B>
                        </table>
                       
                       <td><input type="submit" value="Add" name="Submit" style="margin: 1% 0px 0px 30%;height: 60px;width: 100px;font-size: 24px;font-style: italic"/></td>
                    </form>
                </div>  
        </div><!--box close-->
        <div style="width: 1500px;height: 400px;background: gray;margin: -430px 0px 0px 100px">                  
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
		 <div class="footnote">
                     <br><br><br><br>
                    <div style="background: black;text-indent: 300pt;width: 1500px;margin: -440px 0px 0px 100px;color: white">
                                <p>&copy; 2017 BY VSSC | ALL RIGHTS RESERVED</p>
                        </div>
                    <br><br>
                </div>
	</div>
</body>
</html>

