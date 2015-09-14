<%-- 
    Document   : Rectangle
    Created on : Sep 2, 2015, 9:37:21 PM
    Author     : Matthew
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <title>Rectangle Calculator</title>
    </head>
    <body>
        <h1>Calculate the Area of a Rectangle</h1>
        <h2><fmt:formatNumber value="${rectArea}" maxFractionDigits="3"/></h2>
        <form id="rectCalc" method="POST" action="Lab3ControllerWithEL">
            <input type="hidden" name="shape" value="rect">
            Rectangle Width: <input style="width:250px;"name="width" class="form-control" type="number" value="0" min="0"></input><br>
            Rectangle Height:<input name="height" style="width:250px;" class="form-control" type="number" value="0" min="0"> </input><br>
            <input type="submit" class="btn btn-primary" name="calculate" value="Calculate Area"></input>
        </form>
        <br><br><br>
        <h1>Calculate the Area of a Circle</h1>
        <h2><fmt:formatNumber value="${cirArea}" maxFractionDigits="3"/></h2>
        <form id="cirCalc" method="POST" action="Lab3ControllerWithEL">
            <input type="hidden" name="shape" value="cir">
            Circle Radius: <input style="width:250px;" name="radius" class="form-control" type="number" value="0" min="0"></input><br>
            <input type="submit" class="btn btn-primary" name="calculate" value="Calculate Area"></input>
        </form>
        <br><br><br>
        <h1>Calculate the Area of a Triangle</h1>
        <h2><fmt:formatNumber value="${triArea}" maxFractionDigits="3"/></h2>
        <form id="triCalc" method="POST" action="Lab3ControllerWithEL">
            <input type="hidden" name="shape" value="tri">
            Triangle Base: <input style="width:250px;" name="base" class="form-control" type="number" value="0" min="0"></input><br>
            Triangle Height:<input style="width:250px;" name="triHeight" class="form-control" type="number" value="0" min="0"> </input><br>
            <input type="submit" class="btn btn-primary" name="calculate" value="Calculate Area"></input>
        </form>
        <br>
        <form id="results">
            <label for="final"  value="Comming Soon."/>
            <input name="final" type="submit" class="btn btn-success disabled" value="Show All Calculations"></input>
        </form>
    </body>
</html>
