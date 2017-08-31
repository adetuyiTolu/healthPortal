<%@ page language="java" import="java.sql.*" %>
<%
String reg=session.getAttribute("reg").toString();
String date=new java.util.Date().toString();
String tos=session.getAttribute("tos").toString();
String name=request.getParameter("name");
String price=request.getParameter("price");
String quant=request.getParameter("quant");
String connectionURL = "jdbc:mysql://localhost/ghi";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection(connectionURL, "root", "");
PreparedStatement ps=con.prepareStatement("INSERT INTO bills(regno,date,charges,quantity,tos,ispaid,name) VALUES (?,?,?,?,?,?,?)");
ps.setString(1,reg);
ps.setString(2,date);
ps.setString(3,price);
ps.setString(4,quant);
ps.setString(5,tos);
ps.setString(6,"no");
ps.setString(7,name);
ps.executeUpdate();
if((session.getAttribute("status").toString()).equalsIgnoreCase("in-patient")){%>
 <script>(window.location.href='ilabdrug.jsp');</script>    
 <%}else{
%>
<script>(window.location.href='labdrug.jsp');</script> 
<%} %>