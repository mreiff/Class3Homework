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
        <form id="rectCalc" method="POST" action="Lab3Controller">
            <input type="hidden" name="shape" value="rect">
            Rectangle Width: <input name="width" type="number" value="0" min="0"></input><br>
            Rectangle Height:<input name="height" type="number" value="0" min="0"> </input><br>
            <input type="submit" name="calculate" value="Calculate Area"></input>
        </form>
        <h1>Calculate the Area of a Rectangle</h1>
        <h2>
            <%
                Object cirObj = request.getAttribute("cirArea");
                if(cirObj != null && cirObj instanceof Double){
                    double rectArea = ((Double) cirObj).doubleValue();
                    out.println(rectArea);
                }
            %>
        </h2>
        <form id="cirCalc" method="POST" action="Lab3Controller">
            <input type="hidden" name="shape" value="cir">
            Circle Radius: <input name="radius" type="number" value="0" min="0"></input><br>
            <input type="submit" name="calculate" value="Calculate Area"></input>
        </form>
        <h1>Calculate the Area of a Rectangle</h1>
        <h2>
            <%
                Object triObj = request.getAttribute("triArea");
                if(triObj != null && triObj instanceof Double){
                    double cirArea = ((Double) triObj).doubleValue();
                    out.println(cirArea);
                }
            %>
        </h2>
        <form id="triCalc" method="POST" action="Lab3Controller">
            <input type="hidden" name="shape" value="tri">
            Triangle Base: <input name="base" type="number" value="0" min="0"></input><br>
            Triangle Height:<input name="triHeight" type="number" value="0" min="0"> </input><br>
            <input type="submit" name="calculate" value="Calculate Area"></input>
        </form>
    </body>
</html>
