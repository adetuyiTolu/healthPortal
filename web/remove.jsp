<%-- 
    Document   : remove
    Created on : Mar 3, 2013, 11:15:30 PM
    Author     : Slimfit
--%>

<%@ page language="java" import="java.sql.*" %>
<%
String reg=session.getAttribute("reg").toString();
String name=request.getParameter("user");
String connectionURL = "jdbc:mysql://localhost/ghi";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection(connectionURL, "root", "");
PreparedStatement ps=con.prepareStatement("DELETE FROM bills WHERE regno=? && name=?");
ps.setString(1,reg);
ps.setString(2,name);
ps.executeUpdate();
if(session.getAttribute("status").toString().equalsIgnoreCase("in-patient")){%>
 <script>(window.location.href='ilabdrug.jsp');</script>    
 <%}else{
%>
<script>(window.location.href='labdrug.jsp');</script> 
<%} %>