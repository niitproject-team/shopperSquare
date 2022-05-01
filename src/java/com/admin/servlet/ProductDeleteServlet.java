/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.admin.servlet;

import com.DAO.ProductDAOImpl;
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

@WebServlet ("/delete")
public class ProductDeleteServlet extends HttpServlet{
    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        try{
            
            int id = Integer.parseInt(request.getParameter("id"));
            
            
               ProductDAOImpl dao = new ProductDAOImpl(DBconnect.getConn());
               boolean f = dao.deleteProduct(id);
               
                HttpSession session = request.getSession();
            if(f){
                
                 session.setAttribute("succMsg", "product deleted Successfully");
                response.sendRedirect("admin/allproducts.jsp");
            }else{
                 session.setAttribute("failedMsg", "product deleted ");
                response.sendRedirect("admin/allproducts.jsp");
            }
            
            
        }catch (Exception e){
            e.printStackTrace();
        }
        
    }
    
}
