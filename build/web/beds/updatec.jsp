<%-- 
    Document   : addc
    Created on : Mar 7, 2013, 12:48:50 PM
    Author     : Slimfit
--%>
  <%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
       
         
         try {
        String ward=request.getParameter("ward");
        String wardc=request.getParameter("wardc");
        String code=request.getParameter("code");
        int wl =wardc.length();
        int cl=wardc.indexOf("/")+1;
        String rcode=wardc.substring(cl);
        String rward=wardc.substring(0, cl-1);
        
     Class.forName("com.mysql.jdbc.Driver");
                    String CONNECTIONADD="jdbc:mysql://localhost/ghi";
                Connection con=DriverManager.getConnection(CONNECTIONADD,"root","");
                PreparedStatement ps=con.prepareStatement("UPDATE beds SET ward=?,code=? WHERE ward=? && code=?");
                ps.setString(1,ward);
                ps.setString(2,code);
                ps.setString(3,rward);
                ps.setString(4,rcode);
              PreparedStatement ps2=con.prepareStatement("UPDATE admission SET ward=?,bed=? WHERE ward=? && bed=?");
                ps2.setString(1,ward);
                ps2.setString(2,code);
                ps2.setString(3,rward);
                ps2.setString(4,rcode);
                ps2.executeUpdate();
                 ps.executeUpdate();
             
            %>
            <script>
                alert("Beds has been successfully updated");
                (window.location.href="../wards.jsp");
           </script>
            <%
            } catch (Exception ex) {
              out.println("error occured "+ex); 
  %>
           <script>alert("An error occured");</script>
            <script>
                (window.location.href="../wards.jsp");
           </script> 
           <%              
            }
            %>
