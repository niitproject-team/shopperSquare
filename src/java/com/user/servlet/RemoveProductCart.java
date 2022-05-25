/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user.servlet;

import com.DAO.CartDAOImpl;
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

@WebServlet("/remove_product")
public class RemoveProductCart extends HttpServlet{
    
    
          @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int pid = Integer.parseInt(request.getParameter("pid"));
        int uid = Integer.parseInt(request.getParameter("uid"));
        int cid = Integer.parseInt(request.getParameter("cid"));
        
        CartDAOImpl dao = new CartDAOImpl(DBconnect.getConn());
        boolean f= dao.deleteproduct(pid,uid,cid);
        
        HttpSession session = request.getSession();
        
        if(f){
            session.setAttribute("succMsg", "Book removed from cart");
            response.sendRedirect("cart.jsp");
        }else{ 
              session.setAttribute("failedMsg", "something wrong on server");
            response.sendRedirect("cart.jsp");
        }
    }
}
