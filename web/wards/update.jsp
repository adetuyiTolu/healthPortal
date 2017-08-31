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
                    $("#phn").keypress(function (e)
                    {
isNumberKey(e)
                        //if the letter is not digit then display error and don't type anything
                        if(( e.which!=8 && e.which!=0 && (e.which<48 || e.which>57)&& (e.which<65 || e.which>90)&& (e.which<97 || e.which>122)) )
                        {
                            return false;
                        }
                        if(e.which>31 && (e.which<48 || e.which>57)){
                          return false;  
                        }
                   		
                    });
                     function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;
      }
	  
          
	 });	
                 
            </script>
    </head>
    <body>

        <!-- Form Code Start -->
        <div  align="center" id="form">
            <form  method='post' action="wards/updatec.jsp" enctype="multipart/form-data" name="contact_form" class='contact_form' accept-charset='UTF-8' id="sub">
                <ul>
                     <li>
                        <h2>Update Wards Form</h2>
                    </li>
                    <div class='container'>
                         <li><label for="name"> Ward Name.:</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <%
                                try {
                                
                                   String sql = "SELECT * FROM wards";
                                    String connectionURL = "jdbc:mysql://localhost/ghi";
                                    Connection con;
                                    Class.forName("com.mysql.jdbc.Driver");
                                    // Get a Connection to the database
                                    con = DriverManager.getConnection(connectionURL, "root", "");
                                    Statement stm = con.createStatement();
                                    stm.executeQuery(sql);
                                    ResultSet rs = stm.getResultSet();
                            %>
                            <select name="name" id="name"> 
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
                    <li>

                        <label for="name"> New Name*:</label>
                        <input type='text' name='wardn' id='wardn'  required />   
                        <span class="form_hint">Ward name is required</span>
                    </li>
                    <li>

                        <label for="name"> Price*:</label>
                        <input type='text' name='price' id='price'  required />   
                        <span class="form_hint">Price is required</span>
                    </li>
                              <li>
                        
                        <button class="submit" type="submit" name="submit" id="submit">Update</button>
                    </li>
                </ul>
            </form>
            <font color="red">  <div id="autosuggestionlist"></div></font>
        </div>
    </body>
</html>