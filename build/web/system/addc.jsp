<%-- 
    Document   : addc
    Created on : Mar 7, 2013, 12:48:50 PM
    Author     : Slimfit
--%>
  <%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Wards</title>
    </head>
    <body>
        <%
         String user=request.getParameter("user");
        String name=request.getParameter("name");
        String pass=request.getParameter("pass");
        
         try {
                 
                    Class.forName("com.mysql.jdbc.Driver");
                    String CONNECTIONADD="jdbc:mysql://localhost/ghi";
                Connection con=DriverManager.getConnection(CONNECTIONADD,"root","");
                PreparedStatement ps=con.prepareStatement("INSERT INTO user(user,pass,name) VALUES (?,?,?)");
                ps.setString(1,user);
                ps.setString(3,name);
                ps.setString(2,pass);
              
                ps.executeUpdate();
            %>
            
            <script>
               
                (window.location.href="../system.jsp");
           </script>
            <%
            } catch (Exception ex) {
              out.println("error occured "+ex);  
            }
                   %><% finally{ %>
<script>
              (window.location.href="../system.jsp").fadeIn(2100,'swing');
           </script>
           <% }%>
    </body>
</html>
