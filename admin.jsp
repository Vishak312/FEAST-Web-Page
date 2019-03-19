<%-- 
    Document   : admin
    Created on : 27 Jun, 2017, 2:05:42 PM
    Author     : user
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/stylelogin.css">      
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<link rel="stylesheet" type="text/css" href="css.css">
	<script type="text/javascript"></script>
        <title> Admin Login </title>
    </head>
    <body style="background: gray no-repeat center;background-size: cover;
	background-size: cover; ; ">
       
      <div id="page1">
		<div id="header">
			<div>
				<!--a href="index.html" class="logo"><img src="logo.png" alt=""></a-->
				<ul id="navigation">
					<li>
						<a href="index.jsp">Home</a>
					</li>
					<li >
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
                                        
                                        <li class="selected">
                                            
                                            <a href="adminlogin.jsp" target="_newwindow" >Admin</a>
                                            
                                        </li>
				</ul>
			</div>
		</div>
                    <div id="body" class="home">             

                        <div class="container">
                            <div class="top">
                                    <h1 id="title" class="hidden">ADMIN LOGIN</h1>
                            </div>
                            <div class="login-box animated fadeInUp">
                                <div class="box-header" style="text-indent: -520pt">
                                        <h2>Log In</h2>
                                </div>
                                <form name="login" action="adminlogin.jsp" method="POST">
                              
                                    <label for="username">Username</label>
                                    <br/>
                                    <input type="text" name="username" id="username"  value="">
                                   
                                    <br/>
                                    <label for="password">Password</label>
                                    <br/>
                                    <input type="password" name="password" id="password" value="">
                                    <br/>
                                    <td><input type="submit" value="Sign In" name="Submit" /></td>   
                                    <br/>
                                </form>
                           </div>
                        </div>              <br><br><br><br>                                    
                </div>
      </div>
    </body>  
</html>

