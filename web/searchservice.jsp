<%-- 
    Document   : searchservice
    Created on : Mar 3, 2013, 6:31:36 PM
    Author     : Slimfit
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
    <title>Search Patient</title>
    <link rel="STYLESHEET" type="text/css" href="css/fg_membersite.css" />
    <script type="text/javascript" src="jquery/jquery-1.4.3.min.js"></script>
     <script type="text/javascript">
$(document).ready(function(){
 $("#buy").click(function(){
    $("#buy").hide();
	  $(".container").hide();  
//$("#billf").hide(); 
 // $("#labf").hide();
 window.print();
       //$("#admitf").slideDown(2100);   
			           });
	
$('#register [name="search"]').val('');
}); 

function lookup(inputString) {
    var sea=$('#myselect option:selected').text();  
$.post("CheckService.jsp",{user: ""+inputString+"",sel: ""+sea+""},function(data){
$('#autoSuggestionsList').html(data).show();
});
}
function clear() {
   $('#register [name="search"]').val('');
}
function del(pid){
		if(confirm('Do you really want to remove this item')){
			document.form1.user.value=pid;
			document.form1.submit();
		}}
</script>
</head>
<body>
    <form name="form1" action="remove.jsp" method="post">
<input type="hidden" name="user" />
</form>
<!-- Form Code Start -->
<div id='fg_membersite'>
  
<fieldset>
<legend>Drug/Lab Services</legend>
<p>Enter Drug name or lab services name to provide Drug/Lab services to Patient.</p>
<legend>Search Form</legend>
<div><span class='error'></span></div>
<div class='container'>
    <span class="word">Search By: </span>
    <select name="select" id="myselect">
        <option value="lab" selected="selected">Lab service</option>
        <option value="drug" >Drugs</option>
    </select>
    <span id='register_name_errorloc' class='error'></span>
</div>
<div class='container'>
  <p>&nbsp;</p>
</div>
<div class='container'>
    <span class="word">Drug/Lab service:&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;
     <input type='text' name='search' id='inputString' value='' maxlength="50" onkeyup="lookup(this.value);" />
     <p>&nbsp;</p>
</div>
<font color="red"><div style="display: none;" id="autoSuggestionsList"></div></font>
<font color="red"><div style="display: none;" id="error"></div></font>
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
<img class="icon" width="16" height="16" alt="Buy and Print" title="Buy and Print" src="images/b_edit.png"/>
Pay Now
    </button></th></tr>
</table> </form><% 

                     }catch(Exception e){
    out.println("Patient does not has any unpaid bills");
out.println("Exception is ;"+e);
}%>
                       
                            </div>
</div>
</fieldset>

<p>&nbsp;</p>
</div>

</body>
</html>