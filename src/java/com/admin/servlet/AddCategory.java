/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.admin.servlet;

import com.DAO.CategoryDAOImpl;
import com.DB.DBconnect;
import com.entity.Catagory;
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

@WebServlet("/addcategory")
public class AddCategory extends HttpServlet{
    
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String catagorytittle = request.getParameter("catagorytittle");
        String catagoryDescription = request.getParameter("catagoryDescription");
        
        
        Catagory cro = new Catagory(catagorytittle,catagoryDescription);
          CategoryDAOImpl dao = new CategoryDAOImpl(DBconnect.getConn());
           boolean f = dao.addcategory(cro);
           
           HttpSession session = request.getSession();
           
           if(f){
               
               
              session.setAttribute("succMsg", "category add Successfully");
                response.sendRedirect("admin/addcategory.jsp");
            }else{
                 session.setAttribute("failedMsg", "something wrong on server ");
                response.sendRedirect("admin/addcategory.jsp");
            }
        
    }
}
