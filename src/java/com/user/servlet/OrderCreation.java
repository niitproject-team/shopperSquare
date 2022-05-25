package com.user.servlet;

import com.DAO.CartDAOImpl;
import com.DAO.ProductOrderDAOImpl;
import com.DB.DBconnect;
import com.entity.Cart;
import com.entity.Product;
import com.entity.Product_Order;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/order")
public class OrderCreation extends HttpServlet{

     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String contact = request.getParameter("contact");
            String address = request.getParameter("address");
            String landmark = request.getParameter("landmark");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String pincode = request.getParameter("pincode");
            String paymenttype = request.getParameter("payment");
            
            
            String fullAdd= address+","+landmark+","+city+","+state+","+pincode;
            
           /* System.out.println(name+" "+email+" "+contact+" "+fullAdd+""+paymenttype); */
            CartDAOImpl  dao = new CartDAOImpl(DBconnect.getConn());
            List<Cart> pplist= dao.getProductbyuserid(id);
            ProductOrderDAOImpl dao2 = new ProductOrderDAOImpl (DBconnect.getConn());
            
            int i = dao2.getOrderNo();
            
            Product_Order o = new Product_Order();
            
            
            ArrayList<Product_Order> orderList = new ArrayList<Product_Order>();
            for(Cart car:pplist)
            {
                o.setOrder_id("PRO-ORDER-00"+i);
               o.setName(name);
               o.setEmail(email);
               o.setContact(contact);
               o.setFulladd(fullAdd);
               o.setProductname(car.getProductname());
               o.setPrice(car.getGetafterdiscountprice());
               o.setPaymenttype(paymenttype);
               orderList.add(o);
               i++;
               
               
            }
            
            if("noselect".equals(paymenttype)){
                response.sendRedirect("cheakout.jsp");
                
            }else{
                boolean f = dao2.saveOrder(orderList);
                if(f){
                    System.out.println("order success");
                }else{
                    System.out.println("order failed");
                }
                
            }
            
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    
    
}