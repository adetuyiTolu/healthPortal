<%-- 
    Document   : buy
    Created on : Mar 3, 2013, 10:26:07 PM
    Author     : Slimfit
--%>

<%@ page language="java" import="java.sql.*" %>
<%
String reg=session.getAttribute("reg").toString();
String connectionURL = "jdbc:mysql://localhost/ghi";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection(connectionURL, "root", "");
PreparedStatement ps=con.prepareStatement("UPDATE bills SET ispaid=? WHERE regno=?");
ps.setString(1,"yes");
ps.setString(2,reg);
ps.executeUpdate();
if(session.getAttribute("status").toString().equalsIgnoreCase("in-patient")){%>
 <script>(window.location.href='ilabdrug.jsp');</script>    
 <%}else{
%>
<script>(window.location.href='labdrug.jsp');</script> 
<%} %>