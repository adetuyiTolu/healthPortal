<%@ page language="java" import="java.sql.*" %>
<% response.setContentType("text/html");%>
<%
try {
        String code=request.getParameter("code");
        int wl =code.length();
        int cl=code.indexOf("/")+1;
        String rcode=code.substring(cl);
        String rward=code.substring(0, cl-1);
String reg =session.getAttribute("reg").toString();
String date =request.getParameter("date").toString();
String doctor =request.getParameter("doc");
String nurse =request.getParameter("nurse");
String anurse =request.getParameter("anurse");
String purpose =request.getParameter("purpose");
String connectionURL = "jdbc:mysql://localhost/ghi";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection(connectionURL, "root", "");
PreparedStatement ps=con.prepareStatement("INSERT INTO admission(regno,ward,doctor,nurse,anurse,purpose,charge,doa,dod,status,bed) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1,reg);
                ps.setString(2,rward);
                ps.setString(3,doctor);
                ps.setString(4,nurse);
                ps.setString(5,anurse);
                ps.setString(6,purpose);
                ps.setString(7,"");
                 ps.setString(8,date);
                 ps.setString(9,"");
                 ps.setString(10,"admit");
                 ps.setString(11,rcode);
                     ps.executeUpdate();
                  PreparedStatement ps2=con.prepareStatement("UPDATE patient set status =? where regno=?");
                 ps2.setString(1,"in-patient");
                  ps2.setString(2,reg);
               ps2.executeUpdate();
               PreparedStatement ps3=con.prepareStatement("UPDATE beds set status =? where ward=? && code=?");
                 ps3.setString(1,"on");
                  ps3.setString(2,rward);
                  ps3.setString(3,rcode);
               ps3.executeUpdate();
               session.setAttribute("status", "in-patient");
         %>
<script>alert('Admission successfully created');(window.location.href='inpatient.jsp');</script>            
<%
    }catch(NullPointerException ex){
    out.println("Appointment not successfully created");
out.println("Exception is ;"+ex);
}catch(Exception e){
    out.println("Appointment not successfully created");
out.println("Exception is ;"+e);
}
            %>