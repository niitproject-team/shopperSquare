/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ProductDAOImpl {
    
     private Connection conn;
     
     public ProductDAOImpl(Connection conn){
         super();
         this.conn = conn;
     }
    
    public boolean addproduct(Product pro){
        boolean f = false;
        try{
            String sql = "insert into product(productname,productdescription,productprice,productquantity,productdiscount,productcategory,productstatus,photo,user_email) value(?,?,?,?,?,?,?,?,?)"; 
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, pro.getProductname());
            ps.setString(2, pro.getProductdescription());
            ps.setInt(3, pro.getProductprice());
            ps.setInt(4, pro.getProductquantity());
            ps.setInt(5, pro.getProductdiscount());
            ps.setString(6, pro.getProductcategory());
            ps.setString(7, pro.getProductstatus());
            ps.setString(8, pro.getPhotoName());
            ps.setString(9, pro.getEmail());
            
            
            int i = ps.executeUpdate();
            
            if(i==1){
                f = true;
            }
            
        }catch ( Exception e){
            e.printStackTrace();
        }
        
        return f;
    }
    
    public List<Product> getAllproducts(){
        
        List<Product> list= new ArrayList<Product>();
        Product pro = null;
        
        
        try{
            
            String sql = "select * from product";
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                pro= new Product();
            
                pro.setProductId(rs.getInt(1));
                pro.setProductname(rs.getString(2));
                pro.setProductdescription(rs.getString(3));
                pro.setProductprice(rs.getInt(4));
                pro.setProductquantity(rs.getInt(5));
                pro.setProductdiscount(rs.getInt(6));
                pro.setProductcategory(rs.getString(7));
                pro.setProductstatus(rs.getString(8));
                pro.setPhotoName(rs.getString(9));
                pro.setEmail(rs.getString(10));
                
                list.add(pro);
            }
            
            
            
        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
    public Product getProductById(int id){
        
        Product pro = null;
        
        
        try{
            
            String sql = "select * from  product where productId=? ";
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setInt(1, id);
            
            
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                
                pro= new Product();
                
                 pro.setProductId(rs.getInt(1));
                pro.setProductname(rs.getString(2));
                pro.setProductdescription(rs.getString(3));
                pro.setProductprice(rs.getInt(4));
                pro.setProductquantity(rs.getInt(5));
                pro.setProductdiscount(rs.getInt(6));
                pro.setProductcategory(rs.getString(7));
                pro.setProductstatus(rs.getString(8));
                pro.setPhotoName(rs.getString(9));
                pro.setEmail(rs.getString(10));
            }
            
        }catch (Exception e){
            e.printStackTrace();
        }
        
        return pro;
    }
    
    
    public boolean updateEditProduct(Product pro ) {
        boolean f = false;
        try{
            String sql = "update product set productname=?,productdescription=?,productprice=?,productquantity=?,productdiscount=?,productstatus=? where productid=? ";
            PreparedStatement ps = conn.prepareStatement(sql);
             
            ps.setString(1, pro.getProductname());
            ps.setString(2, pro.getProductdescription());
            ps.setInt(3, pro.getProductprice());
            ps.setInt(4, pro.getProductquantity());
            ps.setInt(5, pro.getProductdiscount());
            ps.setString(6, pro.getProductstatus());
            ps.setInt(7, pro.getProductId());
            
            int i= ps.executeUpdate();
            if (i==1){
                f=true;
            }
            
        }catch ( Exception e){
           e.printStackTrace();
        }
        return f;
    }

    
      public boolean deleteProduct(int id){
          boolean f = false;
          try{
              String sql = "delete from product where productId=?";
              PreparedStatement ps = conn.prepareStatement(sql);
              ps.setInt(1, id);
              int i = ps.executeUpdate();
              if(i==1){
                  
                  f = true;
              }
              
          }catch (Exception e){
              e.printStackTrace();
          }
          
          return false;
      }
      
      public List<Product> Userproducts(){
          
           List<Product> list= new ArrayList<Product>();
        Product pro = null;
        try{
        String sql="select * from product where  productstatus=?";
         PreparedStatement ps = conn.prepareStatement(sql);

        
        // ps.setString(1, "laptops");
         ps.setString(1, "Active");
       
         
         
         ResultSet rs = ps.executeQuery();
         while(rs.next())
         {
               pro = new Product();
                 pro.setProductId(rs.getInt(1));
                pro.setProductname(rs.getString(2));
                pro.setProductdescription(rs.getString(3));
                pro.setProductprice(rs.getInt(4));
                pro.setProductquantity(rs.getInt(5));
                pro.setProductdiscount(rs.getInt(6));
                pro.setProductcategory(rs.getString(7));
                pro.setProductstatus(rs.getString(8));
                pro.setPhotoName(rs.getString(9));
                pro.setEmail(rs.getString(10));
                list.add(pro);

             
         }
         
        }catch (Exception e){
            e.printStackTrace();
        }
          return list;
      }
   public List<Product> Userproducts(String  cat ){
          
           List<Product> list= new ArrayList<Product>();
        Product pro = null;
        try{
        String sql="select * from product where productcategory='"+cat+"' and  productstatus=?";
         PreparedStatement ps = conn.prepareStatement(sql);

        
        // ps.setString(1, "laptops");
         ps.setString(1, "Active");
       
         
         
         ResultSet rs = ps.executeQuery();
         
         while(rs.next())
         {
               pro = new Product();
                 pro.setProductId(rs.getInt(1));
                pro.setProductname(rs.getString(2));
                pro.setProductdescription(rs.getString(3));
                pro.setProductprice(rs.getInt(4));
                pro.setProductquantity(rs.getInt(5));
                pro.setProductdiscount(rs.getInt(6));
                pro.setProductcategory(rs.getString(7));
                pro.setProductstatus(rs.getString(8));
                pro.setPhotoName(rs.getString(9));
                pro.setEmail(rs.getString(10));
                list.add(pro);

             
         }
         
        }catch (Exception e){
            e.printStackTrace();
        }
          return list;
      }
   
   public List<Product> getProductBySercH(String ch){
       
      List<Product> list= new ArrayList<Product>();
        Product pro = null;
        try{
        String sql="select * from product where productname like ? or productcategory like ? or productdescription like ? ";
         PreparedStatement ps = conn.prepareStatement(sql);

        
        // ps.setString(1, "laptops");
        ps.setString(1, "%"+ch+"%");
        ps.setString(2, "%"+ch+"%");
        ps.setString(3, "%"+ch+"%");
         
       
         
         
         ResultSet rs = ps.executeQuery();
         while(rs.next())
         {
               pro = new Product();
                 pro.setProductId(rs.getInt(1));
                pro.setProductname(rs.getString(2));
                pro.setProductdescription(rs.getString(3));
                pro.setProductprice(rs.getInt(4));
                pro.setProductquantity(rs.getInt(5));
                pro.setProductdiscount(rs.getInt(6));
                pro.setProductcategory(rs.getString(7));
                pro.setProductstatus(rs.getString(8));
                pro.setPhotoName(rs.getString(9));
                pro.setEmail(rs.getString(10));
                list.add(pro);

             
         }
         
        }catch (Exception e){
            e.printStackTrace();
        }
          return list;
   }
   
    
   
}
