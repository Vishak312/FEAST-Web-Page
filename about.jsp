<%-- 
    Document   : about
    Created on : 28 Feb, 2017, 10:30:25 AM
    Author     : user
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>FEAST-About</title>
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
                            <!--a href="about.jsp" class="logo"><img src="images/logo.gif" alt=""></a-->
				<ul id="navigation">
					<li>
						<a href="index.jsp">Home</a>
					</li>
					<li class="selected">
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
                    Date dNow = new Date();
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
		<div id="body" class="about">
                <img src="images/banner2.png"  style="margin: 0px 0px 0px 100px"/>
                   
                     <div class="boxabout">
			
                       <!--buttons-->    
             <div class="blogabout" style="">
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
                         
                         
                <!--div id="banner_image" style="alignment-adjust: central">
                <div id="slider-wrapper">        
                    <div id="slider" class="nivoSlider">
                        <img src="images/test6.jpg" alt="" />
                        <img src="images/test.jpg" alt="" />
                        <img src="images/test1.gif" alt="" />
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
            <img src="images/about.png" alt="" style="margin:120px 10px 250px 140px" />
            <br><br>
            <!--div style="float: right">
                <marquee  behaviour="alternate"  width="300" direction="up" border="0" scrollamount="5" onmouseover="this.stop()" onmouseout="this.start()"><b><font color="blue" >Click here to access </font></b><a href="http://ashoka.vssc.dos.gov.in/intranet/ashoka/" target="_parent"><font color="red"> VSSC intranet </font></a><img src=".//images/new.gif"/><br></br>
              <b><font color="blue" >FEAST 2016 R2 Launched </font></b><a href="http://ashoka.vssc.dos.gov.in/intranet/STR/index.php?option=com_content&view=article&id=217&Itemid=728" target="_parent"><font color="red"> Click Here to Access </font></a>
              </marquee>
            </div-->
                    <div style="overflow: scroll;width: 920px;height:620px;font-family: cursive;padding: 0px 0px 0px 50px; border: 5px;margin:  -270px 10px 20px 200px;text-indent: 0px; overflow: auto;font-size: 16px;text-align: justify;">          
                        <table border="1" alignment="center" style="border-color: green;color: black;background: lightyellow">
                            <tbody>
                                <tr>
                                    <td>
                                        <p> 
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The Structures entity at VSSC is involved in design, analysis, testing and delivery of launch vehicle structures for the Indian Space Research Organisation. The development of these mission critical and high performance structures, demands high end tools at every stage. In addition to several design data and semi-empirical expressions available at the disposal of the designer for configuring the structures, numerical methods have become indispensible during design and analysis phase. Among the numerical methods available the finite element method is most popular owing to its ease of implementation and use in digital 
                                            computers.Due to affordable computational cost, it is possible to simulate and characterize the structural behavior by numerous iterations. These predictive computations minimize the overall development expenditure by bringing down the number of prohibitively expensive testing that needs to be conducted to establish the reliability and robustness of the design. Numerical methods are utilized to solve large dimension problems that in most cases belong to elliptic, parabolic and hyperbolic class of partial differential equations encountered in the field of solid mechanics, which is the theoretical basis for structural 
                                            engineering.Several proprietary finite element software packages are available that are vended by multinational corporations. Dominating commercial considerations result in high pricing of these tools, which limit the number of licenses for acquisition. Further the upgrades and annual maintenance of these commercial packages not only strains the organizational budget but can also result in unfair leveraging by these corporations due to our dependencies on their software. In view of the above, VSSC initiated the indigenous development of finite element software capability since 1977, which still continues. 
                                            Over the years several scientists have greatly contributed in understanding this technology and have periodically brought out working software versions and upgrades for solving practical aerospace structural engineering problems of our community. The indigenously developed solver software is named <b> FEAST</b>.
                                           
                                             
                                         </p>  
                                
                               
                                         <p>
                                             <br>
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>FEAST</b> is an acronym for Finite Element Analysis of STructures. PreWin is the associated GUI based pre-post processor. The solver consists of various modules that cater to specific analysis capabilities like static, dynamic, stability, visco-elastic, aero-elastic, flutter and divergence, linear and nonlinear and heat transfer. 
                                             The computer hardware technology since late seventies of last century has galloped in terms of speed and revolutionary architectures to the present times. Naturally, the software technologies have to be in tandem with the changes occurring in the areas of hardware for high end performances. 
                                             To this end, the present version of in house code was developed using Substructure and Multithreading (<b>SMT</b>) concept since 2005, which suits our requirements. This concept is extendable to large scale parallelization, which is the one of the objectives of this developmental work. The present version is aptly named <b>FEAST<sup>SMT</sup></b>.
                                         </p>
                                         
                                         <p>
                                             <br>
                                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>FEAST<sup>SMT</sup></b>, supported by PreWin with state-of-the-art capabilities makes FEAST family comparable to other imported software of similar types. FEASTSMT/ PreWin are designed and implemented using object oriented paradigms, can work on UNIX, LINUX and Windows operating systems. In PreWin, the user can import/ export model data 
                                             generated using other proprietary software for solving using <b>FEAST</b> and visualization of results.
                                         </p>
                                                              
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                         
                    </div> 
            
            <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/feastforum" user="root" password="root"/> 
                    <sql:query dataSource="${snapshot}" var="result"> SELECT * from noticeboard; </sql:query> 
                    <table border="1" width="300" alignment="" style="border-color: tomato;margin:  -700px 00px 0px 1190px;text-indent: 0pt;background: lightgray"> 
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
                         <p>
                             <a href=<c:out value="${row.location}"/><b><c:out value="${row.content}"/></b> <font color="red">  </font></a><img src=".//images/new.gif"/><br>
                         </p>
                         
                         
                     </div>

                </td> 
         
            </tr>
            </c:forEach> 
            
        </table>     
                    
                  <div style="text-indent: 30px;margin: 360px 0px 0px 0px">
                      <img src="images/buckc.gif" alt="" width="200" height="120" />
                 </div>
                  <div style="margin: -100px 0px 0px 1250px">
                 <img src="images/gap-test.gif" alt="" />
                 </div>  
                    
                    
                    <br><br><br><br><br><br><br>

                     <div id="banner_image" style="alignment-adjust: central;margin: -120px 0px 0px 250px">
                <div id="slider-wrapper">        
                    <div id="slider" class="nivoSlider">
                        <img src="images/test6.jpg" alt="" />
                        <img src="images/test.jpg" alt="" />
                        <img src="images/test1.gif" alt="" />
                        <img src="images/test3.gif" alt="" />
                        <img src="images/test2.jpg" alt="" />
                        <img src="images/test4.jpg" alt="" />
                        <img src="images/test5.gif" alt="" />                       
                        
                        <!img src="images/ctsm1.gif" alt="" />
                    </div><!--close slider-->
                </div><!--close slider_wrapper-->
            </div><!--close banner_image-->	
                    
		 </div><!--box about close-->
                 
                 <div class="footer" style="width: 1500px;margin: -150px 0px 0px 100px">  
                
				<div>
                                    <ul>
					<li>
                                            <h1 style="color: white">FEAST Documentry</h1>
                                            <a href="ftp://localhost/FEASTDocumentary.flv"><img src="images/feastdocu.JPG" alt=""/><span></span></a>
					</li>   
                                        
                                    </ul>
				</div>
		</div>
                 
                </div><!--body close--> 
		
                <div class="footnote">
                    <br>
                    <div style="background: gray;text-indent: 450pt;width: 1500px;margin: -20px 0px 0px 100px;color: white">
                                <p>&copy; 2017 BY VSSC | ALL RIGHTS RESERVED</p>
                        </div>
                    <br><br>
                </div>
		
	</div>
</body>
</html>
