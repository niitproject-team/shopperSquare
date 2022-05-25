/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.Catagory;
import com.entity.Product;
import java.util.List;

/**
 *
 * @author ram
 */
public interface CategoryDAO {
    
    
    public boolean addcategory (Catagory cro);
    
    public List<Catagory> getAllcategory();
    
    public Catagory getbyid (int id);
    
    
    public List<Catagory> getbyco(String co);
}
