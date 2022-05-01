/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.admin.servlet;

import com.DAO.ProductDAOImpl;
import com.DB.DBconnect;
import com.entity.Product;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author ram
 */
 @WebServlet("/addproducts")
 @MultipartConfig
public class AddProduct  extends HttpServlet{
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
        try{
            
            String productname = request.getParameter("productname");
            String productdescription = request.getParameter("productdescription");
            String productprice = request.getParameter("productprice");
            String productdiscount = request.getParameter("productdiscount");
            String productquantity = request.getParameter("productquantity");
            String productcategory = request.getParameter("productcategory");
            String productstatus = request.getParameter("productstatus");
            Part part  = request.getPart("photo");
            String filename = part.getSubmittedFileName();
            
            Product pro = new Product(productname,productdescription,productprice,productdiscount,productquantity,productcategory,productstatus,filename,"admin");
            ProductDAOImpl dao = new ProductDAOImpl(DBconnect.getConn());
            
              
            
            
          boolean f = dao.addproduct(pro);
            
            HttpSession session = request.getSession();
            
            if(f){
                
      
                 String path = getServletContext().getRealPath("") + "books";
                
                File fe = new File(path);
                
                part.write(path + File.separator + filename);
         
                
                session.setAttribute("succMsg", "product add Successfully");
                response.sendRedirect("admin/addproducts.jsp");
            }else{
                 session.setAttribute("failedMsg", "something wrong on server ");
                response.sendRedirect("admin/addproducts.jsp");
            }
            
           
            
            
            
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
