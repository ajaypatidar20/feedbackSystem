/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.feedback.servlet;

import com.feedback.bean.LoginCredit;
import com.feedback.manager.LoginManager;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Girjesh
 */
public class registrationServlet extends HttpServlet {
    String action, userId,pass,deptId,semId,year,section;
    LoginCredit lc;
    LoginManager lm;
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        action=request.getParameter("action");
        lc=new LoginCredit();
        try {
            lm= new LoginManager();
            userId=request.getParameter("userId");
            lc.setUserId(userId);
            pass= request.getParameter("pass");
            lc.setPassword(pass);
            if(action.equalsIgnoreCase("coordinator"))
            { deptId= request.getParameter("deptId");
              semId= request.getParameter("semId");
              year=request.getParameter("year");
              section=request.getParameter("section");
              lc.setDeptId(deptId);
              lc.setSection(section);
              lc.setYear(year);
              lc.setSemId(semId);
              lc.setRole("coordinator");
                
            }else 
            if(action.equalsIgnoreCase("departmentAdmin"))
            {  deptId= request.getParameter("deptId");
               lc.setDeptId(deptId);
               lc.setRole("departmentAdmin");
            }
            else
            if(action.equalsIgnoreCase("principal"))
            {  lc.setRole("principal");
                
            }
            lm.insertUserCredit(lc);
            response.sendRedirect("index.jsp"); 
            
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
