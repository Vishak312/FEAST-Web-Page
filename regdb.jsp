<%-- 
    Document   : reg
    Created on : 23 Feb, 2017, 9:39:17 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">	       
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<link rel="stylesheet" type="text/css" href="css.css">
	<script type="text/javascript"></script>
        <title>Register</title>
    </head>
    <body style="background: url(./images/bj.jpg) ; ">
          
        <div id="header" style="background: none">                                    
              
               <div style="font-size: 30pt;font-family: serif;font-style: italic;text-indent: -50pt; color: skyblue">
               <h1>Registration Page</h1>
               </div> </div>
        <br><br>
                   <div style="text-align: justify;font-size: 20pt;font-style: normal;color: yellow">
                  <center>
                        <form name="register" action="reg.jsp"  method="POST">
                             </center>
                            &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp;&emsp; Name &emsp;<input type="text" name="name"  value="" />
                        
                         &emsp;Employee ID&emsp;&emsp;<input type="text" name="ID" value="" /><br></br>
                       
                         &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp;Email ID &emsp;<input type="text" name="email" value="" />
                         &emsp;&emsp;&emsp;&nbsp;&nbsp; Gender &emsp;&nbsp;<select name="gender">
                            <option>Male</option>
                            <option>Female</option>
                            <option>Other</option>
                         </select>
                         <br></br>                     
                         &emsp;&emsp; &emsp;&emsp;  &emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &nbsp;Address &emsp;<textarea name="address" rows="3" cols="15">
                        </textarea>
                         &emsp;&emsp; &emsp;&emsp; Area &emsp;&emsp;<select name="area">
                              <option>ATF</option>
                              <option>70Acre</option>
                              <option>Project Complex</option>
                              <option>RFF</option>
                              <option>RPP</option>
                              <option>SPL</option>
                              <option>TERLS</option>
                              <option>VRC</option>
                          </select>
                        <br></br>
                        &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp; &nbsp; Username &emsp;<input type="text" name="username" value="" /><br></br>
                         &emsp;&emsp; &emsp;&emsp;  &emsp;&emsp; &emsp;&emsp;&emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp;password &emsp;<input type="password" name="password" value="" />
                        confirm password &emsp;<input type="password" name="Cnfpassword" value="" />
                        <br></br> 
                   
                    <center>
                        <div style="text-indent: -120pt">
                            <td><input type="submit" value="Register" name="Submit" /></td>                  
                            </form>                          
                             <td><a href="login.jsp" target="_parent"><input type="submit" value="Cancel"/></a></td>
                        </div>  
                    </center>  
                   
                    </div>
                       
                   <br></br><br></br><br></br><br></br> <br></br><br></br>
                  
                   
                   
              <div id="footer">
			<div class="connect">
				<div>
					<h1>FOLLOW OUR  MISSIONS ON</h1>
					<div>
						<a href="http://freewebsitetemplates.com/go/facebook/" class="facebook">facebook</a>
						<a href="http://freewebsitetemplates.com/go/twitter/" class="twitter">twitter</a>
						<a href="http://freewebsitetemplates.com/go/googleplus/" class="googleplus">googleplus</a>
						<a href="http://pinterest.com/fwtemplates/" class="pinterest">pinterest</a>
					</div>
				</div>
			</div>
			<div class="footnote">
				<div>
					<p>&copy; 2017 BY VSSC | ALL RIGHTS RESERVED</p>
				</div>
			</div>
		</div>
         
    </body>
</html>
