<%
session.setAttribute("reg",""); 
if(session.getAttribute("log").toString().equalsIgnoreCase("desk")){
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Good Health Inc</title>
        <meta name="description" content="Medical website">
        <script src="scripts/jquery-1.4.3.min.js" type="text/javascript"></script>
        <script type='text/javascript' src='jquery/jquery-1.6.1.min.js'></script>
        <script type='text/javascript' src='jquery/slideshow.js'></script>
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
        </style>
    </head>
    <body bgcolor="#FFFFFF">
        <div id="pag" align="center">
            <br>
            <br>
            <fieldset>
                <div id="wrap" align="center">
                    <div id="page">

                        <div id="top" ><img src="images/Q.jpg" alt="LOGO" width="179" height="129" align="left"></br>
                        </div>
                       
                        <div id="contentwrap">
                            
                           <table width="920" border="0" align="center">
                                <tr>
                                    <td width="500" colspan="2" bgcolor="#FFFFFF"><marquee behavior="alternate" direction="right" scrollamount="2">
                                    You are welcome to good health inc. Portal:|| You are currently logged in as a Desktop Officer.
                                </marquee></td>
                                </tr>
                                <tr><td width="500">

                                        <div id="menu">
                                            <ul>                                        
                                                <li><a id="hom">Home</a></li>
                                                <li><a id="reg">Register New Patient</a></li>
                                                <li><a id="admit">Manage Patient</a></li>
                                                <li><a href="index.html">Log Out</a></li>
                                            </ul>
                                            <br>
                                            <table width="892" height="10" border="0" align="center">
                                                <tr>
                                                    <td width="606" ><hr align="center"></td>
                                                </tr>
                                            </table>
                                        </div>

                                    </td></tr>  
                            </table>
                            <br>
                            
                            <div id="mainc">
                                <fieldset>
                                    <table width="912">
                                        <tr>
                                            <td width="508" align="left" valign="top">
                                                <div id="slideshow">

                                                    <ul class="slides">
                                                        <li><img src="images/GH-home-cancer2.jpg" width="459" height="300" alt="image" /></li>
                                                        <li><img src="images/GH-home-surgery2.jpg" width="459" height="300" alt="image" /></li>
                                                        <li><img src="images/home_emergency2.jpg" width="459" height="300" alt="image" /></li>
                                                        <li><img src="images/GH-home-surgery2.jpg" width="459" height="300" alt="image" /></li>
                                                    </ul>

                                                    <span class="arrow previous"></span>
                                                    <span class="arrow next"></span>
                                                </div>
                                            </td>
                                            <td width="392" align="left" valign="top" class="bold">
                                                <br>
                                                </br><strong>Desk Officer</strong>
                                                <br>
                                                </br>
                                                You are welcome to the homepage of a desk officer,all you have to is follow the links to perform all patient related task like registering new patient and also managing patient.<br />
                                                &nbsp; To register new Patient,follow the <span class="bold">Register New Patient</span> link and to perform all other task like admitting or discharging of patient,registering of patient for laboratory and pharmacy services,all you have to do is follow the <span class="bold">Manage Patient</span> link.</td>
                                        </tr>
                                    </table>
                                </fieldset>
                            </div>
                            <div id="admitf" >
                                <jsp:include page="search.jsp"/>
                            </div>
                            <div id="regf"> <jsp:include page="reg.jsp"/></div>

                            <table width="925" border="0" align="center">
                                <tr>
                                    <td width="919" height="141" id="fgfieldset">
                                        <img src="images/priority2.jpg" width="300">
                                        <img src="images/priority2.jpg" width="300" />
                                        <img src="images/priority2.jpg" width="300">

                                    </td>
                                </tr>
                            </table>

                            <div id="footer">
                                <div id="bottom_addr">© 2012 Good Health Inc. All Rights Reserved || Designed by Adetuyi Tolu Slimfit Emmanuel  </div>
                            </div>
                        </div> 
                        
                    </div>
                    <script type="text/javascript">
                        $(document).ready(function() {
                         
                            $("#mainc").show();
                            $("#admitf").hide(); 
                            $("#regf").hide();
   
                            $("#admit").click(function(){
                                $('#register [name="search"]').val('');
                                $("#deatails").hide();
                                $("#regf").hide();
                                $("#mainc").hide();          	
                                $("#admitf").fadeIn(2100);   
                            });
	
	 
   
                            $("#reg").click(function(){
                                $("#deatails").hide();
                                $("#mainc").hide();
                                $("#admitf").hide(); 
                                $("#regf").fadeIn(2100);
                     	
                            });
	
                            $("#hom").click(function(){
                                $("#deatails").hide();
                                $("#regf").hide();
                                $("#admitf").hide(); 
                                $("#mainc").fadeIn(2100);
                     	
                            });
			
                            // });
                        });
                    </script>
            </fieldset>
            <br>
        </div>
                            
    </body>
 </html>
<% }else{%>
<script>(window.location.href='index.jsp');</script> 
<% }%>