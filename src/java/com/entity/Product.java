/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

/**
 *
 * @author ram
 */
public class Product {
    
    private int productId;
    private String productname;
    private String productdescription;
    private String productprice;
    private String productdiscount;
    private String productquantity;
    private String productcategory;
    private String productstatus;
    private String photoName;
    private String email;

    public Product() {
        super();
    }
    

    public Product(String productname, String productdescription, String productprice, String productdiscount, String productquantity, String productcategory, String productstatus, String photoName, String email) {
        this.productname = productname;
        this.productdescription = productdescription;
        this.productprice = productprice;
        this.productdiscount = productdiscount;
        this.productquantity = productquantity;
        this.productcategory = productcategory;
        this.productstatus = productstatus;
        this.photoName = photoName;
        this.email = email;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getProductdescription() {
        return productdescription;
    }

    public void setProductdescription(String productdescription) {
        this.productdescription = productdescription;
    }

    public String getProductprice() {
        return productprice;
    }

    public void setProductprice(String productprice) {
        this.productprice = productprice;
    }

    public String getProductdiscount() {
        return productdiscount;
    }

    public void setProductdiscount(String productdiscount) {
        this.productdiscount = productdiscount;
    }

    public String getProductquantity() {
        return productquantity;
    }

    public void setProductquantity(String productquantity) {
        this.productquantity = productquantity;
    }

    public String getProductcategory() {
        return productcategory;
    }

    public void setProductcategory(String productcategory) {
        this.productcategory = productcategory;
    }

    public String getProductstatus() {
        return productstatus;
    }

    public void setProductstatus(String productstatus) {
        this.productstatus = productstatus;
    }

    public String getPhotoName() {
        return photoName;
    }

    public void setPhotoName(String photoName) {
        this.photoName = photoName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Product{" + "productId=" + productId + ", productname=" + productname + ", productdescription=" + productdescription + ", productprice=" + productprice + ", productdiscount=" + productdiscount + ", productquantity=" + productquantity + ", productcategory=" + productcategory + ", productstatus=" + productstatus + ", photoName=" + photoName + ", email=" + email + '}';
    }

 
    
    
}
