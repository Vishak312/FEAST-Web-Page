<%-- 
    Document   : suggetions
    Created on : 14 Mar, 2017, 3:26:24 PM
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
        <title>Suggetions</title>
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
                          String msg=request.getParameter("message");                                                 
                          //System.out.println("Name "+name);
                         // System.out.println("Message "+msg);                                                    
                %>
                <%!
                  public  boolean suggetions(String name,String msg)
                {
                   try
                   {
                        pst=con.prepareStatement("insert into suggetion values( ? , ?) ");
                        System.out.println("name "+ name);
                        System.out.println("Message"+ msg);

                        pst.setString(1, name);
                        pst.setString(2, msg);                                                                         
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
                           val=suggetions(name,msg);
                           System.out.println("values returned "+val);
                 %>               
                <c:if test="<%=val=true%>">       
                  <%
                        String message = "Your message send Successfully";
                        System.out.println("sending success");
                 %>   
                <script type="text/javascript">
                    alert('<%=message%>');               
                </script>
                <script type="text/javascript">
                    <jsp:forward page="index.jsp" />
                </script>                   
                   
             </c:if>
    </body>
</html>
