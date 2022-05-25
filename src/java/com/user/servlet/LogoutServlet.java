/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ram
 */

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet{
    
    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        request.getSession().invalidate();
        response.sendRedirect(request.getContextPath() + "/home.jsp");
        
        try{
            
            
            HttpSession session = request.getSession();
                    session.removeAttribute("userobj");
                    
                    
                    HttpSession session2 = request.getSession();
                    session.setAttribute("succMsg", "");
                    response.sendRedirect("home.jsp");
            
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
