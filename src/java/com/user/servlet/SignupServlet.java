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

import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ram
 */
@WebServlet("/signup")
public class SignupServlet extends HttpServlet {



   

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        try{
            String name=request.getParameter("name");
             String email=request.getParameter("email");
              String password=request.getParameter("password");
               String contact=request.getParameter("contact");
               
               User us=new User();
               us.setName(name);
               us.setEmail(email);
               us.setPassword(password);
               us.setContact(contact);
               
               HttpSession session=request.getSession();
               
               UserDAOImpl  dao=new UserDAOImpl(DBconnect.getConn());
               boolean f=dao.userRegister(us);
               if(f)
               {
                   session.setAttribute("succmsg", "Registration successful!");
                   response.sendRedirect("signup.jsp");
                  // System.out.println("user Register succesfully");
               }else{
                    session.setAttribute("failmsg", "Something  worng in server!");
                   response.sendRedirect("signup.jsp");
                  // System.out.println("Something went worng im server");
               }
               
        } catch (Exception e) {
           e.printStackTrace();
        }
        
    }

   
   

}
