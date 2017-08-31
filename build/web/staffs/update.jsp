<%-- 
    Document   : addstaff
    Created on : Mar 6, 2013, 2:04:00 PM
    Author     : Slimfit
--%>
<%@ page language="java" import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
    <head>
        <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
        <title>Add Staff</title>

        <link rel="stylesheet" media="screen" href="../css/form.css" />
            <script type="text/javascript" src="../jquery/jquery-1.4.3.min.js"></script>
            <script type="text/javascript">
                $(document).ready(function(){
                   
           
     
	 });	
                 
            </script>
    </head>
    <body>

        <!-- Form Code Start -->
        <div  align="center" id="form">
            <form  method='post' action="staffs/updatec.jsp" enctype="multipart/form-data" name="contact_form" class='contact_form' accept-charset='UTF-8' id="sub">
                <ul>
                    <li>
                        <h2>Update Staff Form</h2>
                    </li>
                    <div class='container'>
                         <li><label for="name"> Staff Name.:</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <%
                                try {
                                
                                   String sql = "SELECT name FROM staff";
                                    String connectionURL = "jdbc:mysql://localhost/ghi";
                                    Connection con;
                                    Class.forName("com.mysql.jdbc.Driver");
                                    // Get a Connection to the database
                                    con = DriverManager.getConnection(connectionURL, "root", "");
                                    Statement stm = con.createStatement();
                                    stm.executeQuery(sql);
                                    ResultSet rs = stm.getResultSet();
                            %>
                            <select name="regno" id="regno"> 
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
                           
                        </div>
                    
                    <li><label for="name"> Full Name*:</label>
                        <input type='text' name='name' id='name'  required />
                        <span class="form_hint">Name is required</span>
                    </li>
                    <li>

                        <label for="name"> Working Hours*:</label>
                        <input type='text' name='wh' id='wh'  required />   
                        <span class="form_hint">working hours is required</span>
                    </li>
                    <li>
                        <label for="name">Home Address*:</label>
                        <input type='text' name='hadd' id='hadd'  required /> 
                        <span class="form_hint">home address is required</span>
                    </li>
                    <li>
                        <label for="name">Emergency No.* :</label>
                        <input type='text' name='ec' id='ec' required />   
                        <span class="form_hint">emergency number is required</span>
                    </li>
                    <li>
                        
                        <button class="submit" type="submit" name="updatef" id="updatef">Update</button>
                    </li>
                </ul>

            </form>
            <font color="red">  <div id="autosuggestionlist"></div></font>
        </div>
    </body>
</html>