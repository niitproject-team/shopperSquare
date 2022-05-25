/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ram
 */
public class Catagory {
    private int catagoryId;
    private String catagorytittle;
    private String catagoryDescription;
private List<Product> products=new ArrayList<>();
    

    public Catagory(int catagoryId, String catagorytittle, String catagoryDescription) {
        this.catagoryId = catagoryId;
        this.catagorytittle = catagorytittle;
        this.catagoryDescription = catagoryDescription;
    }

    public Catagory(String catagorytittle, String catagoryDescription) {
        this.catagorytittle = catagorytittle;
        this.catagoryDescription = catagoryDescription;
    }

    public Catagory() {
    }

    public int getCatagoryId() {
        return catagoryId;
    }

    public void setCatagoryId(int catagoryId) {
        this.catagoryId = catagoryId;
    }

    public String getCatagorytittle() {
        return catagorytittle;
    }

    public void setCatagorytittle(String catagorytittle) {
        this.catagorytittle = catagorytittle;
    }

    public String getCatagoryDescription() {
        return catagoryDescription;
    }

    public void setCatagoryDescription(String catagoryDescription) {
        this.catagoryDescription = catagoryDescription;
    }

    @Override
    public String toString() {
        return "Catagory{" + "catagoryId=" + catagoryId + ", catagorytittle=" + catagorytittle + ", catagoryDescription=" + catagoryDescription + '}';
    }
    
    
    
}
