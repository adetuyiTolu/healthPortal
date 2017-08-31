<%-- 
    Document   : viewstaff
    Created on : Mar 6, 2013, 2:03:43 PM
    Author     : Slimfit
--%>

<style>
#mytable {
	width: 700px;
	padding: 0;
	margin: 0;
}

#mytable caption {
	padding: 0 0 5px 0;
	width: 700px;	 
	font: italic 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
	text-align: right;
}

#mytable th {
	font: bold 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
	color: #4f6b72;
	border-right: 1px solid #C1DAD7;
	border-bottom: 1px solid #C1DAD7;
	border-top: 1px solid #C1DAD7;
	letter-spacing: 2px;
	text-transform: uppercase;
	text-align: left;
	padding: 6px 6px 6px 12px;
	background: #CAE8EA url(images/bg_header.jpg) no-repeat;
}

#mytable th.nobg {
	border-top: 0;
	border-left: 0;
	border-right: 1px solid #C1DAD7;
	background: none;
}

#mytable td {
	border-right: 1px solid #C1DAD7;
	border-bottom: 1px solid #C1DAD7;
	background: #fff;
	padding: 6px 6px 6px 12px;
	color: #4f6b72;
}


td.alt {
	background: #F5FAFA;
	color: #797268;
}

th.spec {
	border-left: 1px solid #C1DAD7;
	border-top: 0;
	background: #fff url(images/bullet1.gif) no-repeat;
	font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
}

th.specalt {
	border-left: 1px solid #C1DAD7;
	border-top: 0;
	background: #f5fafa url(images/bullet2.gif) no-repeat;
	font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
	color: #797268;
}
button.submit {
    background-color: transparent;
    border: 1px solid #336699;
    border-radius: 36px 36px 36px 36px;
    padding: 5px;
	margin-top: 9px;
	cursor:pointer;
}
img, input, select, button {
    vertical-align: middle;
}
button {
    display: inline;
}
.nowrap {
    white-space: nowrap;
}
.icon {
    margin-left: 0.3em;
    margin-right: 0.3em;
    vertical-align: -3px;
}
</style>

<%@ page language="java" import="java.sql.*" %>
<% response.setContentType("text/html");%>
   <table id="mytable" cellspacing="0" >

<tr>
  <th scope="col" abbr="Name" style="width: 159px;">Name</th>
  <th scope="col" abbr="status" style="width: 159px;">Status</th>
  <th scope="col" abbr="phone" style="width: 259px;">Phone</th>
  <th scope="col" abbr="phone" style="width: 259px;"></th>
  <th></th>
</tr>      
<%
try {

 String sql = "SELECT * FROM patient";  
String connectionURL = "jdbc:mysql://localhost/ghi";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection(connectionURL, "root", "");
Statement stm = con.createStatement();
stm.executeQuery(sql);
ResultSet rs= stm.getResultSet();

while (rs.next ()){
    String name=rs.getString("surname")+" "+rs.getString("oname");
    String phone=rs.getString("phone");
    String status=rs.getString("status");
     String reg=rs.getString("regno");
    %> 
<tr>
    <td><%=name %></td>
<td><%=status %></td>
<td style='overflow:hidden;'><%=phone%></td>
<td><%  out.println("<img width = 90 height = 60 src=view2.jsp?fn="+reg +"></img>"); %></td>
</tr>
        <%  }
            
}catch(Exception e){
    out.println("patient does not exist");
out.println("Exception is ;"+e);
}
%>
<tr><td><button class="submit" type="submit" name="printp" id="printp">Print</button></td></tr>
  </table> 