<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
    <title>Search Patient</title>
    <link rel="STYLESHEET" type="text/css" href="css/fg_membersite.css" />
    <script type="text/javascript" src="jquery/jquery-1.4.3.min.js"></script>
     <script type="text/javascript">
$(document).ready(function(){
$('#register [name="search"]').val('');
$("#inputString").keypress(function (e)
{
$("#error").hide();
$("#autoSuggestionsList").hide();
//if the letter is not digit then display error and don't type anything
if( e.which!=8 && e.which!=0 && (e.which<48 || e.which>57)&& (e.which<65 || e.which>90)&& (e.which<97 || e.which>122))
{
//display error message
$("#error").html("No Special Characters.Only number & alphabets").show();
return false;
}
});}); 
function lookup(inputString) {
    var sea=$('#myselect option:selected').text();  
$.post("CheckPatient.jsp",{user: ""+inputString+"",sel: ""+sea+""},function(data){
$('#autoSuggestionsList').html(data).show();
});
}
function clear() {
   $('#register [name="search"]').val('');
}
</script>
</head>
<body>

<!-- Form Code Start -->
<div id='fg_membersite'>
<form id='register' action='reg.jsp' method='post' accept-charset='UTF-8'>
<fieldset>
<legend>Manage Patient</legend>
<p>Enter patient Surname or Registration number to provide all services to him/her.</p>
<legend>Search Form</legend>
<div><span class='error'></span></div>
<div class='container'>
    <span class="word">Search By: </span>
    <select name="select" id="myselect">
        <option value="Reg No" selected="selected">Reg No</option>
        <option value="Surname" >Surname</option>
    </select>
    <span id='register_name_errorloc' class='error'></span>
</div>
<div class='container'>
  <p>&nbsp;</p>
</div>
<div class='container'>
    <span class="word">Reg No/Surname:&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;
     <input type='text' name='search' id='inputString' value='' maxlength="50" onkeyup="lookup(this.value);" />
     <p>&nbsp;</p>
</div>
<font color="red"><div style="display: none;" id="autoSuggestionsList"></div></font>
<font color="red"><div style="display: none;" id="error"></div></font>
</fieldset>
</form>
<p>&nbsp;</p>
</div>

</body>
</html>