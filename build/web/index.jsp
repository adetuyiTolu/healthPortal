<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% session.setAttribute("sub", "no"); 
session.setAttribute("log", "no");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Good Health Inc</title>
<meta name="description" content="Medical website">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="scripts/jquery-1.4.3.min.js" type="text/javascript"></script>
</head>

</html>
<body>
<div id="wrap">

<div id="page">
  <div id="top">
    
  </div>
  <div id="header">
  	<div id="intro">
  	  <h2>Professional Quote</h2>
  	  Now,we are all on a journey.it is the journey of every man,woman 
  	    and <br>child who rises up at dawn to chase their dreams,every
  	    journey has its own challenges,after having a strong resolve and
  	    a clear vision to get to our destination,all we need is good and 
  	    sound health.

  	  <p>&nbsp; </p>
  	  <h2>This is the spirit of GOOD HEALTH INC.</h2>
  	</div>
  </div>
  <div id="contentwrap">
    <div id="body_txt">
      <h1>Good Health Incoporation</h1>

      <p>Medicine is the branch of health science and the sector of public life concerned with maintaining or restoring human health through the study, diagnosis, treatment and possible prevention of disease and injury.</p>
      <p> It is both an area of knowledge &ndash; a science of body systems, their diseases and treatment and the applied practice of that knowledge.<br>
        Western medical care is shared between medical professionals (physicians) and othser professionals such as physician assistants, nurses and pharmacists, sometimes known as allied health professionals. </p>
      <p>Historically, only those with a medical doctorate have been considered to practice medicine. Clinicians (licensed professionals who deal with patients) can be physicians, nurses, therapists or others. The medical profession is the social and occupational structure of the group of people formally trained and authorized to apply medical knowledge. Many countries and legal jurisdictions have legal limitations on who may practice medicine.</br>
        Medicine comprises various specialized sub-branches, such as cardiology, pulmonology, neurology, or other fields such as sports medicine, research or public health.</p>
    </div>
    <div id="sidebar" >
    <form name="form1" method="post" action="login.jsp">
          <fieldset style="border-color: #009; border-width: medium; font-family: Tahoma, Geneva, sans-serif; color: #005889;">
            <legend><b><img src="images/login.png" alt="Keys" width="45" height="45"></b></legend>
            <table >
              <tbody><tr></tr>
              <tr>
                <td ><b>UserName:</b></td>
                <td colspan="2">
                 &nbsp;&nbsp; <input name="un" type="text" id="un" size="30" autocomplete="on" placeholder="User Name"></td>
              </tr>
              <tr>
                <td><b>Password:</b></td>
                <td colspan="2">&nbsp;&nbsp;&nbsp;<input name="pw" type="password" id="pw" size="30" autocomplete="on" placeholder="Password"></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><input name="button" type="submit" class="gray" id="button" style="color:#009" value="   Login   "></td>
                <td><input name="button2" id="button2" value="   Reset   " style="color:#009" type="reset"></td>
              </tr>
              <tr></tr>
            </tbody></table>
           
          </fieldset>
        </form>
      
</div>
    
  </div>
  <div id="footer">
    <div id="bottom_addr">© 2012 Good Health Inc. All Rights Reserved</div>
  </div>
  </div>
</div>
    <script type="text/javascript">
                        $(document).ready(function() {
                         $("#sidebar").hide();
                         $("#body_txt").hide()
                         $("#body_txt").fadeIn(3000);
                         $("#sidebar").slideDown(2100);
                            
                            $("#staf").click(function(){
                                $("#mainc").hide();
                                $("#mainc").slideDown(3000);
                             window.location="staffs.jsp";   
                            });
                             });
                             </script>
</body>
</html>
