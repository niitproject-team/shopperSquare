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
@WebServlet("/home")
public class LoginServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //To change body of generated methods, choose Tools | Templates.
        try{
            UserDAOImpl dao=new UserDAOImpl(DBconnect.getConn());
            HttpSession session=request.getSession();
            
            String email=request.getParameter("email");
             String password=request.getParameter("password");
             
            if("admin@gmail.com".equals(email)&& "admin1234".equals(password))
            {
                User us =new User();
                
                us.setName("Admin");
                session.setAttribute("userobj",us);
                response.sendRedirect("admin/home.jsp");
            }else{
                
                User us=dao.login(email, password);
                if(us!=null)
                {
                    session.setAttribute("userobj", us);
                    response.sendRedirect("index.jsp");
                }else
                {
                      session.setAttribute("failedmsg","Email & Password Invalid");
                    response.sendRedirect("home.jsp");
                    
                }
                
                response.sendRedirect("index.jsp");
            }
            
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    
    
}

