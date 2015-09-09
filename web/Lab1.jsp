<%-- 
    Document   : Rectangle
    Created on : Sep 2, 2015, 9:37:21 PM
    Author     : Matthew
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rectangle Calculator</title>
    </head>
    <body>
        <h1>Calculate the Area of a Rectangle</h1>
        <h2>
            <%
                Object obj = request.getAttribute("rectArea");
                if(obj != null && obj instanceof Double){
                    double rectArea = ((Double) obj).doubleValue();
                    out.println(rectArea);
                }
            %>
        </h2>
        <form id="rectCalc" method="POST" action="Lab2Controller">
            Rectangle Width: <input name="width" type="number" value="0" min="0"></input><br>
            Rectangle Height:<input name="height" type="number" value="0" min="0"> </input><br>
            <input type="submit" name="calculate" value="Calculate Area"></input>
        </form>
    </body>
</html>
