/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.Product;
import java.util.List;

/**
 *
 * @author ram
 */
public interface ProductDAO {
    
    public boolean addproduct (Product pro);
    
    public List<Product> getAllproducts();
    
    public Product getProductById(int id);
    
    public boolean updateEditProduct(Product pro );
    
    public boolean deleteProduct(int id);
    public List<Product> Userproducts(); 
    
}
