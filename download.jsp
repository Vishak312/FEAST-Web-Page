<%-- 
    Document   : download
    Created on : 17 May, 2017, 4:43:40 PM
    Author     : user
--%>

<%@page import="java.net.InetAddress"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>
            <div style="color: red"</div>
        </p>
    </body>
    
      
     <%
          File file = new File("D:\\vishak/netbeans pjct/FEAST Site/setup32bit.exe");  
          response.setContentType("application/octet-stream");  
          response.setContentLength((int) file.length());  
          response.setHeader("Content-Disposition",  
          "attachment; filename=\"" + file.getName() + "\"");  
          InputStream in = new BufferedInputStream(new FileInputStream(file));  
          OutputStream output = response.getOutputStream();  
          byte[] buffer = new byte[4096];  
          while (true) {  
         int bytesRead = in.read(buffer, 0, buffer.length);  
         if (bytesRead < 0)  
            break;  
         output.write(buffer, 0, bytesRead);  
      }  
      output.flush();  
      output.close();  
      in.close();  
     %>
   
</html>

