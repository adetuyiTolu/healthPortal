<%-- 
    Document   : delete
    Created on : Mar 7, 2013, 2:05:00 PM
    Author     : Slimfit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%
     String name=request.getParameter("name");
       String user=request.getParameter("user");   
         try {
                 
                    Class.forName("com.mysql.jdbc.Driver");
                    String CONNECTIONADD="jdbc:mysql://localhost/ghi";
                Connection con=DriverManager.getConnection(CONNECTIONADD,"root","");
                PreparedStatement ps=con.prepareStatement("DELETE FROM user where name=? && user=?");
                ps.setString(1,name);
                ps.setString(2,user);
                ps.executeUpdate();
            %>
            
            <script>
                (window.location.href="../system.jsp");
           </script>
            <%
            } catch (Exception ex) { 
              out.println("error occured "+ex);  
            }
            %><script>alert("An error occured");
            (window.location.href="../system.jsp");</script>
    </body>
</html>
