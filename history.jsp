<%-- 
    Document   : history
    Created on : 8 Jun, 2017, 2:14:06 PM
    Author     : user
--%>

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
	<title>FEAST-History</title>
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
                <img src="images/banner2.png" height="10%" style="margin: 0px 0px 0px 100px"/>
                <div class="boxhistory">
              
                
                 <!--buttons-->    
                 <div class="bloghistory" style="">
                 <!div class="zoom_img">
                <ul>
                <!input type="submit" value="vision" name="vision" size="" />
                <!marquee behaviour="alternate" width="350" direction="up" border="0" scrollamount="5" onmouseover="this.stop()" onmouseout="this.start()">
              <div class="zoom_img">
                <a href ="vision.jsp"><img src="images/visionlist.png" style="color: blue;;width: 210px;height: 40px;"></a>                
                <a href="history.jsp"><img src="images/history.png" style="color: blue;;width: 210px;height: 40px;"></a>
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
                <!-- <div style="margin: -250px 0px 0px 30px">
                 <img src="images/buckc.gif" alt="" />
                 </div>
                  <div style="margin: 50px 0px 0px 30px">
                 <img src="images/gap-test.gif" alt="" />
                 </div>
                -->
            </div>
                <!-- slider image start
                 <div id="banner_image" style="alignment-adjust: central">
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
            <!--/div><!--close banner_image: slider image end-->
  
            <!-- main content-->       
            <!--div class="header">
                            <div>
			 </div>
                        </div-->  
            <br><br><br><br><br><br><br><br><br>

             <div style="font-family: monospace;font-size: 48px;color: black;text-indent: 150px">
                           HISTORY
                                </div>
          
                           <!--div style="overflow:scroll;color: white;height:480px;width:1000px;overflow:auto;margin:0px 0px 0px 120px; "-->
                 <div style=" overflow: scroll;width: 900px;height:600px;overflow: auto;padding: 0px 0px 0px 50px; border: 5px;margin: 20px 10px 250px 200px;text-indent: 100px; font-size: 16px;text-align: justify;color: black">          
                        <table border="1" alignment="center" style="border-color: green;background: lightyellow;">
                           
                            
                               
                            
                            <tbody>
                                <tr>
                                    <td>
                                        <p style="color: black;font-family: cursive">
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Structures Division of VSSC has taken the initiative of developing a general purpose finite element program for structural analysis, as early as 1977 with the satellite launch vehicle programme of India being on a steady path of growth from SLV -3 to ASLV and other advanced space programmes. 
                                          A task team was constituted by the then Group Director of ADDG, Shri. A.P.J. Abdul Kalam,later the President of India, to consolidate the requirements and a development team was formed with Dr.G.V.Rao as team leader to develop a software for the finite element analysis of structures with the acronym 'FEAST'. 
                                          Initial development of the package was carried out on an IBM-360/44 system with a 256 KB memory and a punch card system. The development team realized the first phase of the package by 1981 and Shri. A.P.J. Abdul Kalam 
                                          arranged a review of the package by external experts including the first professor to have introduced finite elements in India, Prof.A.K.Rao, IISc, Bangalore and other eminent experts. With an excellent review report from the meet, 
                                          structures group has taken up the further development of the package. As the launch vehicle programme has evolved into a multi project system, the analysis requirements have also increased and evolved into a multi facet and inter disciplinary tasks and accordingly the FEAST software development has been continuing over the years to meet the same. 
                                        </p>
                                        
                                        <p style="color: black;font-family: cursive">
                                            <br>
                                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Further development of the package has taken advantage of file systems and interactive computing with the availability of CDC 170 /730 and later CDC 180 / 830 systems and user terminals. With the availability of graphic terminals, the development of graphics package like SHOFEM to display the FE models, 
                                            deformed configurations and mode shapes was also developed. 
                                            
                                        </p>
                                        
                                        <p style="color: black;font-family: cursive">
                                            <br>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;With the advent of personal computers, the computing environment has been revolutionized and FEAST development has taken advantage
                                            of the additional features and provisions to make FEAST family of software available in PCs in DOS environment and the need for a graphics package in Windows has taken shape. 
                                            The development of a pre and post processor package PreWin, with a user friendly Graphical user interface has been started in 1991 and within a few months, 
                                            the PreWin version 1.0 of the package with regularly used data generation and display features was released.
                                        </p>
                                        <p style="color: black;font-family: cursive"><br> 
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User meets, feed back sessions and the availability of third party software like NASTRAN, MARC, and NISA have provided the details required for planning the future advancements and upgrades of the FEAST family.
                                             To meet the composite and nonlinear analysis requirements, development teams have been formed and the teams have realized the various versions of FEAST - C and FEAST - NL packages. Various updates and augmentations 
                                             have been carried out on FEAST - C to make the package the final workhorse and of late various additional elements and Fracture and Fatigue modules have been implemented besides most of the elements of basic FEAST. 
                                            
                                        </p>
                                        
                                        <p style="color: black;font-family: cursive">
                                            <br>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In, 1995-promotion marketing for FEAST was initiated under the Directorship of Dr.S.Srinivasan and FEAST was provided to industries and free version was issued to educational institutions.
                                          In 1999 / 2000, the then Director VSSC and the present Chairman, ISRO Dr. G. Madhavan Nair constituted an Expert committee to review the consolidated software requirements and recommend 
                                          the future activities on the software development. The committee submitted its report and as one of the top priority developments software development for the thermal analysis of structures 
                                          was assigned to an Inter-entity and inter group working group. The working group realized the FEAST - HT(version 1.0) and was released to users along with much improved and supporting PreWin (version 4.0). 
                                          By 2002, FEAST has emerged with a family of software called FEAST-B, FEAST-C, FEAST-HT and FEAST-NL along with PreWin. FEAST/PreWin is available on Windows/DOS platform for computational purpose. 
                                          It can be loaded in network PC at the central server for multi-user access. The chronological order of FEAST Development is as follows:  
                                        
                                        </p>
                                        <br>
                                        <p>
                                        <div>
                                        <ul>
                                            <li>
                                                1977 - Initiation of FEAST Development
                                            </li> 
                                            <li>
                                                1981 - Realization of Phase I of FEAST
                                                 </li> 
                                            <li>
                                                1984 - Realization of Phase II of FEAST
                                             </li> 
                                            <li>   
                                                1990 - Parallelization of FEAST
                                            </li>
                                            <li>
                                                1991 - Initiation of FEAST-C
                                             </li> 
                                            <li>  
                                                1991 - Initiation of Pre and Post processor PreWin 1.0
                                              </li> 
                                            <li> 
                                                1994 - Realization of FEAST-C 1.0
                                               </li> 
                                            <li>
                                                1994 - Realization of PreWin 2.0
                                              </li> 
                                            <li> 
                                                1995-97 - Promotional Marketing
                                             </li> 
                                            <li>  
                                                1997 - Initiation of FEAST-NL
                                               </li> 
                                            <li> 
                                                1997 - Review of FEAST-C and PreWin
                                              </li> 
                                            <li>  
                                                1997 - First FEAST User's meet
                                              </li> 
                                            <li> 
                                                1998 - Realization of PreWin 3.0
                                              </li> 
                                            <li> 
                                                1999 - Realization of FEAST-NL 1.0
                                              </li> 
                                            <li>
                                                2000 - Initiation of FEAST-HT
                                              </li> 
                                            <li> 
                                                2000 - Realization of FEAST-HT 1.0
                                             </li> 
                                            <li>   
                                                2000 - Realization of PreWin 4.0
                                            </li> 
                                            <li> 
                                                2000 - Realization of FEAST-HT 2.0
                                                </li> 
                                            <li>
                                                2002 - Realization of FEAST-NL 2.0
                                                </li> 
                                            <li>
                                                2003 - Realization of FEAST-NL 3.0
                                                </li> 
                                            <li>
                                                2003 - Realization of FEAST-HT 3.0
                                                </li> 
                                            <li>
                                                2004 - Realization of PreWin 5.0
                                                </li> 
                                            <li>
                                                2005 - Realization of FEAST-C 3.0
                                                </li> 
                                            <li>
                                                2006 - Realization of PreWin 6.0
                                                </li> 
                                            <li>
                                                2007 - Realization of PreWin 7.0
                                                </li> 
                                            <li>
                                                2008 - Realization of FEAST-R 1.0 
                                                </li> 
                                            <li>
                                                2008 - Realization of FEAST-C 4.0 
                                                </li> 
                                            <li>
                                                2008 - Realization of PREWIN 7.1 
                                                </li> 
                                            <li>
                                                2008 - Realization of SMT 1.0
                                                </li> 
                                            <li>
                                                2009 - Realization of PREWIN 8.0
                                                </li> 
                                            <li>
                                                2009 - Realization of FEAST-NL 4.0
                                                </li> 
                                            <li>
                                                2009 - Realization of FEAST-R 2.0
                                                </li> 
                                            <li>
                                                2009 - Realization of STRUD 1.0
                                                </li> 
                                            <li>
                                                2010 - Realization of PREWIN 8.1
                                                </li> 
                                            <li>
                                                2010 - Realization of FEAST-C 4.1
                                                </li> 
                                            <li>
                                                2010 - Realization of SMT 1.1
                                                </li> 
                                            <li>
                                                2011 - Realization of PREWIN 9.0
                                                </li> 
                                            <li>
                                                2011 - Realization of SMT 2.0
                                                </li> 
                                            <li>
                                                2011 - Realization of FEAST-C 4.2
                                                </li> 
                                            <li>
                                                2012 - Realization of PREWIN 9.3
                                                </li> 
                                            <li>
                                                2012 - Realization of SMT 3.0
                                                </li> 
                                            <li>
                                                2014 - Realization of FEASTSMT 2014 R1
                                            </li>
                                        </ul>
                                        </div>
                                        </p>
                                        <p style="text-indent: 150pt;font-size: 48px;color: black;font-family: monospace">
                                            Contributors
                                        </p>
                                        <p>
                                            G.V.Rao ; 
                                            B.P.Shastry ; 
                                            K.Kanaka Raju ; 
                                            N.Muthiyalu ;
                                            K.T.Joseph; 
                                            A.M.Kulkarni ; 
                                            C.M.Chacko  ; 
                                            R.K.Srinivasan ;
                                            N.Asokarajan; 
                                            K.Singa Rao ; 
                                            M.N.Reddy ; 
                                            M.K.Jana ; 
                                            M.N.G.      
                                            Elayathu ; 
                                            K.Prabhakaran ;
                                            S.Yadagiri ; 
                                            V.K.Garg ; 
                                            B.Nageswara Rao; 
                                            Gajbir Singh ; 
                                            Bharat Bhushan Gupta ; 
                                            Shirish Mulmule ; 
                                            M.A.Sharma ; 
                                            A.V.Rao ; 
                                            E.M.Abdul Salam ; 
                                            R.Marimuthu; 
                                            P.Raveendranath ; 
                                            P.V. Anil Kumar ; 
                                            Rajeev G. Nair; 
                                            S. Sundaresan; 
                                            Sashi Bhushan Tiwari; 
                                            Khader Voli ; 
                                            Susamma Jacob ; 
                                            B.Sundar; 
                                            W.Bhanu; 
                                            B. Sivasubramonian ; 
                                            Md. Ishaquddin ; 
                                            T.J. Raj Thilak, 
                                            Dr. K. Jayakumar, 
                                            P. Deepak; 
                                            G. Sarangapani.
                                        </p>
                                        <br>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div> 
       
                
                <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/feastforum" user="root" password="root"/> 
                    <sql:query dataSource="${snapshot}" var="result"> SELECT * from noticeboard; </sql:query> 
                    <table border="1" width="300" alignment="" style="border-color: tomato;margin:  -900px 00px 0px 1190px;text-indent: 0pt;"> 
                  
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
            <div style="text-indent: -70px;margin: 350px 0px 0px 0px">
                 <img src="images/buckc.gif" alt="" />
                 </div>
                  <div style="margin: -130px 0px 0px 1250px">
                 <img src="images/gap-test.gif" alt="" />
                 </div>        
              <!-- slider image start-->
                 <div id="banner_image" style="alignment-adjust: central;margin: 50px 0px 0px 230px">
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
            </div><!--close banner_image: slider image end-->
  
        </div><!--box close-->
        
        <!--div class="footer" style="width: 1500px;height:420px;margin: -50px 0px 0px 100px">                  
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
			
                    <div class="header">
                        <!--div>
                                 
                            <a href="blog.jsp" class="more">Read More</a>
                	    <h3> </h3>					                                       
                        </div-->
                    </div> 
        <br><br>	
		 <div class="footnote">
                    <br>
                    <div style="background: gray;text-indent: 450pt;width: 1500px;margin: -260px 0px 0px 100px;color: white">
                                <p>&copy; 2017 BY VSSC | ALL RIGHTS RESERVED</p>
                        </div>
                    <br><br>
                </div>
	</div>
</body>
</html>

