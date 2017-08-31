<%
session.setAttribute("reg",""); 
if(session.getAttribute("log").toString().equalsIgnoreCase("admin")){
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
        #pag fieldset #page #contentwrap table tr td #menu br {
	text-align: left;
}
        #pag fieldset #page #contentwrap #mainc fieldset table tr .clr br {
	font-size: 18px;
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
                                    <td width="700" colspan="2" bgcolor="#FFFFFF" align="center"><marquee behavior="alternate" direction="right" scrollamount="2">
                                    You are welcome to good health inc. Portal:|| You are currently logged in as an Administrator.
                                </marquee></td>
                                </tr>
                                <tr><td width="700">

                                        <div id="menu" align="center">
                                            <ul>  
                                            <li><a id="hom">Home</a></li>                                      
                                                <li><a id="staf">Staffs</a></li>
                                                <li><a id="ward">Wards/Bed</a></li>
                                                <li><a id="drug">Drug/Lab Servies</a></li>
                                                 <li><a id="sys">System User</a></li>
                                                <li><a href="logout.jsp">Log Out</a></li>
                                            </ul>
                                            <br>
                                        </div>

                                    </td></tr>  
                            </table>
                            <br>
                            
                            <div id="mainc">
                                <fieldset>
                                  <table width="874" align="left">
                                    <tr>
                                            <td width="518" height="170" align="left" valign="top">
                                                <div id="slideshow">
                                                    <ul class="slides">
                                                        <li><img src="images/images_016.jpg" width="459" height="300" alt="image" /></li>
                                                        <li><img src="images/images_019.jpg" width="459" height="300" alt="image" /></li>
                                                        <li><img src="images/images_020.jpg" width="459" height="300" alt="image" /></li>
                                                        <li><img src="images/images_115.jpg" width="459" height="300" alt="image" /></li>
                                                    </ul>
                                                  <span class="arrow previous"></span>
                                                      <span class="arrow next"></span>
                                                </div>
                                            </td>
                                            <td width="344" align="left" valign="top" class="clr">
                                              
                                                </br><strong>Administrator</strong>
                                                <br>
                                                </br>
                                                You are welcome to the homepage of an Administrator,all you have to is follow the links to perform all Masters Data related task like Adding new staff(Doctor,Nurse,Cleaner e.t.c)and Updating Staffs records.<br />
                                                &nbsp; Adding new System User(Desk Officer,Administrator,Senior Manager)and Updating System-Users records.<br />&nbsp; Adding new Drugs/Lab Service and Updating Pharmacy and Lab records.<br />&nbsp; Adding new Wards/Beds and Updating Ward/Beds records.<br /></td>
                                        </tr>
                                    </table>
                                </fieldset>
                            </div>
                          
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
                                <div id="bottom_addr"> � 2013 Good Health Inc. All Rights Reserved || Designed by Adetuyi Tolu Slimfit Emmanuel  </div>
                            </div>
                        </div> 
                        
                    </div>
                    <script type="text/javascript">
                        $(document).ready(function() {
                         $("#mainc").hide();
                                $("#mainc").slideDown(3000);
                            
                            $("#staf").click(function(){
                                $("#mainc").hide();
                                $("#mainc").slideDown(3000);
                             window.location="staffs.jsp";   
                            });
	
	 
   
                            $("#ward").click(function(){
                                $("#mainc").hide();
                                $("#mainc").slideDown(3000);
                             window.location="wards.jsp";   
                     	
                            });
                            $("#drug").click(function(){
                                $("#mainc").hide();
                                $("#mainc").slideDown(3000);
                             window.location="drugs.jsp";   
                     	
                            });
                            $("#sys").click(function(){
                                $("#mainc").hide();
                                $("#mainc").slideDown(3000);
                             window.location="system.jsp";   
                     	
                            });
	
                            $("#hom").click(function(){
                                $("#mainc").hide();
                                $("#mainc").slideDown(3000);   
                     	
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