/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.Cart;
import com.entity.Product;
import java.util.List;

/**
 *
 * @author ram
 */
public interface CartDAO {
    
    public boolean addCart(Cart car);
    
    public List<Cart> getProductbyuserid(int uid);
    
    
    
    public boolean deleteproduct (int pid , int uid, int cid);
    

    
    
}
