/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.Catagory;
import com.entity.User;
import java.util.List;

/**
 *
 * @author ram
 */
public interface UserDAO {
    public boolean userRegister(User us);
    
    public User login(String email,String password);
    
    public List <User> byid();
    
      public boolean  deleteuser(int id);
    
      
      public boolean cheackpassword(int id, String pst);
      public boolean updateprofile(User us);
    
    
    
}
