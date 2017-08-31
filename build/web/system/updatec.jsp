<%-- 
    Document   : addc
    Created on : Mar 7, 2013, 12:48:50 PM
    Author     : Slimfit
--%>
  <%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
       
         
         try {
        String name=request.getParameter("name");
        String user=request.getParameter("user");
        String pass=request.getParameter("pass");
       Class.forName("com.mysql.jdbc.Driver");
                    String CONNECTIONADD="jdbc:mysql://localhost/ghi";
                Connection con=DriverManager.getConnection(CONNECTIONADD,"root","");
                PreparedStatement ps=con.prepareStatement("UPDATE user SET user=?,pass=? WHERE name=?");
                ps.setString(1,user);
                ps.setString(2,pass);
                 ps.setString(3,name);
                ps.executeUpdate();
                
            %>
            <script>
                
                (window.location.href="../system.jsp");
           </script>
            <%
            } catch (Exception ex) {
              out.println("error occured "+ex);  
            }
            %><script>alert("An error occured");</script>
            <script>
                (window.location.href="../system.jsp");
           </script>
