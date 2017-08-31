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
        <title>Add Staff</title>
    </head>
    <body>
        <%
        String name=request.getParameter("name");
        String hadd=request.getParameter("hadd");
        String phn=request.getParameter("ec");
        String wh=request.getParameter("wh");
        String type=request.getParameter("type");
         
         try {
                 
                    Class.forName("com.mysql.jdbc.Driver");
                    String CONNECTIONADD="jdbc:mysql://localhost/ghi";
                Connection con=DriverManager.getConnection(CONNECTIONADD,"root","");
                PreparedStatement ps=con.prepareStatement("INSERT INTO staff(name,address,phone,wh,type) VALUES (?,?,?,?,?)");
                ps.setString(1,name);
                ps.setString(2,hadd);
                ps.setString(3,phn);
                ps.setString(4,wh);
                ps.setString(5,type);
                ps.executeUpdate();
            %>
            
            <script>
                (window.location.href="../staffs.jsp");
           </script>
            <%
            } catch (Exception ex) {
              out.println("error occured "+ex);  
            }
                   %><% finally{ %><script>alert("An error occured");</script>
<script>
                (window.location.href="../staffs.jsp");
           </script>
           <% }%>
    </body>
</html>
