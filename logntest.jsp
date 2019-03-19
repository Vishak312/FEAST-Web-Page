<%-- 
    Document   : logntest
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
                %>
              
                </div>
                <%
                
                %>
            
             <div id="body" class="home">           
             <img src="images/banner2.png"  style="margin: 0px 0px 0px 100px"/>
            
            <div class="boxlogin">
              
                <center>
                    <br><br>
                    <div style="color: black;text-align: right;font-size: 24pt;"> 
                      <% 
                          String username=session.getAttribute("username").toString();
                          System.out.println("the session attribute is "+username);
                      %> 
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
                
                <a href =login.jsp 
                   <%
                   /*
                    Calendar date1 =Calendar.getInstance();
                    int second1 = date.get(Calendar.SECOND);
                    int minute1 = date.get(Calendar.MINUTE);
                    int hour1 = date.get(Calendar.HOUR);
                    String logouttime=+hour+" : "+minute+": "+second;
                    System.out.println("login time :" +logouttime);
                    status="LOGIN";
                    System.out.println("username" + username);	
                    System.out.println("logintime " + logintime);
                    System.out.println("logouttime" + logouttime);
                    int tsec=second1-second;
                    int tminute=minute1-minute;
                    int thour=hour1-hour;
                    int thour1=thour*60;
                    int tminute1=tminute;
                    int tsec1=(tsec/60);
                    int minutetotal=thour1+tminute1+tsec1;
                    System.out.println("hour in minute is "+thour1);
                    System.out.println("minute is "+thour1);
                    System.out.println("second in minute is "+tsec1);
                    System.out.println("total used time in minute is "+minutetotal);
                    String totaltime=Integer.toString(minutetotal);
                    System.out.println("totaltime" + totaltime);
                    System.out.println("Status " + status);
                    ps=con.prepareStatement("update used set logouttime=?,totaltime=?,status=? where logintime=? username=? logdate=? ");
                    ps.setString(1, logouttime);
                    ps.setString(2, totaltime);
                    ps.setString(3, status);
                    ps.setString(4, logintime);
                    ps.setString(5, username);
                    ps.setString(6, lndate);
                    if(ps.executeUpdate()==1)
                    {
                            System.out.println("logout details entered successfully");
                    }
                    else
                    {
                            System.out.println("logout details not entered successfully");
                    }
                   */
                   %>
                    ><img src="images/logout.png" style="color: blue;;width: 210px;height: 40px;"></a>                                     </li>
                <!marquee>
                </div>
                </ul>
            </div>
                 <%
                  
                    %>
                
       
                
                <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/feastforum" user="root" password="root"/> 
                    <sql:query dataSource="${snapshot}" var="result"> SELECT * from noticeboard; </sql:query> 
                    <!--table border="10" width="300" alignment="" style="border-color: tomato;margin:  -400px 00px 0px 1190px;text-indent: 0pt"> 
                  
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
                         <!--p>
                             <a href=<c:out value="${row.location}"/>><b><font color="white"><c:out value="${row.content}"/></font></b> <font color="red">  </font></a><img src=".//images/new.gif"/><br>
                         </p>
                         
                         
                     </div>

                </td> 
         
            </tr>
            </c:forEach> 
        </table--> 
            
  
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


                <!--jsp:forward page="index.jsp"/-->
                  <!--script>

                  //function regPost() 
                  //{
                         <!--jsp:forward page="index.jsp"/-->
                  //}

              <!--/script-->
                                                      
            <!-- 
            //}
            //loginPost();
        </script>
        -->