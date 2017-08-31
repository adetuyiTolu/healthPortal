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
        String reg=request.getParameter("reg");
        String price=request.getParameter("price");
       Class.forName("com.mysql.jdbc.Driver");
                    String CONNECTIONADD="jdbc:mysql://localhost/ghi";
                Connection con=DriverManager.getConnection(CONNECTIONADD,"root","");
                PreparedStatement ps=con.prepareStatement("UPDATE lab SET name=?,price=? WHERE name=?");
                ps.setString(1,name);
                ps.setString(2,price);
                ps.setString(3,reg);
                ps.executeUpdate();
                
            %>
            <script>
                alert("Lab Service has been successfully updated");
                (window.location.href="../drugs.jsp");
           </script>
            <%
            } catch (Exception ex) {
              out.println("error occured "+ex);  
            }
            %><script>alert("An error occured");</script>
            <script>
                (window.location.href="../drugs.jsp");
           </script>
