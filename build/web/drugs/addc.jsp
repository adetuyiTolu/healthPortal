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
                PreparedStatement ps=con.prepareStatement("INSERT INTO drugs(name,price) VALUES (?,?)");
                ps.setString(2,price);
                ps.setString(1,name);
               
                ps.executeUpdate();
            %>
            
            <script>
               alert("Drug successfully added");
                (window.location.href="../drugs.jsp");
           </script>
            <%
            } catch (Exception ex) {
              out.println("error occured "+ex);  
            }
                   %><% finally{ %>
<script>
              (window.location.href="../drugs.jsp");
           </script>
           <% }%>
    </body>
</html>
