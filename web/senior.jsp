<%-- 
    Document   : staffs
    Created on : Mar 6, 2013, 7:54:05 AM
    Author     : Slimfit
--%>
<%
if(session.getAttribute("log").toString().equalsIgnoreCase("senior")){
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Good Health Inc</title>
        <meta name="description" content="Medical website">
        <link rel="stylesheet" media="screen" href="css/form.css" />
        <script type="text/javascript" src="../jquery/jquery-1.4.3.min.js"></script>
        <script src="scripts/jquery-1.4.3.min.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="styles/style_sheet.css" />
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <style type="text/css">
            a:link {
                text-decoration: none;
                color: #008099;
            }
            a:visited {
                text-decoration: none;
            }
            a:hover {
                text-decoration: none;
                color: #008099;
            }
            a:active {
                text-decoration: none;
                color: #008099;
            }
            #top #call_us .gray {
                color: #1d3f6c;
            }
            #apDiv1 {
                position:absolute;
                width:200px;
                height:45px;
                z-index:1;
                left: 366px;
                top: 79px;
                color: #1d3f6c;
            }
            body {
                background-image: url(images/bg4.gif);
                background-color: #FFF;
                background-repeat: repeat;
            }
            h2 {
                font-size: 2em;
            }
            #pag fieldset #page #contentwrap #mainc fieldset table tr td {
                color: #416271;
            }
            #pag fieldset #page #contentwrap table tr td table {
                text-align: center;
            }
            #pag fieldset #page #contentwrap table tr td table {
                text-align: center;
            }
            #pag fieldset #page #contentwrap table tr td marquee {
                color: #087097;
            }
            #wrap #page #contentwrap table tr td table tr #viep {
                text-align: left;
            }
            #wrap #page #contentwrap table tr td table tr #viei {
                text-align: left;
            }
            #wrap #page #contentwrap table tr td table tr #vieo {
                text-align: left;
            }
            #wrap #page #contentwrap table tr td table tr #view {
                text-align: left;
            }
            #wrap #page #contentwrap table tr td table tr #vies {
                text-align: left;
            }
            #wrap #page #contentwrap table tr td table tr #out {
                text-align: left;
            }
        #wrap #page #contentwrap table tr td #table tr #vieb {
	text-align: left;
}
        </style>
    </head>
