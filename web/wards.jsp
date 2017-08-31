<%-- 
    Document   : staffs
    Created on : Mar 6, 2013, 7:54:05 AM
    Author     : Slimfit
--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Good Health Inc</title>
    <meta name="description" content="Medical website">
    <link rel="stylesheet" media="screen" href="css/form.css" />
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
        #vie {
	text-align: left;
}
        #vieb {
	text-align: left;
}
        #ad {
	text-align: left;
}
        #adl {
	text-align: left;
}
        #updat {
	text-align: left;
}
        #updatl {
	text-align: left;
}
        #exit {
	text-align: left;
}
        #out {
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
            You are welcome to good health inc. Portal:|| You are currently logged in as an Administrator
          </marquee></td>
        </tr>
</table>
      <table width="918" border="0">
        <tr>
          <td width="235" valign="top"><table bgcolor="#B9B5B0" width="241" height="434" border="0" cellpadding="1" cellspacing="4">
          <tr>
              <td id="vie" width="231" height="48" bgcolor="#FFFFFF"><img src="images/checkmark.png" width="45" height="45">&nbsp;&nbsp;&nbsp;View Wards</td>
            </tr>
            <tr>
              <td id="vieb" width="231" height="50" bgcolor="#FFFFFF"><img src="images/checkmark.png" width="45" height="45">&nbsp;&nbsp;&nbsp;View Beds</td>
            </tr>
            
            <tr >
                <td id="ad" height="50" bgcolor="#FFFFFF"> <img  src="images/add-contact-app-icon.png" width="45" height="45" alt="Admit"> Add Wards</td>
            </tr>
            <tr >
                <td id="adl" height="50" bgcolor="#FFFFFF"> <img  src="images/add-contact-app-icon.png" width="45" height="45" alt="Admit"> Add Beds</td>
            </tr>
            <tr>
              <td id="updat" height="50" bgcolor="#FFFFFF"><img src="images/b_edit.png" width="35" height="35" alt="services">Update Wards</td>
            </tr>
            <tr>
              <td id="updatl" height="50" bgcolor="#FFFFFF"><img src="images/b_edit.png" width="35" height="35" alt="services">Update Beds</td>
            </tr>
            <td id="exit" height="50" bgcolor="#FFFFFF"><img src="images/help.jpg" width="45" height="45">Exit Wards </td>
            </tr>
            <tr>
            <td id="out" height="50" bgcolor="#FFFFFF"><a href="index.html"><img src="images/logout.png" width="45" height="45">Log Out</a> </td>
            </tr>
          </table></td>
        <td width="673" align="left" valign="top">
        <div id="view" >
           <jsp:include page="wards/view.jsp"/></div>
        <div id="add" >
          <jsp:include page="wards/add.jsp"/></div>
           
          <div id="update"><jsp:include page="wards/update.jsp"/></div>
           <div id="viewl" >
           <jsp:include page="beds/view.jsp"/></div>
        <div id="addl" >
          <jsp:include page="beds/add.jsp"/></div>
           
          <div id="updatel"><jsp:include page="beds/update.jsp"/></div>
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
     $("#addl").hide();     
   $("#updatel").hide();
       $("#view").hide();
     $("#add").hide();     
   $("#update").hide();
   $("#viewl").hide();
     $("#view").fadeIn(2100);
   $("#vie").click(function(){
	    $("#add").hide();     
   $("#update").hide(); 
      $("#view").hide();
     $("#add").hide();     
   $("#update").hide();
   $("#viewl").hide();
     $("#addl").hide();     
   $("#updatel").hide();
   $("#view").fadeIn(2100);
	  		           });
                                   $("#viel").click(function(){
	    $("#add").hide();     
   $("#update").hide(); 
      $("#view").hide();
     $("#add").hide();     
   $("#update").hide();
   $("#viewl").hide();
     $("#addl").hide();     
   $("#updatel").hide();
   $("#viewl").fadeIn(2100);
	  		           });
      $("#ad").click(function(){
	    $("#view").hide();     
   $("#update").hide(); 
      $("#view").hide();
     $("#add").hide();     
   $("#update").hide();
   $("#viewl").hide();
     $("#addl").hide();     
   $("#updatel").hide();
   $("#add").slideDown(2100);
	  		           });
	
	 
   
   $("#updat").click(function(){
	  	$("#view").hide();
     $("#add").hide();  
        $("#view").hide();
     $("#add").hide();     
   $("#update").hide();
   $("#viewl").hide();
     $("#addl").hide();     
   $("#updatel").hide();
          $("#update").slideDown(2100);      	
                        });
	 
	$("#exit").click(function(){
	  $("#update").hide(3100);
          $("#view").hide();
          (window.location.href="admin.jsp").fadeIn(2100,'swing');
                     	
                        });
                        
                            $("#vieb").click(function(){
	    $("#add").hide();     
   $("#update").hide(); 
   $("#view").hide();
     $("#add").hide();     
   $("#update").hide();
   $("#viewl").hide();
     $("#addl").hide();     
   $("#updatel").hide();
   $("#viewl").fadeIn(2100);
	  		           });
      $("#adl").click(function(){
	    $("#view").hide();     
   $("#update").hide(); 
   $("#view").hide();
     $("#add").hide();     
   $("#update").hide();
   $("#viewl").hide();
     $("#addl").hide();     
   $("#updatel").hide();
   $("#addl").slideDown(2100);
	  		           });
	
	 
   
   $("#updatl").click(function(){
	  	$("#view").hide();
                $("#view").hide();
     $("#add").hide();     
   $("#update").hide();
   $("#viewl").hide();
     $("#addl").hide();     
   $("#updatel").hide();
     $("#add").hide();  
          $("#updatel").slideDown(2100);      	
                        });
  // testing things
  
});
</script>
</body>
</html>
