/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.Product_Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

/**
 *
 * @author ram
 */
public class ProductOrderDAOImpl implements ProductOrderDAO {
    
   private Connection conn;
     
        public ProductOrderDAOImpl(Connection conn){
         
         this.conn = conn;
     }
        public int getOrderNo(){
            int i = 1;
            try{
                
                String sql = "select * from order ";
                 PreparedStatement ps = conn.prepareStatement(sql);
                 ResultSet rs = ps.executeQuery();
                 while(rs.next())
                 {
                     i++;
                 }
                 
                 
                 
                 
                
            }catch (Exception e){
                e.printStackTrace();
            }
            
            
            return 0;
        }
        
         public boolean saveOrder(List<Product_Order> plist){
             
             
             boolean f = false;
             try{
                 
                 String sql = "insert into order (order_id,user_name,email,address,contact,productname,price,payment) values(?,?,?,?,?,?,?,?)";
                 conn.setAutoCommit(false);
                     PreparedStatement ps = conn.prepareStatement(sql);
                     
                     for(Product_Order ord: plist)
                     {
                         ps.setString(1,ord.getOrder_id());
                         ps.setString(2,ord.getName());
                         ps.setString(3,ord.getEmail());
                         ps.setString(4,ord.getFulladd());
                         ps.setString(5,ord.getContact());
                         ps.setString(6,ord.getProductname());
                         ps.setInt(7,ord.getPrice());
                         ps.setString(8,ord.getPaymenttype());
                         ps.addBatch();
                     }
                     int[] count = ps.executeBatch();
                     conn.commit();
                     f= true;
                     conn.setAutoCommit(true);
                 
             }catch ( Exception e){
                 e.printStackTrace();
             }
             return f;
         }

   
}
