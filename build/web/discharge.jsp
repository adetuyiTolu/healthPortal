<%-- 
    Document   : discharge
    Created on : Mar 2, 2013, 11:55:54 PM
    Author     : Slimfit
--%>
<%@page import="java.sql.*" %>
<%

 try {
     String wardd=session.getAttribute("ward").toString();
             String code=session.getAttribute("bed").toString();   
                    Class.forName("com.mysql.jdbc.Driver");
                    String CONNECTIONADD="jdbc:mysql://localhost/ghi";
                Connection con=DriverManager.getConnection(CONNECTIONADD,"root","");
                PreparedStatement ps=con.prepareStatement("UPDATE patient SET status=? where regno=?");
                ps.setString(1,"outpatient");
                ps.setString(2,session.getAttribute("reg").toString());
                PreparedStatement ps2=con.prepareStatement("UPDATE admission SET dod=?,status=? where regno=?");
                ps2.setString(1,new java.util.Date().toString());
                ps2.setString(2,"discharged");
                ps2.setString(3,session.getAttribute("reg").toString());
                ps2.executeUpdate();
                ps.executeUpdate(); 
PreparedStatement ps3=con.prepareStatement("UPDATE beds set status =? where ward=? && code=?");
                 ps3.setString(1,"nil");
                  ps3.setString(2,wardd);
                  ps3.setString(3,code);
               ps3.executeUpdate();                 
            session.setAttribute("status", "outpatient");
    %>       <script>(window.location.href='patient.jsp');</script><%
            } catch (Exception ex) {
              out.println("error occured "+ex);  
            }%><script>(window.location.href='patient.jsp');</script>

