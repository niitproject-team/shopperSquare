/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user.servlet;

import com.DAO.CartDAOImpl;
import com.DAO.ProductDAOImpl;
import com.DB.DBconnect;
import com.entity.Cart;
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

@WebServlet("/Cart")
public class CartServlet extends HttpServlet {
    
       @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try{
            
            int pid = Integer.parseInt(request.getParameter("pid"));
            int uid = Integer.parseInt(request.getParameter("uid"));
            
            
            ProductDAOImpl  dao = new  ProductDAOImpl(DBconnect.getConn());
            Product pro = dao.getProductById(pid);
            
            Cart car = new Cart ();
            car.setPid(pid);
            car.setUid(uid);
            car.setProductname(pro.getProductname());
            car.setGetafterdiscountprice(pro.getafterdiscountprice());
            car.setTotalprice(pro.getafterdiscountprice());
            car.setPhotoName(pro.getPhotoName());

        
           
           CartDAOImpl dao2 =  new CartDAOImpl (DBconnect.getConn());
           boolean f = dao2.addCart(car);
           
           HttpSession session = request.getSession();
           
           
           if(f){ 
               
               session.setAttribute("Failed", "Something in wrong in server");
               response.sendRedirect("home.jsp");
           }else {
               session.setAttribute("addCart", "Product add to cart");
               response.sendRedirect("cart.jsp");
           
        }
           
           
           
        }catch (Exception e){
            
            e.printStackTrace();
        }
        
    }
}
