<%-- 
    Document   : FEASTlogin64bit
    Created on : 28 Mar, 2017, 2:55:20 PM
    Author     : user
--%>

<%@page import="java.net.URL"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FEAST32Bit</title>
    </head>
    <body>
        <%@ page  import="java.io.FileInputStream" %>
        <%@ page  import="java.io.BufferedInputStream"  %>
        <%@ page  import="java.io.File"  %>
        <%@ page import="java.io.IOException" %>


<%!
    public  boolean download()
    {
        try
        {
        URL url = new URL("ftp://localhost/Login64bit.exe");
        URLConnection connection = url.openConnection();
        InputStream stream = connection.getInputStream();
        BufferedInputStream in = new BufferedInputStream(stream);
        FileOutputStream file = new FileOutputStream("C:\\Users/user/Downloads/Login64bit.exe");
        BufferedOutputStream out1 = new BufferedOutputStream(file);
        System.out.println("successfully downloaded");
        int i;
        while ((i = in.read()) != -1) {
            out1.write(i);
        }

        out1.flush();
        in.close();
        file.close();
        out1.close();
        stream.close();
         return true;
        }
        catch(Exception e)
        {
            System.out.println("exception "+e);
            return false;
        }
       
    }
%>
<%
    File file=new File("C:\\Users/user/Downloads/Login64bit.exe");
    if(file.exists())
    {
        System.out.println("File already downloaded");
        
    }
    else
    {
        boolean val=download();
        System.out.println("the download value returned is "+val);
    }
 %>
    <script type="text/javascript">          
        <jsp:forward page="login.jsp" /> 
    </script>                   
    </body>
</html>

