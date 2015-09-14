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
<script> src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <title>Rectangle Calculator</title>
    </head>
    <body>
        <img style="width:200px;" src="images/rectangle.jpeg"/>
        <h1>Calculate the Area of a Rectangle</h1>
        <h2><fmt:formatNumber value="${rectArea}" maxFractionDigits="3"/></h2>
        <form id="rectCalc" method="POST" action="Lab3ControllerWithEL">
            <input type="hidden" name="shape" value="rect">
            Rectangle Width: <input style="width:250px;"name="width" class="form-control" type="number" value="0" min="0"></input><br>
            Rectangle Height:<input name="height" style="width:250px;" class="form-control" type="number" value="0" min="0"> </input><br>
            <input type="submit" class="btn btn-primary" name="calculate" value="Calculate Area"></input>
        </form>
        <br><br><br>
        <img style="width:200px;" src="images/circle.jpg"/>
        <h1>Calculate the Area of a Circle</h1>
        <h2><fmt:formatNumber value="${cirArea}" maxFractionDigits="3"/></h2>
        <form id="cirCalc" method="POST" action="Lab3ControllerWithEL">
            <input type="hidden" name="shape" value="cir">
            Circle Radius: <input style="width:250px;" name="radius" class="form-control" type="number" value="0" min="0"></input><br>
            <input type="submit" class="btn btn-primary" name="calculate" value="Calculate Area"></input>
        </form>
        <br><br><br>
        <img style="width:200px;" src="images/triangle.png"/>
        <h1>Calculate the Area of a Triangle</h1>
        <h2><fmt:formatNumber value="${triArea}" maxFractionDigits="3"/></h2>
        <form id="triCalc" method="POST" action="Lab3ControllerWithEL">
            <input type="hidden" name="shape" value="tri">
            Triangle Base: <input style="width:250px;" name="base" class="form-control" type="number" value="0" min="0"></input><br>
            Triangle Height:<input style="width:250px;" name="triHeight" class="form-control" type="number" value="0" min="0"> </input><br>
            <input type="submit" class="btn btn-primary" name="calculate" value="Calculate Area"></input>
        </form>
        <br>
        <div id="warning" name="warning" class="alert alert-info">
            <strong>Warning!</strong> This feature is currently under development. It is coming soon.
        </div>
        <script>
                $("#final").click(function(e){
                    e.preventDefault();
                    $("#warning").toggleClass("hidden");
                });
        </script>
        <a id="final" name="final" class="btn btn-success disabled">Show All Calculations</a>
    </body>
</html>
