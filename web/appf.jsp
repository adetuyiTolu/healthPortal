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
            $(document).ready(function(){
                $("#setter").hide();
                $('#popupDatepicker').datepick();

                $('#fsubmit').click(function(){
                    var dater= $('#register [name="date"]').val()
                    var purposer=$('#register [name="purpose"]').val()
                    var docr=$('#doc option:selected').text(); 
                    var nurser=$('#nurse option:selected').text();
                    var anurser=$('#anurse option:selected').text();
                     $("#setter").show();  
                    data_html = "date="+ dater + "&doc=" + docr + "&nurse="+ nurser+ "&anurse="+ anurser+ "&purpose="+ purposer;
 			
                    //alert(data_html);
 			
                    $.ajax({
                        type: 'POST',
                        url: 'createapp.jsp',
                        data: data_html,
                        success: function(msg){
                            if (msg == 'sent'){
                                $("#setter").html('success.!') 	;  
                              //  $('#setter').html('Appointment successfully created!') 	;
                                
                            }else{
                                $("#setter").html('Error. Please Try Again.!') 	;	
                            }
                        }
                    });
                });
            }); 
        </script>   
    </head>
    <body>

        <!-- Form Code Start -->
        <div id='fg_membersite'>

            <form id='register' action="createapp.jsp" method='post'>
                <div id="h">
                    <fieldset>
                        <legend>Create Appointment</legend>
                        <legend>
                            <input type='hidden' name='id' id='id' value='outpatient'/>

                        </legend>
                        <div class='short_explanation'><span class="error">* required fields</span></div>
                        <div><span class='error'></span></div>
                        <div class='container'>Date*:&nbsp;

                            <input type="text" name="date" id="popupDatepicker"  />
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
                        <font color="red"><div id="setter"></div></font>
                    </fieldset>
                </div>
            </form>
        </div>
        </script>
    </body>
</html>