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
        String hadd=request.getParameter("hadd");
        String phn=request.getParameter("ec");
        String reg=request.getParameter("regno");
        String wh=request.getParameter("wh");
      
                    Class.forName("com.mysql.jdbc.Driver");
                    String CONNECTIONADD="jdbc:mysql://localhost/ghi";
                Connection con=DriverManager.getConnection(CONNECTIONADD,"root","");
                PreparedStatement ps=con.prepareStatement("UPDATE staff SET name=?,address=?,phone=?,wh=? WHERE name=?");
                ps.setString(1,name);
                ps.setString(2,hadd);
                ps.setString(3,phn);
                ps.setString(4,wh);
                ps.setString(5,reg);
                ps.executeUpdate();
            %>
            <script>
                (window.location.href="../staffs.jsp").fadeIn(2100,'swing');
           </script>
            <%
            } catch (Exception ex) {
              out.println("error occured "+ex);  
            }
            %><script>alert("An error occured");</script>
            <script>
                (window.location.href="../staffs.jsp").fadeIn(2100,'swing');
           </script>
