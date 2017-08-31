<%@ page language="java" import="java.sql.*" %> 


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
    <head>
        <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
        <title>Appointment Form</title>
        <link rel="STYLESHEET" type="text/css" href="css/fg_membersite.css" />
        <script type="text/javascript" src="jquery/jquery-1.6.1.min.js"></script>
        <script type="text/javascript" src="pages/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="jquery/jquery-1.4.3.min.js"></script>
       <style type="text/css">
@import "pages/DatePicker/flora.datepick.css";
</style>
<script type="text/javascript" src="pages/DatePicker/jquery.datepick.js"></script>
<script type="text/javascript">
$(function() {
	$('#popupDatepicker').datepick();
	
    });
</script>
<script>
            $(document).ready(function(){
                $("#setter").hide();
                $("#ward").click(function(){
            var beds= $('#ward option:selected').text();
              $.post("bedmenu.jsp",{user: ""+beds+"" },function(data){
$('#bed').html(data).show();
                });
                
               
            }); 
        </script>   
    </head>
    <body>
       
        <!-- Form Code Start --> 
        <div id='fg_membersite'> 

            <form id='register' action="createadmit.jsp" method='post'> 
                <div id="h">
                    <fieldset>
                        <legend>Admit Patient</legend> 
                        <legend>
                            <input type='hidden' name='id' id='id' value='outpatient'/>

                        </legend> 
                        <div class='short_explanation'><span class="error">* required fields</span></div>
                        <div><span class='error'></span></div>
                        <div class='container'>Date*:&nbsp;
                            <input type="text" name="date" id="popupDatepicker"  />
                        </div>

                        
                        <div class='container' id="bed">
                            Bed*:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <% 
                                try {
                                    
                                    String sql;
                                    String str = "nil";
                                    sql = "SELECT * FROM beds WHERE status='" + str + "'";
                                    String connectionURL = "jdbc:mysql://localhost/ghi";
                                    Connection con;
                                    Class.forName("com.mysql.jdbc.Driver");
                                    // Get a Connection to the database
                                    con = DriverManager.getConnection(connectionURL, "root", "");
                                    Statement stm = con.createStatement();
                                    stm.executeQuery(sql);
                                    ResultSet rs = stm.getResultSet();
                            %>
                            <select name="code" id="code" > 
                                <%while (rs.next()) {
                                        String code = rs.getString("code");
                                        
                                        String ward=rs.getString("ward");
                                        String tname =ward+ "/bed" + code;
                                        String tname2 =ward+ "/" + code;
                                %> 
                                
                                <option value="<%=tname2%>"><%=tname%></option >
                                <%  }
                                    con.close();%>
                            </select>        
                            <%} catch (Exception e) {
                                    out.println("error");
                                    out.println("Exception is ;" + e);
                                }
                            %>
                            <span id='register_username_errorloc' class='error'></span>
                        </div>

                        <div class='container'>
                            Doctor*:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <%
                                try {
                                    String sql;
                                    String str = "Doctor";
                                    sql = "SELECT * FROM staff WHERE type='" + str + "'";
                                    String connectionURL = "jdbc:mysql://localhost/ghi";
                                    Connection con;
                                    Class.forName("com.mysql.jdbc.Driver");
                                    // Get a Connection to the database
                                    con = DriverManager.getConnection(connectionURL, "root", "");
                                    Statement stm = con.createStatement();
                                    stm.executeQuery(sql);
                                    ResultSet rs = stm.getResultSet();
                            %>
                            <select name="doc" id="doc" > 
                                <%while (rs.next()) {
                                        String name = rs.getString("name");%>
                                <option value="<%=name%>"><%=name%></option >
                                <%  }
                                    con.close();%>
                            </select>        
                            <%} catch (Exception e) {
                                    out.println("error");
                                    out.println("Exception is ;" + e);
                                }
                            %>
                            <span id='register_username_errorloc' class='error'></span>
                        </div>
                        <div class='container'>
                            <%
                                try {
                                    String sql;
                                    String str = "nurse";
                                    sql = "SELECT * FROM staff WHERE type='" + str + "'";
                                    String connectionURL = "jdbc:mysql://localhost/ghi";
                                    Connection con;
                                    Class.forName("com.mysql.jdbc.Driver");
                                    // Get a Connection to the database
                                    con = DriverManager.getConnection(connectionURL, "root", "");
                                    Statement stm = con.createStatement();
                                    stm.executeQuery(sql);
                                    ResultSet rs = stm.getResultSet();
                            %>
                            Nurse*:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <select name="nurse" id="nurse" > 
                                <%while (rs.next()) {
                                        String name = rs.getString("name");%>
                                <option value="<%=name%>"><%=name%></option>  
                                <%  }
                                    con.close();%>
                            </select>        
                            <%} catch (Exception e) {
                                    out.println("error");
                                    out.println("Exception is ;" + e);
                                }
                            %>
                            <div id='register_password_errorloc' class='error'></div>
                        </div>
                        <div class='container'>
                            Alt Nurse*:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <%
                                try {
                                    String sql;
                                    String str = "nurse";
                                    sql = "SELECT * FROM staff WHERE type='" + str + "'";
                                    String connectionURL = "jdbc:mysql://localhost/ghi";
                                    Connection con;
                                    Class.forName("com.mysql.jdbc.Driver");
                                    // Get a Connection to the database
                                    con = DriverManager.getConnection(connectionURL, "root", "");
                                    Statement stm = con.createStatement();
                                    stm.executeQuery(sql);
                                    ResultSet rs = stm.getResultSet();
                            %>
                            <select name="anurse" id="anurse" > 
                                <%while (rs.next()) {
                                        String name = rs.getString("name");%>
                                <option value="<%=name%>"><%=name%></option> 
                                <%  }
                                    con.close();%>
                            </select> 
                            <%} catch (Exception e) {
                                    out.println("error");
                                    out.println("Exception is ;" + e);
                                }
                            %>
                            <div id='register_password_errorloc' class='error'></div>
                        </div>
                        <div class='container'>
                            Purpose*: 
                            <textarea id="purpose" name="purpose"></textarea>
                            <span id='register_name_errorloc' class='error'></span>
                        </div>
                        <div class='container'>
                            <input type='submit' name='fsubmit' value='Submit' id="fsubmit" />
                        </div>
                        <font color="red"><div id="setter">success</div></font>
                    </fieldset>
                </div>
            </form>
        </div>
        </script>
    </body>
</html>