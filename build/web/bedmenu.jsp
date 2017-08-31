<%-- 
    Document   : bedmenu
    Created on : Mar 4, 2013, 2:24:47 AM
    Author     : Slimfit
--%>
<%@ page language="java" import="java.sql.*" %> 
Bed*:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <% 
                                try {
                                    String  val= request.getParameter("user");
                                    String sql;
                                    String str = "nil";
                                    sql = "SELECT * FROM beds WHERE status='" + str + "' && ward='" + val + "'";
                                    String connectionURL = "jdbc:mysql://localhost/ghi";
                                    Connection con;
                                    Class.forName("com.mysql.jdbc.Driver");
                                    // Get a Connection to the database
                                    con = DriverManager.getConnection(connectionURL, "root", "");
                                    Statement stm = con.createStatement();
                                    stm.executeQuery(sql);
                                    ResultSet rs = stm.getResultSet();
                            %>
                            <select name="code" id="code" > 
                                <%while (rs.next()) {
                                        String ward = rs.getString("code");
                                        String tname = "bed" + ward;
                                        String name = ward;
                                %> 

                                <option value="<%=name%>"><%=tname%></option >
                                <%  }
                                    con.close();%>
                            </select>        
                            <%} catch (Exception e) {
                                    out.println("error");
                                    out.println("Exception is ;" + e);
                                }
                            %>
                            <span id='register_username_errorloc' class='error'></span>