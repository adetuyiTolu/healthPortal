<%-- 
    Document   : login
    Created on : Mar 4, 2013, 10:08:29 PM
    Author     : Slimfit
--%>

<%@ page language="java" import="java.sql.*" %>
<% response.setContentType("text/html");%>
<%
try {
String user =request.getParameter("un");
String pass =request.getParameter("pw");
String sql="select * from user where user='"+user+"' && pass='"+pass+"'" ;
String connectionURL = "jdbc:mysql://localhost/ghi";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection(connectionURL, "root", "");
Statement stm = con.createStatement();
stm.executeQuery(sql);
ResultSet rs= stm.getResultSet();
 if(user.equalsIgnoreCase("")|| pass.equalsIgnoreCase("")){
%>
<script>alert("username or password field cannot be empty");(window.location.href='index.jsp');</script>    
<%  
    }
while (rs.next ()){
    String un=rs.getString("user");
    String pw=rs.getString("pass");
   
   if (user.equalsIgnoreCase("desk")&& pass.equalsIgnoreCase(pw)){
       session.setAttribute("log","desk");
%>
<script>(window.location.href='desk.jsp');</script>    
<%  
    }
          else if(user.equalsIgnoreCase("admin")&& pass.equalsIgnoreCase(pw)){
              session.setAttribute("log", "admin");
       %>
<script>(window.location.href='admin.jsp');</script>    
<%     
       }
     else if(user.equalsIgnoreCase("senior")&& pass.equalsIgnoreCase(pw)){
         session.setAttribute("log", "senior");
     %>
<script>(window.location.href='senior.jsp');</script>    
<%       
       }
       else{
          %>
         <script>alert("invalid username or password");(window.location.href='index.jsp');</script>    
<%       
       }
       }}catch(Exception e){
          out.println("error"); 
       }
    %> 
<script>alert("invalid username or password");(window.location.href='index.jsp');</script> 