<%-- 
    Document   : logout
    Created on : Mar 9, 2013, 8:42:45 PM
    Author     : Slimfit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% session.invalidate(); %>
        <script>(window.location.href='index.jsp');</script>
    </body>
</html>
