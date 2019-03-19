<%-- 
    Document   : about.jsp
    Created on : 24 Jan, 2017, 4:41:46 PM
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
        <title> Login Page </title>
    </head>
    <body style="background: url(./images/photo_bg.jpg) no-repeat center;background-size: cover;
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
                                        
					<li class="selected">
                                            <a href="login.jsp">Login</a>	
					</li>                                        
				</ul>
			</div>
		</div>
                    <div id="body" class="home">             

                        <div class="container">
                            <div class="top">
                                    <h1 id="title" class="hidden">FEAST LOGIN</h1>
                            </div>
                            <div class="login-box animated fadeInUp">
                                <div class="box-header" style="text-indent: -520pt">
                                        <h2>Log In</h2>
                                </div>
                                <form name="login" action="checklogin.jsp" method="POST">
                              
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
                        <div style="text-indent: 490pt;font-size: 20px;font-style: italic;color:green ">  
                            <p>Not a Registered User? <a href="regdb.jsp" style="color: black"/> Click Here</p>
                        </div>      
                </div>
          

      </div>
    </body>
    
    <script>
       /* 
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#username').focus(function() {
		$('label[for="username"]').addClass('selected');
	});
	$('#username').blur(function() {
		$('label[for="username"]').removeClass('selected');
	});
	$('#password').focus(function() {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function() {
		$('label[for="password"]').removeClass('selected');
	});
        */
</script>
    
    
</html>
