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
        
         try {
                 
                    Class.forName("com.mysql.jdbc.Driver");
                    String CONNECTIONADD="jdbc:mysql://localhost/ghi";
                Connection con=DriverManager.getConnection(CONNECTIONADD,"root","");
                PreparedStatement ps=con.prepareStatement("DELETE FROM lab where name=?");
                ps.setString(1,name);
                ps.executeUpdate();
            %>
            
            <script>
                (window.location.href="../drugs.jsp");
           </script>
            <%
            } catch (Exception ex) { 
              out.println("error occured "+ex);  
            }
            %><script>alert("An error occured");
            (window.location.href="../drugs.jsp");</script>
    </body>
</html>
