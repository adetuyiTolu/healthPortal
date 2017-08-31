<%@page import="java.util.*" %>
<%@page import="org.apache.commons.fileupload.FileItem" %>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@page import="java.sql.*" %>
         <%  
           
             try {
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
                    Class.forName("com.mysql.jdbc.Driver");
                    String CONNECTIONADD="jdbc:mysql://localhost/ghi";
                Connection con=DriverManager.getConnection(CONNECTIONADD,"root","");
                PreparedStatement ps=con.prepareStatement("INSERT INTO patient(regno,surname,oname,address,phone,age,picture,date) VALUES (?,?,?,?,?,?,?,?)");
                ps.setString(1,sname);
                ps.setString(2,sname);
                ps.setString(3,oname);
                ps.setString(4,hadd);
                ps.setString(5,ec);
                ps.setInt(6,age);
                ps.setBinaryStream(7, pic.getInputStream(),(int) pic.getSize());
                ps.setString(8, new java.util.Date().toString());
                ps.executeUpdate();
            out.println("image successfully saved");
            
            } catch (Exception ex) {
              out.println("error occured "+ex);  
            }
%>
    </body>
</html>
