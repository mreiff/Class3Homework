/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.CalculatorService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Matthew
 */
@WebServlet(name = "Lab3ControllerWithEL", urlPatterns = {"/Lab3ControllerWithEL"})
public class Lab3ControllerWithEL extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        CalculatorService cs = new CalculatorService();
        
        // Shape type
        String shape = request.getParameter("shape");
        
        if(shape.equals("rect")){
            //Get width
            String width = request.getParameter("width");
            String height = request.getParameter("height");
            double area = cs.calculateRectangleArea(width, height);


            request.setAttribute("rectArea", area);
        }
        else if(shape.equals("cir")){
            String radius = request.getParameter("radius");
            double area = cs.calculateCircleArea(radius);


            request.setAttribute("cirArea", area);
        }
        else if(shape.equals("tri")){
            String base = request.getParameter("base");
            String height = request.getParameter("triHeight");
            double area = cs.calculateTriangleArea(base, height);


            request.setAttribute("triArea", area);
        }
        
        // Push website to view.
        RequestDispatcher view = request.getRequestDispatcher("Lab3WithEL.jsp");
        view.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
