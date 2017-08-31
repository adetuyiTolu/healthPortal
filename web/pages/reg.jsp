<%-- 
    Document   : newjsp
    Created on : Jan 21, 2013, 3:49:54 PM
    Author     : Slimfit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Good Health INC.</title>
        <link href="css/fg_membersite.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
       <div id='fg_membersite'>
<form id='register' action='' method='post' accept-charset='UTF-8'>
<fieldset >
<legend>Register</legend>

<input type='hidden' name='submitted' id='submitted' value='1'/>

<div class='short_explanation'>* required fields</div>
<input type='text'  class='spmhidip' name='' />

<div><span class='error'></span></div>
<div class='container'>
    <label for='name' >Your Full Name*: </label><br/>
    <input type='text' name='name' id='name' value='' maxlength="50" /><br/>
    <span id='register_name_errorloc' class='error'></span>
</div>
<div class='container'>
    <label for='email' >Email Address*:</label><br/>
    <input type='text' name='email' id='email' value='' maxlength="50" /><br/>
    <span id='register_email_errorloc' class='error'></span>
</div>
<div class='container'>
    <label for='username' >UserName*:</label><br/>
    <input type='text' name='username' id='username' value='' maxlength="50" /><br/>
    <span id='register_username_errorloc' class='error'></span>
</div>
<div class='container' style='height:80px;'>
    <label for='password' >Password*:</label><br/>
    <input type='password' name='password' id='password' maxlength="50" />  
    <div id='register_password_errorloc' class='error' style='clear:both'></div>
</div>

<div class='container'>
    <input type='submit' name='Submit' value='Submit' />
</div>

</fieldset>
</form>
</div>
</body>
</html>
    </body>
</html>
