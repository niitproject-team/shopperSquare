/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.admin.servlet;

import com.DAO.ProductDAOImpl;
import com.DB.DBconnect;
import com.entity.Product;
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

@WebServlet("/editproducts")
public class EditProductServlet  extends HttpServlet{
    
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        try {
            
            int id = Integer.parseInt(request.getParameter("id"));
              String productname = request.getParameter("productname");
            String productdescription = request.getParameter("productdescription");
                      int productprice = Integer.parseInt(request.getParameter("productprice"));
                      int productdiscount = Integer.parseInt(request.getParameter("productdiscount"));
                      int productquantity = Integer.parseInt(request.getParameter("productquantity"));
         
            String productstatus = request.getParameter("productstatus");
            
            
            
            Product pro  = new  Product();
            pro.setProductId(id);
            pro.setProductname(productname);
            pro.setProductdescription(productdescription);
            pro.setProductprice(productprice);
            pro.setProductquantity(productquantity);
            pro.setProductdiscount(productdiscount);
            pro.setProductstatus(productstatus);
            
            ProductDAOImpl dao = new ProductDAOImpl(DBconnect.getConn());
            boolean f = dao.updateEditProduct(pro);
            
            HttpSession session = request.getSession();
            if(f){
                
                 session.setAttribute("succMsg", "product Edit Successfully");
                response.sendRedirect("admin/allproducts.jsp");
            }else{
                 session.setAttribute("failedMsg", "something wrong on server ");
                response.sendRedirect("admin/allproducts.jsp");
            }
            
            
        }catch (Exception e){
            e.printStackTrace();
        }
        
    }
    
}
