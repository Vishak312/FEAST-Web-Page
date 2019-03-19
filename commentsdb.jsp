<%-- 
    Document   : commentsdb
    Created on : 29 Mar, 2017, 10:41:30 AM
    Author     : user
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%!
                boolean val;
                boolean flag;
                PreparedStatement pst;
                ResultSet rs;
                java.sql.Connection con;
              %>
              <%
                          String url="jdbc:mysql://localhost:3306/feastforum";
                          String username1="root";
                          String password1="root";
                          Class.forName("com.mysql.jdbc.Driver");
                          con=DriverManager.getConnection(url,username1,password1);
                          System.out.println("Database connection established");
              %>
                <%
                          String name=request.getParameter("Name");
                          String email=request.getParameter("Email Address");
                          String subj=request.getParameter("Subject");
                          String msg=request.getParameter("message");  
                          
                          System.out.println("Name "+name);
                          System.out.println("Email address "+email);
                          System.out.println("Subject "+subj);
                          System.out.println("Message "+msg);                                                    
                %>
                <%!
                  public  boolean suggetions(String name,String email,String subj, String msg)
                {
                   try
                   {
                        pst=con.prepareStatement("insert into comments(name,email,subj,msg)values ( ? , ? , ? , ?) ");
                        System.out.println("name "+ name);
                        System.out.println("Email address "+email);
                          System.out.println("Subject "+subj);
                        System.out.println("Message"+ msg);

                        pst.setString(1, name);
                        pst.setString(2, email);
                        pst.setString(3, subj);
                        pst.setString(4, msg);                                                                         
                        if(pst.executeUpdate()==1)
                        {
                                System.out.println("new Suggetion added success");
                        }
                    else
                        {
                                System.out.println("not Success");
                        }
                   }
                   catch(Exception e)
                   {
                        System.out.println(e);   
                   }

                   return true;
                   }
                %>
                <%
                           val=suggetions(name,email,subj,msg);
                           System.out.println("values returned "+val);
                 %>      
  <c:choose>
    <c:when test="<%=val%>">        
        <script>
            function commentPost() 
            {
                
                    window.alert("Your Suggetion posted Successfully");
                    document.location.href = "loginsuccess.jsp";
               
            }
            commentPost();
        </script>
        
    </c:when>
    <c:otherwise> 
        <script>
           function commentPost() 
           {               
                   window.alert("Error while posting your message");
                   document.location.href = "loginsuccess.jsp";              
           }
           commentPost();
        </script>
    </c:otherwise>
</c:choose>
    </body>
</html>
