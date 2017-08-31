   <style> 
     #mytable2 {
        width: 700px;
        padding: 0;
        margin: 0;
    }

    #mytable2 th {
        height: 15;
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

    #mytable2 td {
        border-right: 1px solid #C1DAD7;
        border-bottom: 1px solid #C1DAD7;
        background: #fff;
        padding: 12px 12px 12px 12px;
        cellspace: 12px;
        color: #4f6b72;
    }


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
        height: 15;
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
        padding: 12px 12px 12px 12px;
        cellspace: 12px;
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
<script type="text/javascript">
    $(document).ready(function() {
        $("#mytable2").hide();
        $("#admdf").hide();
         $("#mytable2").hide();
        $("#admd").click(function(){
            $("#admd").hide(); 
           
$("#mytable").hide();            
            $("#admdf").slideDown(2100); 
       
        });
         $("#admp").click(function(){
            $("#admp").hide();
$("#admdf").hide();            
            $("#mytable").slideDown(2100); 
            $("#admd").slideDown(2100); 
            $("#admp").slideDown(3000)
        });
        $("#appv").click(function(){
            //$("#img").hide();          	
            $("#mytable2").fadeIn(2100); 
       
        });
    });
	
	 
</script>
<%@ page language="java" import="java.sql.*" %>
<% response.setContentType("text/html");%>
 
<table id="mytable2">
                        <tr><th>Doctor</th>
                        <th>Nurse</th>
                        <th>Alt. Nurse</th>
                        <th>Appointment Date</th>
                        <th> Purpose</th>
                    </tr>
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
        // Get a Connection to the database
                        String connectionURL2 = "jdbc:mysql://localhost/ghi";
                        String str2 = session.getAttribute("reg").toString();
                        String sql3 = "SELECT * FROM appointment WHERE regno='" + str2 + "'";
                   Connection  con2 = DriverManager.getConnection(connectionURL2, "root", "");
                  Statement stm2=con2.createStatement();
                             stm2.executeQuery(sql3);
                    ResultSet  rs2 = stm2.getResultSet();

                        while (rs2.next()) {%>
                    <tr>
                        <td><%=rs2.getString("doctor")%></td>
                        <td><%=rs2.getString("nurse")%></td>
                        <td><%= rs2.getString("anurse")%></td>
                        <td><%=rs2.getString("date")%></td>
                        <td> <%=rs2.getString("purpose")%></td>
                    </tr> <% }%></table>
                    
<%
    
        String sql;
        String str = session.getAttribute("reg").toString();
        sql = "SELECT * FROM patient WHERE regno='" + str + "'";
        String connectionURL = "jdbc:mysql://localhost/ghi";
        Connection con;
        Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
        con = DriverManager.getConnection(connectionURL, "root", "");
        Statement stm = con.createStatement();
        stm.executeQuery(sql);
        ResultSet rs = stm.getResultSet();

        while (rs.next()) {
            String name = rs.getString("surname") + " " + rs.getString("oname");
            session.setAttribute("name", name);
            String phone = rs.getString("phone");
            String status = rs.getString("status");
            String add = rs.getString("address");
        
%>

<table id="mytable" cellspacing="16" cellpading="12" >
    <tr>
        <th>Name</th>
        <td><%=name%></td>
        <td rowspan="4"><%  out.println("<img width = 154 height = 130 src=view2.jsp?fn=" + str + "></img>");%></td>
    </tr> 
    <tr>
        <th>Reg No.</th>
        <td><%=str%></td>
    </tr> 
    <tr>
        <th>status</th>
        <td><%=status%></td>
    </tr> 
    <tr>
        <th>Address</th>
        <td><%=add%></td>
    </tr> 
    <tr>
        <th>Phone</th>
        <td><%=phone%></td>
    </tr> 
    <% if (status.equalsIgnoreCase("outpatient")) {%> <tr>
        <th colspan="2"><button class="submit" id="appv" title="view Appointments" value="view Appointments" name="appv" type="submit" >
                <span class="nowrap">
                    <img class="icon" width="16" height="16" alt="view Appointments" title="view Appointments" src="images/b_edit.png">
                    view Appointments
                    </button></th></tr>

                   
                        
                    <% } else {%>
                    <tr><th id="admd" colspan="3">Click to View Admission Details</th></tr>
                    
<%  } }   %>
</table>

<div id="admdf"><%

             Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
             String sta = "admit";
             String sql2 = "SELECT * FROM admission WHERE regno='" + str + "' && status='" + sta + "'";
             con = DriverManager.getConnection(connectionURL, "root", "");
             stm.executeQuery(sql2);
             rs = stm.getResultSet();
             while (rs.next()) {
                  String bed = rs.getString("bed");
                  String ward = rs.getString("ward");
                  session.setAttribute("bed", bed);
                  session.setAttribute("ward", ward);
            String dat = rs.getString("doa");
            String doctor = rs.getString("doctor");
            String nurse = rs.getString("nurse");
            String anurse = rs.getString("anurse");
             String purpose = rs.getString("purpose");

%>
<table id="mytable" cellspacing="16" cellpading="12" >
    <tr>
        <th>Bed</th>
        <td>Bed<%=bed%></td>
        <td rowspan="4"><%  out.println("<img width = 154 height = 130 src=view2.jsp?fn=" + str + "></img>");%></td>
    </tr> 
    <tr>
        <th>Ward</th>
        <td><%=ward%></td>
    </tr> 
    <tr>
        <th>Date</th>
        <td><%=dat%></td>
    </tr> 
    <tr>
        <th>Doctor</th>
        <td><%=doctor%></td>
    </tr> 
    <tr>
        <th>Nurse</th>
        <td><%=nurse%></td>
    </tr> 
    <tr>
        <th>Alt. Nurse</th>
        <td><%=anurse%></td>
    </tr> 
    <tr>
        <th>Purpose</th>
        <td><%=purpose%></td>
    </tr> 
    <tr><th id="admp" colspan="3">Click to View Personal Details</th></tr>
</table> <% }%>
                            </div>
                    
                 