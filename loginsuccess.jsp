<%-- 
    Document   : loginsuccess
    Created on : 20 Jun, 2017, 11:28:25 AM
    Author     : user
--%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.zip.ZipFile"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.zip.ZipEntry"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.net.Socket"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.sun.faces.facelets.util.Path"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta name="viewport" content="width=100%, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css.css">
<link rel="stylesheet" href="css/style.css" type="text/css">
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
<script type="text/javascript">
   <!--
   function msg()
   {
       alert("success");
       //document.write("login success");
   }
</script>
<title>FEAST</title>
</head>
<body>
    
   <div id="page">
            <br><br><br><br><br><br><br><br>
                <div style="margin: -140px 10px 10px 1000px;color: red;font-size: 24pt;float: right">
                <!--h2 style="text-indent: 290pt;color: white;">Date:</h2-->
                <%
                    String pageuser=session.getAttribute("user").toString();
                    System.out.println("session attribute value is "+pageuser);
                 %>
                 <%!

                        boolean val;
                        String name;
                        PreparedStatement ps;
                        ResultSet rs;
                        java.sql.Connection con;
                        static String status;
                %>
                <%
                        String url="jdbc:mysql://localhost:3306/feast";
                        String username1="root";
                        String password1="root";
                        Class.forName("com.mysql.jdbc.Driver");
                        con=DriverManager.getConnection(url,username1,password1);
                        System.out.println("Database connection established");
                %>
                <%!
                    public String selectuser(String username)
                    {
                        String str = "";
                        try
                        {
                                ps = con.prepareStatement("select name from users where userID= ? ");
                                ps.setString(1, username);
                                rs=ps.executeQuery();
                                if(rs.next())
                                {
                                        str= rs.getString(1);
                                        System.out.println(str);
                                }
                        }
                        catch(Exception e)
                        {
                                System.out.println(e);
                        }
                        return str;

                    }
                 %>           
                <%
                    Date dNow = new Date( );
                    SimpleDateFormat ft =
                    new SimpleDateFormat ("E dd/MM/yyyy");
                 %>
               
                 <%
                    out.print( "<p align=\"center\">" + ft.format(dNow) + "</p>");
                %>
              
                </div>
                <%
                    name=selectuser(pageuser);
                    session.setAttribute("nameofuser", name);
                %>
            
             <div id="body" class="home">           
             <img src="images/banner2.png"  style="margin: 0px 0px 0px 100px"/>
            
            <div class="boxlogin">
              
                <center>
                    <br><br>
                    <div style="color: black;text-align: right;font-size: 24pt;"> 
                       <p>Welcome : <%= name%></p>
                    </div>
                </center>
                    
                   <div id="banner_image" style="alignment-adjust: central;margin: -30px 0px 0px 300px">
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
                      
                    
                
                 <!--buttons-->    
                 <div class="blogloginsuccess" style=""><br><br><br><br>
                     
                     <!-- slider image start-->
                 
                 <!div class="zoom_img">
                <ul>
                <!input type="submit" value="vision" name="vision" size="" />
                <!marquee behaviour="alternate" width="350" direction="up" border="0" scrollamount="5" onmouseover="this.stop()" onmouseout="this.start()">
              <div class="zoom_img">
                <a href = "execute.jsp"><img src="images/execute.png" style="color: blue;;width: 210px;height: 40px;"></a>                
                <a href="usage.jsp"><img src="images/usage.png" style="width: 210px;height: 40px;"></a>
                <a href="download.jsp"><img src="images/download.png" style="width: 210px;height: 40px;"></a>
                
                <a href =login.jsp><img src="images/logout.png" style="color: blue;;width: 210px;height: 40px;"></a>                                     </li>
                <!marquee>
                </div>
                </ul>
            </div>
        </div><!--box close-->
        
        <div class="footer" style="width: 1500px;margin: -50px 0px 0px 100px">                  
				<div>
                                    <ul>
					<li>
                                            <h1>FEAST Documentry</h1>
                                            <a href="ftp://10.43.15.38/FEASTDocumentary.flv" target="_newwindow"><img src="images/feastdocu.JPG" alt=""/><span></span></a>
					</li>   
                                    </ul>
				</div>
                           
                             <ul>
                        <li><a href="docs/tutorial.pdf" target="_newwindow"> <p style="font-size:24px;font-family: monospace; color:white;margin: -300px 0px 0px 800px"><img src="images/bullets.png">FEAST Tutorials</p></a></li>
                        <li><a href="support.jsp"><p style="font-size:24px;font-family: monospace; color:white;margin: -250px 0px 0px 800px"><img src="images/bullets.png">Platform Support</p></a></li>
                        <li><a href="docs/brochure.pdf" target="_newwindow"> <p style="font-size:24px;font-family: monospace; color:white;margin: -200px 0px 0px 800px"><img src="images/bullets.png">FEAST Brochure</p></a></li>
                        <li><a href="http://10.41.7.67/mediawiki/index.php/Main_Page"> <p style="font-size:24px;font-family: monospace;; color:white;margin: -150px 0px 0px 800px"><img src="images/bullets.png">Intranet Wikipedia</p></a></li>
            
                    </ul>
            
		</div>
        
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
                    
                  
			
		<div style="color: white;text-indent: 350pt;background: gray">
                        <p> Copyright &copy; 2017 BY Vikram Sarabhai Space Centre | ALL RIGHTS RESERVED</p>
                    </div>
			
	</div>
</body>      
</html>
    
 