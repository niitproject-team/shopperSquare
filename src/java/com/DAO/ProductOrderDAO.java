/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.Product_Order;
import java.util.List;

/**
 *
 * @author ram
 */
public interface ProductOrderDAO {
    public int getOrderNo();
    
    public boolean saveOrder(List<Product_Order> ord);
}
