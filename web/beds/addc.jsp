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
        String ward=request.getParameter("ward");
        String code=request.getParameter("code");
        
         try {
                 
                    Class.forName("com.mysql.jdbc.Driver");
                    String CONNECTIONADD="jdbc:mysql://localhost/ghi";
                Connection con=DriverManager.getConnection(CONNECTIONADD,"root","");
                PreparedStatement ps=con.prepareStatement("INSERT INTO beds(ward,code,status) VALUES (?,?,?)");
                ps.setString(1,ward);
                ps.setString(2,code);
                ps.setString(3, "nil");
                ps.executeUpdate();
            %>
            
            <script>
               alert("Bed successfully added");
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
