/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.Cart;
import com.entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ram
 */
public class CartDAOImpl implements CartDAO{
    
         private Connection conn;
     
        public CartDAOImpl(Connection conn){
         
         this.conn = conn;
     }
    
    public boolean addCart(Cart car){
        boolean f = false;
    try{
        
        String sql = "insert into cart(pid,uid,productname,getafterdiscountprice,totalprice,photoName) values(?,?,?,?,?,?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, car.getPid());
        ps.setInt(2, car.getUid());
        ps.setString(3, car.getProductname());
        ps.setInt(4, car.getGetafterdiscountprice());
        ps.setInt(5, car.getTotalprice());
        ps.setString(6, car.getPhotoName());

        
        int i = ps.executeUpdate();
        if(i==1)
        {
            f = true;
        }
        
        
    }catch(Exception e) {
        e.printStackTrace();
    }
        
        
        return false;
    }

    
    
    
      public List<Cart> getProductbyuserid(int uid){
          
          List <Cart> list = new ArrayList<Cart>();
          Cart  car = null;
          int totalprice = 0;
          try{
              
              String sql = "select * from cart where uid=?";
              PreparedStatement ps = conn.prepareStatement(sql);
              ps.setInt(1, uid);
              
              ResultSet rs = ps.executeQuery();
              while(rs.next())
              {
                  car = new Cart();
                  car.setCid(rs.getInt(1));
                  car.setPid(rs.getInt(2));
                  car.setUid(rs.getInt(3));
                  car.setProductname(rs.getString(4));
                  car.setGetafterdiscountprice(rs.getInt(5));
                  
                  totalprice=totalprice+rs.getInt(6);
                  car.setTotalprice(totalprice);
                  list.add(car);
                  car.setPhotoName(rs.getString(7));
                  
              }
              
          }catch (Exception e){
              
              e.printStackTrace();
          }
          
          return list;
          
      }
      
      
         public boolean deleteproduct (int pid, int uid,int cid){
             boolean f = false;
             try{
               
                 String sql = "delete from cart where pid=? and uid=? and cid=?";
                 PreparedStatement ps = conn.prepareStatement(sql);
                 ps.setInt(1, pid);
                 ps.setInt(2, uid);
                 ps.setInt(3, cid);
                 
                 int i = ps.executeUpdate();
                 if(i==1){
                     f= true;
                 }
                 
             }catch (Exception e){
                 e.printStackTrace();
             }
            
             return f;
         }
}
