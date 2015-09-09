<%-- 
    Document   : Lab1Output
    Created on : Sep 9, 2015, 6:50:42 PM
    Author     : Matthew
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%
                Object obj = request.getAttribute("rectArea");
                if(obj != null && obj instanceof Double){
                    double rectArea = ((Double) obj).doubleValue();
                    out.println(rectArea);
                }
            %>
    </body>
</html>
