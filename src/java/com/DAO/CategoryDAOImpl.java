/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.Catagory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

   //To change body of generated methods, choose Tools | Templates.
         
         
            public List<Catagory> getAllcategory(){
                
                   List<Catagory> list= new ArrayList<Catagory>();
        Catagory cro = null;
                 try{
            
            String sql = "select * from catagory";
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                cro= new Catagory();
            
          
                cro.setCatagoryId(rs.getInt(1));
                cro.setCatagorytittle(rs.getString(2));
                cro.setCatagoryDescription(rs.getString(3));
                list.add(cro);
             
            }
            
            
            
        }catch (Exception e){
            e.printStackTrace();
        }
      
                return list;
      }
            
             public Catagory getbyid (int id){
                 
                 Catagory cro = null;
                 
                 try{
                     
                     String sql = "select * from catagory where catagoryId=?";
                        PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setInt(1, id);
            
            
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                
                cro= new Catagory();
            
          
                cro.setCatagoryId(rs.getInt(1));
                cro.setCatagorytittle(rs.getString(2));
                cro.setCatagoryDescription(rs.getString(3));
                
                
            }
                     
                 }catch (Exception e){
                     e.printStackTrace();
                 }
                 
                 
                 return cro;
                 


             }
             
              
    }

    

