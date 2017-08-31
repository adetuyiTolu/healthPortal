<%-- 
    Document   : bill
    Created on : Mar 4, 2013, 12:03:13 AM
    Author     : Slimfit
--%>

<div id="labdetails">
    <form  action="buy.jsp" method='post' accept-charset='UTF-8' id="register">  
<table id="mytable" cellspacing="16" cellpading="12" >
    <tr>
        <th>Name</th>
        <th>Quantity</th>
         <th>Price</th>
         <th></th>
         </tr> 
     <%@ page language="java" import="java.sql.*" %>
    <%  Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
   
           try{
                String sta = "no";
               String connectionURL2 = "jdbc:mysql://localhost/ghi";
                        String str= session.getAttribute("reg").toString();
             String sql2 = "SELECT * FROM bills WHERE regno='" + str + "' && ispaid='" + sta + "'";
         Connection  con2 = DriverManager.getConnection(connectionURL2, "root", "");
                  Statement stm=con2.createStatement();
                   stm.executeQuery(sql2);
             ResultSet rs = stm.getResultSet();
              float sum=0;
             while (rs.next()) {
                
                 float price = rs.getFloat("charges");
                  int q=rs.getInt("quantity");
               float total=(price * q);
               sum=sum+total;
            String name = rs.getString("name");
%>
    <tr>
        <td><%=name%><input name="namelab" type="hidden" value="<%=name%>"/></td>
         <td><%=q%><input type="hidden" value="<%=q%>"/></td>
        <td><%=price * q%></td>
        <td><a href="javascript:del('<%=name%>')">Remove</a></td>
    </tr> <% } %>
    <tr><th>Total:</th><td><%=sum%></td></tr>
   <tr><th><button onclick="window.print()" class="submit" title="Buy and Print" value="Buy and Print" name="buy" type="submit" >
        <span class="nowrap">
<img onclick="window.print()" class="icon" width="16" height="16" alt="Buy and Print" title="Buy and Print" src="images/b_edit.png"/>
Pay and Print
    </button></th></tr>
</table> </form><% 

                     }catch(Exception e){
    out.println("Patient does not has any unpaid bills");
out.println("Exception is ;"+e);
}%>
                       
                            </div>

