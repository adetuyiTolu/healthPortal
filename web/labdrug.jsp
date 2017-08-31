<%-- 
    Document   : labdrug
    Created on : Mar 3, 2013, 7:01:26 PM
    Author     : Slimfit
--%>
 


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Good Health Inc</title>
<meta name="description" content="Medical website">
<script src="scripts/jquery-1.4.3.min.js" type="text/javascript"></script>
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
            You are welcome to good health inc. Portal:|| You are currently logged in as a Desk Officer
          </marquee></td>
        </tr>
</table>
      <table width="918" border="0">
        <tr>
          <td width="235" valign="top"><table bgcolor="#B9B5B0" width="241" height="328" border="0" cellpadding="1" cellspacing="4">
          <tr>
              <td id="hom" width="231" height="50" bgcolor="#FFFFFF"><img src="images/HomeIcon.jpg" width="45" height="45">&nbsp;&nbsp;&nbsp;Home</td>
            </tr>
            <tr >
                <td id="admit" height="50" bgcolor="#FFFFFF"> <img  src="images/reg.png" width="45" height="45" alt="Admit"> Admit Patients</td>
            </tr>
            <tr >
                <td id="app" height="50" bgcolor="#FFFFFF"> <img  src="images/User-Group-icon.png" width="45" height="45" alt="Admit">Create Appointment</td>
            </tr>
            <tr>
              <td id="lab" height="50" bgcolor="#FFFFFF"><img src="images/ser.png" width="45" height="45" alt="services"> Lab Services/Pharmacy</td>
            </tr>
            <tr>
              <td id="bill" height="50" bgcolor="#FFFFFF"><img src="images/BILL2.png" width="45" height="45" alt="bill" />Billing</td>
            </tr>
            <tr>
            <td id="exit" height="50" bgcolor="#FFFFFF"><img src="images/help.jpg" width="45" height="45">Exit Patient </td>
            </tr>
            <tr>
            <td id="out" height="50" bgcolor="#FFFFFF"><a href="index.html"><img src="images/logout.png" width="45" height="45">Log Out</a> </td>
            </tr>
          </table></td>
        <td width="673" align="left" valign="top">
            <div id="img" >
              <jsp:include page="details.jsp"/></div>
         <div id="admitf" ><jsp:include page="admitf.jsp"/></div>
<div id="appf"><jsp:include page="appf.jsp"/></div>
<div id="billf"><jsp:include page="bill.jsp"/></div>
<div id="labf"><jsp:include page="searchservice.jsp"/></div>
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
    <div id="bottom_addr">© 2012 Good Health Inc. All Rights Reserved</div>
  </div>
  </div>
</div>
<br />
<br/>

</div>
<script type="text/javascript">
$(document).ready(function() {
	$("#labf").show();
   $("#admitf").hide(); 
   $("#appf").hide();
   $("#billf").hide();
     $("#img").hide();
   
   $("#admit").click(function(){
    $("#appf").hide();
	  $("#img").hide();  
$("#billf").hide(); 
  $("#labf").hide();
       $("#admitf").slideDown(2100);   
			           });
	
	 
   
   $("#app").click(function(){
	  $("#img").hide();
          $("#admitf").hide(); 
          $("#billf").hide();
          $("#labf").hide();
          $("#appf").slideDown(3100);
                     	
                        });
                         $("#lab").click(function(){
	  $("#img").hide();
          $("#admitf").hide(); 
          $("#billf").hide();
          $("#appf").hide();
          $("#labf").slideDown(3100);
                     	
                        });
	 
	 $("#hom").click(function(){
	  $("#appf").hide();
          $("#admitf").hide(); 
          $("#billf").hide();
            $("#labf").hide();
           $("#img").fadeIn(2100,'swing');
                     	
                        });
                         $("#bill").click(function(){
	  $("#appf").hide();
          $("#admitf").hide(); 
           $("#img").hide();
             $("#labf").hide();
            $("#billf").fadeIn(2100,'swing');
                
          
                     	
                        });
	 
          $("#exit").click(function(){
	  $("#appf").hide();
          $("#billf").hide();
            $("#labf").hide();
          $("#admitf").hide();
          (window.location.href="desk.jsp").slidedown(5100,'swing');
                     	
                        });
			
  // });
});
</script>
</body>
</html>

