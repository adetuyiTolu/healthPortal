
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
    <head>
        <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
        <title>Good health Inc.</title>

        <link rel="stylesheet" media="screen" href="css/form.css" >
            <script type="text/javascript" src="jquery/jquery-1.4.3.min.js"></script>
            <script type="text/javascript">
                $(document).ready(function(){
                   
	  
          $("#admit").click(function (e)
                    {
	  $("#mainm").show();          	
       $("#mainm").fadeIn(2100);
                        
                    });
	 });	
                 
            </script>
    </head>
    <body>

        <!-- Form Code Start -->
        

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
           String reg="";
             try {
                 
                    Class.forName("com.mysql.jdbc.Driver");
                    String CONNECTIONADD="jdbc:mysql://localhost/ghi";
                    
                Connection con=DriverManager.getConnection(CONNECTIONADD,"root","");
                Statement stm = con.createStatement();
stm.executeQuery("select * from patient");
ResultSet rs= stm.getResultSet();

if(rs.last()){
  reg= "ghi"+rs.getString("id");
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
            out.println("image successfully saved");
            session.setAttribute("sub", "yes");
    
            } catch (Exception ex) {
              out.println("error occured "+ex);  
            }
%>
<div class='contact_form' >
<table width="200" border="0">
  <tr>
    <td height="479" align="right"><form action="desk.jsp" method="post">
                <ul>
                    <li>
                        <h2>Registration Details</h2>
                    </li>
                     <li><label for="reg"> Reg. Number*:</label>
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
                       <button class="submit" name="print" id="print" onclick="window.print()">print</button>
                    </li> 
                </ul>
</form></td>
    <td valign="top">&nbsp;</td>
  </tr>
</table>

    
</div>
        </div>
    </body>
</html>