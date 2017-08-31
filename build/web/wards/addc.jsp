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
        String name=request.getParameter("name");
        String price=request.getParameter("price");
        
         try {
                 
                    Class.forName("com.mysql.jdbc.Driver");
                    String CONNECTIONADD="jdbc:mysql://localhost/ghi";
                Connection con=DriverManager.getConnection(CONNECTIONADD,"root","");
                PreparedStatement ps=con.prepareStatement("INSERT INTO wards(charge,name) VALUES (?,?)");
                ps.setString(2,name);
                ps.setString(1,price);
              
                ps.executeUpdate();
            %>
            
            <script>
               
                (window.location.href="../wards.jsp");
           </script>
            <%
            } catch (Exception ex) {
              out.println("error occured "+ex);  
            }
                   %><% finally{ %>
<script>
              (window.location.href="../wards.jsp").fadeIn(2100,'swing');
           </script>
           <% }%>
    </body>
</html>
