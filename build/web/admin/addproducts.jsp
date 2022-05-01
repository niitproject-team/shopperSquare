<%-- 
    Document   : signup
    Created on : Apr 11, 2022, 5:26:15 PM
    Author     : ram
--%>

<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="styles/stylesheet.css">
        <title>Document</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    
        <!-- jQuery library -->
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
        
        <!-- Popper JS -->
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        
        <!-- Latest compiled JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        
        <!-- boxicons-->
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    
        <script src="https://kit.fontawesome.com/bfcae36f23.js" crossorigin="anonymous"></script>
    </head>      
<body style="background-color: #f0f2f2; ">
    

    
    
       <c:if  test="${empty userobj}">
        <c:redirect url="../home.jsp" />
        
    </c:if>
    
              <!-- Preloader -->
  
   
	<!-- End Preloader --> 
    
    <div class="first-box" >
        <div class="bbb" style="background-color: rgb(0, 119, 255); height: 70px;">

            <div class="shopper" style=" text-align: center; margin: 20px; background-color: whitesmoke; ">
               <a href="home.jsp" style="list-style-type: none; text-decoration: none;"><h1 style="color: rgb(0, 110, 255); font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">SHOPPER  <span style="color: red; font-weight: bold;">SQUARE</span></h1></a> 
            </div>
        
            <!-- Sign up form -->
        <section class="vh-100 bg-image" style="padding-bottom: 200px;">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Add Products</h2>

                <c:if test="${not empty succMsg}">
                                      <p class="text-center text-success" style="font-size: 2rem" >${succMsg}</p>
                                <c:remove var="succMsg"  scope="session"/>
                                 
                            </c:if>
                        
                            <c:if test="${not empty failedMsg}">
                                <p class="text-center text-danger" style="font-size: 10rem">${failedMsg}</p>
                                <c:remove var="failedMsg"  scope="session"/>
                            </c:if>
              
              <form action="../addproducts" method="post"
                    enctype="multipart/form-data">

                  
                  
                <div class="form-outline mb-1">
                    <label class="form-label" for="form3Example1cg">Product Name</label>
                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="productname" placeholder=" product name" style="font-size: 1.6rem;" required="required"/>
                </div>
                  
                  <!----description----->

                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example3cg">Description</label>
                    <textarea type="text" id="form3Example3cg" class="form-control form-control-2g" name="productdescription" placeholder=" description" style="font-size: 1.6rem; " required="required"></textarea>
                </div>
                  
                  <!----Product price --->

                <div class="form-outline mb-4">
                    
                    <label class="form-label" for="form3Example1cg">Price</label>
                  <input type="number" id="form3Example4cg" class="form-control form-control-3g" name="productprice" placeholder=" Enter Price" style="font-size: 1.6rem;" required="required"/>
                </div>
                  
                  <!------discount---->
                   <div class="form-outline mb-4">
                    
                    <label class="form-label" for="form3Example1cg">discount</label>
                  <input type="number" id="form3Example4cg" class="form-control form-control-4g" name="productdiscount" placeholder=" Enter discount" style="font-size: 1.6rem;" required="required"/>
                </div>


                  <!----product Quantity------>
                <div class="form-outline mb-4">
                    
                    <label class="form-label" for="form3Example1cg">Quantity</label>
                  <input type="number" id="form3Example4cdg" class="form-control form-control-5g" name="productquantity"  placeholder=" Enter Quantity" style="font-size: 1.6rem;" required="required"/>

                </div>

                  <!----category----->
                                     <div class="form-outline mb-4">
                    
                    <label class="form-label" for="form3Example1cg">category</label>
                    <select id="form3Example1cg" name="productcategory" class="form-control form-control-6g" style="font-size: 1.6rem;" required="required">
                        <option selected=""> --select--</option>
                        <option value="phones"> Phones</option>
                        <option value="laptops"> Laptops</option>
                        <option value="clothes"> Clothes</option>
                        <option value="clothes"> Sports</option>
                       
                        
                    </select>

                </div>
                  
                  
                  <!---------active or inactive-------->
                   <div class="form-outline mb-4">
                    
                    <label class="form-label" for="form3Example1cg">product status</label>
                    <select id="form3Example1cg" name="productstatus" class="form-control form-control-7g" style="font-size: 1.6rem;" required="required">
                        <option selected=""> --select--</option>
                        <option value="Active"> Active</option>
                        <option value="Inactive"> Inactive</option>
                        
                    </select>

                </div>
                  
                  <!----images---->
                     <div class="form-outline mb-4">
                    
                    <label class="form-label" for="form3Example1cg">Upload Pic</label>
                  <input type="file" id="form3Example4cdg" class="form-control form-control-8g" name="photo" style="font-size: 1.6rem;" required="required"/>

                  
                  
                </div>
                    <div class="form-outline mb-4">
                    
                    <label class="form-label" for="form3Example1cg">Upload Pic 1</label>
                  <input type="file" id="form3Example4cdg" class="form-control form-control-8g" name="photo1" style="font-size: 1.6rem;" required="required"/>

                  
                 

                  
                </div>
                  
                  
                  <!-----submit buttton--->
                  <button type="submit" class="btn btn-primary" style="font-size: 1.9rem;">Add</button>
             
              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
   </div>
 </div>
        
                <script src="main.js"></script>
                    <script src="jquery.min.js"></script>
  
                
            </body>
</html>
