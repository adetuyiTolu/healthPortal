<%@page import="java.util.*"%>
<%@page import ="java.io.OutputStream"%>
<%@page import ="java.io.InputStream"%>
<%@page import ="java.io.PrintWriter"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import = "java.sql.Blob"%>
<%@page import = "java.sql.*"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%
try {
    //ResultSet rs;
  String connectionURL = "jdbc:mysql://localhost/ghi";
  //System.out.println("Connecting");
/*Load the JDBC-ODBC bridge driver*/
       Class.forName("com.mysql.jdbc.Driver");
      // Get a Connection to the database
     Connection  con = DriverManager.getConnection(connectionURL, "root", "");
            PreparedStatement ps = con.prepareStatement("select * from patient where regno = ?");
            String regno = request.getParameter("fn");
            //response.setContentType("text/html");
            System.out.println("Member Picture");
            ps.setString(1,regno);
            ResultSet rs = ps.executeQuery();
            rs.next();

            Blob  b = rs.getBlob("picture");
            response.setContentType("image/jpeg");
            response.setContentLength( (int) b.length());
            InputStream is = b.getBinaryStream();
           // System.out.println("<h4>"+ rs.getString("fn") + "</h4>");

            OutputStream os = response.getOutputStream();
            byte buf[] = new byte[(int) b.length()];
            is.read(buf);
            os.write(buf);
            os.close();
        }
        catch(Exception ex) {
             System.out.println(ex.getMessage());
        }%>