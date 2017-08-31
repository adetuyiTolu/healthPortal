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
        String hadd=request.getParameter("wardn");
        String price=request.getParameter("price");
       Class.forName("com.mysql.jdbc.Driver");
                    String CONNECTIONADD="jdbc:mysql://localhost/ghi";
                Connection con=DriverManager.getConnection(CONNECTIONADD,"root","");
                PreparedStatement ps=con.prepareStatement("UPDATE wards SET charge=?,name=? WHERE name=?");
                ps.setString(1,price);
                ps.setString(2,hadd);
                ps.setString(3,name);
                 PreparedStatement ps2=con.prepareStatement("UPDATE beds SET ward=? WHERE ward=?");
                ps2.setString(1,hadd);
                ps2.setString(2,name);
                 PreparedStatement ps3=con.prepareStatement("UPDATE admission SET ward=? WHERE ward=?");
                ps3.setString(1,hadd);
                ps3.setString(2,name);
                ps3.executeUpdate();
                ps.executeUpdate();
                 ps2.executeUpdate();
            %>
            <script>
                (window.location.href="../wards.jsp").fadeIn(2100,'swing');
           </script>
            <%
            } catch (Exception ex) {
              out.println("error occured "+ex);  
            }
            %><script>alert("An error occured");</script>
            <script>
                (window.location.href="../wards.jsp").fadeIn(2100,'swing');
           </script>
