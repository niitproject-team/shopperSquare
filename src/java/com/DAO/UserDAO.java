/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.User;

/**
 *
 * @author ram
 */
public interface UserDAO {
    public boolean userRegister(User us);
    
    public User login(String email,String password);
    
}
