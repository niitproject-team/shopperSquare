/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user.servlet;

import com.DAO.UserDAOImpl;
import com.DB.DBconnect;
import com.entity.User;
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

@WebServlet("/update_profile")
public class UpdateProfileServlet extends HttpServlet {
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try{
            int id = Integer.parseInt(request.getParameter("id"));
             String name=request.getParameter("name");
             String email=request.getParameter("email");
              String password=request.getParameter("password");
               String contact=request.getParameter("contact");
               
               User us = new User();
               us.setId(id);
               us.setName(name);
               us.setEmail(email);
               us.setContact(contact);
               
                 HttpSession session=request.getSession();
               UserDAOImpl dao = new UserDAOImpl(DBconnect.getConn());
               
               boolean f  = dao.cheackpassword(id,password);
               if(f)
               {
                   
                  boolean f2 =  dao.updateprofile(us);
                   if(f2)
                   {
                        session.setAttribute("succmsg", "Profile update successful!");
                   response.sendRedirect("userprofile.jsp");
                       
                   }else{
                        session.setAttribute("failmsg", "something worng on server!");
                   response.sendRedirect("userprofile.jsp");
                   }
               }else{
                   
                   
                   
                    session.setAttribute("failmsg", "Your password is incorrect!");
                   response.sendRedirect("userprofile.jsp");
               }
               
               
               
            
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
