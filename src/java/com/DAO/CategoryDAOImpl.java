/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.Catagory;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author ram
 */
public class CategoryDAOImpl {
    
     private Connection conn;
     
        public CategoryDAOImpl(Connection conn){
         super();
         this.conn = conn;
     }
    
         public boolean addcategory(Catagory cro){
                boolean f = false;
       try{
           
         String sql = "insert into catagory(catagorytittle,catagoryDescription) value(?,?)";
          PreparedStatement ps = conn.prepareStatement(sql);
          ps.setString(1, cro.getCatagorytittle());
          ps.setString(2, cro.getCatagoryDescription());
           
          
           int i = ps.executeUpdate();
            
            if(i==1){
                f = true;
            }
           
           
       }catch (Exception e){
           e.printStackTrace();
       }
        return f;
           
         }

    public boolean Addcategory(Catagory cro) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