<body>
        <div id="pag" align="center">
            <br>
            <fieldset>
                <div id="wrap">
                  <div id="page">
                        <div id="top" ></br>
                        </div>
                        <div id="contentwrap">
                            <table width="918" border="0">
                                <tr>
                                    <td width="500" colspan="2" bgcolor="#D2E7F5"><marquee behavior="alternate" direction="right" scrollamount="2">
                                    You are welcome to good health inc. Portal:|| You are currently logged in as a Senior Manager
                                </marquee></td>
                                </tr>
                            </table>
                            <table width="918" border="0">
                                <tr>
                                    <td width="222" valign="top"><table id="table" width="224" height="326" border="0" align="left" cellpadding="1" cellspacing="4" bgcolor="#B9B5B0">
                                            <tr>
                                                <td id="viep" width="214" height="48" bgcolor="#FFFFFF"><img src="images/checkmark.png" width="45" height="45">&nbsp;&nbsp;&nbsp;View All Patients</td>
                                            </tr>
                                            <tr >
                                                <td id="viei" height="50" bgcolor="#FFFFFF"> <img  src="images/checkmark.png" width="45" height="45" alt="Admit"> View All Admitted Patients</td>
                                            </tr>
                                            <tr>
                                                <td id="vieo" height="50" bgcolor="#FFFFFF"><img src="images/checkmark.png" width="45" height="45" alt="services">View All Out-Patients</td>
                                            </tr>
                                            <tr>
                                                <td id="view" height="50" bgcolor="#FFFFFF"><img src="images/checkmark.png" width="45" height="45" alt="services">View Available Wards/Beds</td>
                                            </tr>
                                             <tr>
                                                <td id="vieb" height="50" bgcolor="#FFFFFF"><img src="images/checkmark.png" width="45" height="45" alt="services">View All Bill Details</td>
                                            </tr>
                                            <tr>
                                                <td id="vies" height="50" bgcolor="#FFFFFF"><img src="images/checkmark.png" width="45" height="45" alt="services">View All Staffs</td>
                                            </tr>
                                            <tr>
                                                <td id="out" height="50" bgcolor="#FFFFFF"><a href="index.html"><img src="images/logout.png" width="45" height="45">Log Out</a> </td>
                                            </tr>
                                        </table></td>
                                    <td width="686" align="left" valign="top">
                                        <div id="views" >
                                            <jsp:include page="senior/views.jsp"/></div>
                                        <div id="vieww" >
                                            <jsp:include page="senior/vieww.jsp"/></div>
                                        <div id="viewo" >
                                            <jsp:include page="senior/viewo.jsp"/></div>
                                              <div id="viewb"><jsp:include page="senior/viewb.jsp"/></div>
                                        <div id="viewp"><jsp:include page="senior/viewp.jsp"/></div>
                                        <div id="viewi"><jsp:include page="senior/viewi.jsp"/></div>
                                  </td>
                              </tr>
                            </table>

                            <hr><table width="200" border="0" align="center">
                                <tr>
                                    <td height="140" id="fgfieldset"><fieldset><img src="images/priority2.jpg" width="300"><img src="images/priority2.jpg" width="300" /><img src="images/priority2.jpg" width="300">
                                        </fieldset> 
                                    </td>
                                </tr>
                            </table>

                            <div id="footer">
                                <div id="bottom_addr">� 2012 Good Health Inc. All Rights Reserved</div>
                            </div>
                        </div>
                  </div>
                    <br />
                    <br/>

                </div>
                <script type="text/javascript">
                    $(document).ready(function() {
    
                        $("#vieww").hide();
                        $("#views").hide();     
                        $("#viewi").hide();
                        $("#viewo").hide(); 
                        $("#viewb").hide();
                        $("#viewp").hide(); 
                        $("#viewp").slideDown(2100);
                        //view all patients   
                        $("#viep").click(function(){
                            $("#vieww").hide();
                            $("#views").hide();     
                            $("#viewi").hide();
                            $("#viewo").hide();
                            $("#viewb").hide();
                            $("#viewp").hide(); 
                            $("#viewp").slideDown(2100);
                        });
                         //view all Bills   
                        $("#vieb").click(function(){
                            $("#vieww").hide();
                            $("#views").hide();     
                            $("#viewi").hide();
                            $("#viewo").hide();
                            $("#viewb").hide();
                            $("#viewp").hide(); 
                            $("#viewb").slideDown(2100);
                        });
                                   
                        //view all staffs                               
                        $("#vies").click(function(){
                            $("#vieww").hide();
                            $("#views").hide();  
                            $("#viewb").hide();
                            $("#viewi").hide();
                            $("#viewo").hide(); 
                            $("#viewp").hide();      
                            $("#views").slideDown(2100);
                        });
   
                        //view available wards
                        $("#view").click(function(){
                            $("#vieww").hide();
                            $("#views").hide();     
                            $("#viewi").hide();
                            $("#viewb").hide();
                            $("#viewo").hide(); 
                            $("#viewp").hide();      
                            $("#vieww").slideDown(2100);
                        });
                                 
                        //view all inpatients
                        $("#viei").click(function(){
                            $("#vieww").hide();
                            $("#views").hide();  
                            $("#viewb").hide();
                            $("#viewi").hide();
                            $("#viewo").hide(); 
                            $("#viewp").hide();      
                            $("#viewi").slideDown(2100);
                        });
        
                        //view all out-patient
                        $("#vieo").click(function(){
                            $("#vieww").hide();
                            $("#views").hide();     
                            $("#viewi").hide();
                            $("#viewb").hide();
                            $("#viewo").hide(); 
                            $("#viewp").hide();      
                            $("#viewo").slideDown(2100);
                        });
                        $("#print").click(function(){
                            $("#print").hide();
                            $("#table").hide();
                            window.print();
                            $("#print").show();
                            $("#table").show();
     
                        });
                        $("#printi").click(function(){
                            $("#printi").hide();
                            $("#table").hide();
                            window.print();
                            $("#printi").show();
                            $("#table").show();
     
                        });	
	 
                        $("#printo").click(function(){
                            $("#printo").hide();
                            $("#table").hide();
                            window.print();
                            $("#printo").show();
                            $("#table").show();
     
                        });
                        $("#printp").click(function(){
                            $("#printp").hide();
                            $("#table").hide();
                            window.print();
                            $("#printp").show();
                            $("#table").show();
     
                        });
                        
                        $("#prints").click(function(){
                            $("#prints").hide();
                            $("#table").hide();
                            window.print();
                            $("#prints").show();
                            $("#table").show();
     
                        });
                        $("#printb").click(function(){
                            $("#printb").hide();
                            $("#table").hide();
                            window.print();
                            $("#printb").show();
                            $("#table").show();
     
                        });
                        $("#printw").click(function(){
                            $("#printw").hide();
                            $("#table").hide();
                            window.print();
                            $("#printw").show();
                            $("#table").show();
     
                        });
                    });
                </script>
</body>
</html>
<% }else{%>
<script>(window.location.href='index.jsp');</script> 
<% }%>