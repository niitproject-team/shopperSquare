/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.admin.servlet;

import com.DAO.UserDAOImpl;
import com.DB.DBconnect;

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
@WebServlet("/Delete")
public class Userdelete extends HttpServlet {
    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         try{
            
            int id = Integer.parseInt(request.getParameter("id"));
            
            
               UserDAOImpl dao = new UserDAOImpl(DBconnect.getConn());
               boolean f = dao.deleteuser(id);
               
                HttpSession session = request.getSession();
            if(f){
                
                 session.setAttribute("succMsg", "User deleted Successfully");
                response.sendRedirect("admin/userdetial.jsp");
            }else{
                 session.setAttribute("failedMsg", " User deleted ");
                response.sendRedirect("admin/userdetial.jsp");
            }
            
            
        }catch (Exception e){
            e.printStackTrace();
        }
        
        
    }
}
