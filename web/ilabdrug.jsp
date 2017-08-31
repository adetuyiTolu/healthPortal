<%-- 
    Document   : ilabdrug
    Created on : Mar 4, 2013, 12:09:55 AM
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
                <td id="dis" height="50" bgcolor="#FFFFFF"> <img  src="images/reg.png" width="45" height="45" alt="Admit"> Discharge Patients</td>
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
            <div id="labf"><jsp:include page="searchservice.jsp"/></div>
            <div id="billf"> <jsp:include page="bill.jsp"/></div>
               <div id="disf" ><table id="mytable"><tr><th>Note:Make sure all patients bill has been paid before discharging them,to view patient bills,
             click on billing or No,but if you are sure that the patient has been cleared,then you can continue by clicking Yes,if not
             Click No</th></tr></table> <button class="submit" id="yes" title="Yes" value="Yes" name="yes" type="submit" >
                    <img class="icon" width="16" height="16" alt="Yes" title="Yes" src="images/b_edit.png">
                   Yes
                    </button>
         <button class="submit" id="no" title="No" value="No" name="no" type="submit" >
                    <img class="icon" width="16" height="16" alt="No" title="No" src="images/b_edit.png">
                    No
         </button><div id="setter"></div></div>
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
	$("#labf").show();
         $("#img").hide(); 
   $("#admitf").hide(); 
   $("#admdf").hide(); 
   $("#disf").hide();
   $("#billf").hide();
   $("#dis").click(function(){
	  $("#img").hide(); 
$("#labf").hide();          
          $("#disf").show();   
          $("#billf").hide();
      });
	
	 
   
   $("#lab").click(function(){
	  $("#img").hide();
          $("#labf").hide(); 
          $("#admitf").hide(); 
          $("#labf").slideDown(2100);
            $("#billf").hide();         	
                        });
	 $("#no").click(function(){
	  $("#img").hide();
          $("#labf").hide(); 
          $("#admitf").hide(); 
           $("#disf").hide(); 
          $("#billf").slideDown(2100);
                     	
                        });
                         $("#bill").click(function(){
	  $("#img").hide();
          $("#labf").hide(); 
          $("#admitf").hide(); 
           $("#disf").hide(); 
           $("#billf").hide();
      
          $("#billf").slideDown(2100);
                     	
                        });
	 
	 $("#hom").click(function(){
	  $("#appf").hide();
          $("#admitf").hide(); 
          $("#labf").hide(); 
           $("#img").slideDown(2100,'swing');
              $("#disf").hide(); 
$("#billf").hide();              
                        });
	 $("#yes").click(function(){
             $.post("discharge.jsp",{user: "you"},function(data){
$('#setter').html(data).show();
});
                        });
	$("#exit").click(function(){
	  $("#appf").hide();
          $("#admitf").hide();
          (window.location.href="desk.jsp").fadeIn(2100,'swing');
                     	
                        });		
  // });
});
</script>
</body>
</html>

