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
        <link rel="stylesheet" media="screen" href="css/form.css" >
            <script type="text/javascript" src="jquery/jquery-1.4.3.min.js"></script>
            <script type="text/javascript">
                $(document).ready(function(){
                   
	  
          $("#admit").click(function (e)
                    {
	  $("#mainm").show();          	
       $("#mainm").fadeIn(2100);
                        
                    });
                    
                     $("#print").click(function (e)
                    {
                        $("#print").hide();       	
                        window.print();
                        
                    });
	 });	
                 
            </script>
    </head>
    <body bgcolor="#FFFFFF">
        <div  align="center">
            
                    <%@page import="java.util.*" %>
<%@page import="org.apache.commons.fileupload.FileItem" %>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@page import="java.sql.*" %>
         <%  
           DiskFileItemFactory factory = new DiskFileItemFactory();
         ServletFileUpload sfu = new ServletFileUpload(factory);
           List items = sfu.parseRequest(request);
           FileItem sn = (FileItem) items.get(0);
           String sname=sn.getString();
           FileItem on = (FileItem) items.get(1);
            String oname=on.getString();
           FileItem ad = (FileItem) items.get(2);
            String hadd=ad.getString();
           FileItem ph = (FileItem) items.get(3);
            String ec=ph.getString();
           FileItem ag = (FileItem) items.get(4);
           int age=Integer.parseInt(ag.getString());
           FileItem pic = (FileItem) items.get(5);
           String reg="ghi1";
             try {
                 
                    Class.forName("com.mysql.jdbc.Driver");
                    String CONNECTIONADD="jdbc:mysql://localhost/ghi";
                      Connection con=DriverManager.getConnection(CONNECTIONADD,"root","");
                Statement stm = con.createStatement();
stm.executeQuery("select * from patient");
ResultSet rs= stm.getResultSet();

if(rs.last()){
    int i=rs.getInt("id")+1;
  reg= "ghi"+i;
}
                
                PreparedStatement ps=con.prepareStatement("INSERT INTO patient(regno,surname,oname,address,phone,age,picture,date) VALUES (?,?,?,?,?,?,?,?)");
                ps.setString(1,reg);
                ps.setString(2,sname);
                ps.setString(3,oname);
                ps.setString(4,hadd);
                ps.setString(5,ec);
                ps.setInt(6,age);
                ps.setBinaryStream(7, pic.getInputStream(),(int) pic.getSize());
                ps.setString(8, new java.util.Date().toString());
                ps.executeUpdate();
            //out.println("image successfully saved");
           // session.setAttribute("sub", "yes");
    
            } catch (Exception ex) {
              out.println("error occured "+ex);  
            }
%>
        <div id="pag" align="center"><br>
            <br>
            <fieldset>
                <div id="wrap" align="center">
                    <div id="page">

                        <div ><table width="923" border="0">
  <tr>
    <td width="743" align="left"> <img src="images/BANNER.jpg" alt="LOGO" width="745" height="150" align="left"></td>
    <td width="170" align="center"> <%  out.println("<img width = 154 height = 150 src=view2.jsp?fn="+reg +"></img>"); %>
</td>
  </tr>
</table>

              </div>
                       
                        <div id="contentwrap">
                            
                            
                            <div class='contact_form'id="" >
<table width="200" border="0">
  <tr>
    <td height="479" align="right"><form action="desk.jsp" method="post">
                <ul id="contac">
                    <li>
                        <h2>Registration Details</h2>
                    </li>
                     <li><label for="name">Reg. Number:</label>
                        <%=reg  %>
                    </li>
                    
                    <li><label for="name"> SurName*:</label>
                        <%=sname  %>
                    </li>
                    <li>

                        <label for="name"> Other Names*:</label>
                        <%=oname %>
                    </li>
                    <li>
                        <label for="name">Home Address*:</label>
                      <%=hadd  %>
                    </li>
                    <li>
                        <label for="name">Emergency No.* :</label>
                        <%=ec  %>
                    </li>
                    <li>

                        <label for="name"> Age*:</label>
                        <%=age %>
                    </li>
                   <li>
                       <button class="submit" name="print" id="print"
                               >print</button>
                    </li> 
                </ul>
</form></td>
    <td valign="top">&nbsp;</td>
  </tr>
</table>

    
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
                                <div id="bottom_addr">© 2012 Good Health Inc. All Rights Reserved || Designed by Adetuyi Tolu Slimfit Emmanuel  </div>
                            </div>
                        </div> 
                        
                    </div>
                   
            </fieldset>
            <br>
        </div>
                            
    </body>
 </html>
