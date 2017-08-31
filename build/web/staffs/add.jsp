<%-- 
    Document   : addstaff
    Created on : Mar 6, 2013, 2:04:00 PM
    Author     : Slimfit
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
    <head>
        <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
        <title>Add Staff</title>

        <link rel="stylesheet" media="screen" href="../css/form.css" />
            <script type="text/javascript" src="../jquery/jquery-1.4.3.min.js"></script>
            <script type="text/javascript">
                $(document).ready(function(){
                    $("#phn").keypress(function (e)
                    {
isNumberKey(e)
                        //if the letter is not digit then display error and don't type anything
                        if(( e.which!=8 && e.which!=0 && (e.which<48 || e.which>57)&& (e.which<65 || e.which>90)&& (e.which<97 || e.which>122)) )
                        {
                            return false;
                        }
                        if(e.which>31 && (e.which<48 || e.which>57)){
                          return false;  
                        }
                   		
                    });
                     function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;
      }
	  
         
	 });	
                 
            </script>
    </head>
    <body>

        <!-- Form Code Start -->
        <div  align="center" id="form">
            <form  method='post' action="staffs/addc.jsp" name="contact_form" class='contact_form' accept-charset='UTF-8' id="sub">
                <ul>
                    <li>
                        <h2>Add Staff Form</h2>
                        <span class="required_notification">* Denotes Required Field</span>
                    </li>
                    <li><label for="name"> Full Name*:</label>
                        <input type='text' name='name' id='name' required />
                        <span class="form_hint">Name is required</span>
                    </li>
                     <li><label for="type"> Type*:</label>
                        <select name="type" id="type"> 
                            <option value="Doctor">Doctor</option >
                            <option value="Nurse">Nurse</option >
                            <option value="Others">Others</option >
                        </select>
                    </li>
                    <li>

                        <label for="name"> Working Hours*:</label>
                        <input type='text' name='wh' id='wh' required />   
                        <span class="form_hint">working hours is required</span>
                    </li>
                    <li>
                        <label for="name">Home Address*:</label>
                        <input type='text' name='hadd' id='hadd' required /> 
                        <span class="form_hint">home address is required</span>
                    </li>
                    <li>
                        <label for="name">Emergency No.* :</label>
                        <input type='text' name='ec' id='ec' required />   
                        <span class="form_hint">emergency number is required</span>
                    </li>
                    <li>
                        <button class="submit" type="submit" name="submit" id="submit">Submit</button>
                    </li>
                </ul>
 <font color="red">  <div id="autosuggestionlist"></div></font>
            </form>
           
        </div>
    </body>
</html>