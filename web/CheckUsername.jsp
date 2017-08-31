<%@ page language="java" import="java.sql.*" %>
<% response.setContentType("text/html");%>
<%
try {
String str =request.getParameter("user");
String connectionURL = "jdbc:mysql://localhost/slimreg";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection(connectionURL, "root", "");

String sql = "SELECT username FROM fgusers3 WHERE username='"+str+"'";
Statement stm = con.createStatement();
stm.executeQuery(sql);
ResultSet rs= stm.getResultSet();
int count = 0;
while (rs.next ()){
count++;
}
if(count==0)
{
out.println("UserName is not Available"); 
}
else
	{%> 
        
        <table border="9"><tr><td>fjfjfjffj</td></tr></table> 
        <%out.println("Username is available");
 
	}
}catch(Exception e){
out.println("Exception is ;"+e);
}
%>