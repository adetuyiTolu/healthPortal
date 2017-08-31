
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
    <head>
        <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
        <title>Contact us</title>

        <link rel="stylesheet" media="screen" href="css/form.css" >
            <script type="text/javascript" src="jquery/jquery-1.4.3.min.js"></script>
            <script type="text/javascript">
                $(document).ready(function(){
                    $("#age").keypress(function (e)
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
	  
          $("#submit").click(function (e)
                    {
                       
                        
                    });
	 });	
                 
            </script>
    </head>
    <body>

        <!-- Form Code Start -->
        <div  align="center">
            <form  method='post' action="desk2.jsp" enctype="multipart/form-data" name="contact_form" class='contact_form' accept-charset='UTF-8' id="sub">
                <ul>
                    <li>
                        <h2>Fill in the Form</h2>
                        <span class="required_notification">* Denotes Required Field</span>
                    </li>
                    <li><label for="name"> SurName*:</label>
                        <input type='text' name='sname' id='sname' required />
                        <span class="form_hint">surname is required</span>
                    </li>
                    <li>

                        <label for="name"> Other Names*:</label>
                        <input type='text' name='oname' id='oname' required />   
                        <span class="form_hint">other name is required</span>
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

                        <label for="name"> Age*:</label>
                        <input type='text' name='age' id='age' required onkeypress="isNumberKey(this.value)"  />     
                        <span class="form_hint" id="age">Age is required</span>
                    </li>
                    <li>
                        <label for="name">Picture*:</label>
                        <input type="file" name="pic" id="pic" required />  
                        <span class="form_hint">picture is required</span>

                    </li>
                    <li>
                        <button class="submit" type="submit" name="submit" id="submit">Submit</button>
                    </li>
                </ul>

            </form>

        </div>
    </body>
</html>