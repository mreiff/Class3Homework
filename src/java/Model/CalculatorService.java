/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Matthew
 */
public class CalculatorService {
    
    public double calculateRectangleArea(double width, double height){
        return width * height;
    }
    
    public double calculateRectangleArea(String width, String height){
        try{
            double widthD = Double.parseDouble(width);
            double heightD = Double.parseDouble(height);
            return calculateRectangleArea(widthD, heightD);
        }
        catch(Exception e){
            return 0;
        }
    }
    
    public double calculateCircleArea(double radius){
        return Math.PI * Math.pow(radius, 2);
    }
    
    public double calculateCircleArea(String radius){
        try{
            double radiusD = Double.parseDouble(radius);
            return calculateCircleArea(radiusD);
        }
        catch(Exception e){
            return 0;
        }
    }
    public double calculateTriangleArea(double base, double height){
        return (base * height)/2;
    }
    
    public double calculateTriangleArea(String base, String height){
        try{
            double baseD = Double.parseDouble(base);
            double heightD = Double.parseDouble(height);
            return calculateTriangleArea(baseD, heightD);
        }
        catch(Exception e){
            return 0;
        }
    }
}
