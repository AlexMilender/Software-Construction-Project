<%@include file="LoginHeader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%
            out.println("<h1>" + request.getParameter("msg") + "</h1>");
        %>
    </body>
</html>
