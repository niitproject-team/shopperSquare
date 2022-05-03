<%@page import="com.entity.Product"%>
<%@page import="com.DAO.ProductDAOImpl"%>
<%@page import="com.DB.DBconnect"%>
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
    
     <% response.setHeader("Cache-Control", "no-cache, no-store");
    %>
           
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


                                
                                
                                 
              
              <form action="../addcategory" method="post">

                  
              
   <c:if test="${not empty succMsg}">
                                      <p class="text-center text-success" style="font-size: 2rem" >${succMsg}</p>
                                <c:remove var="succMsg"  scope="session"/>
                                 
                            </c:if>
                        
                            <c:if test="${not empty failedMsg}">
                                <p class="text-center text-danger" style="font-size: 10rem">${failedMsg}</p>
                                <c:remove var="failedMsg"  scope="session"/>
                            </c:if>
                  
                  
                <div class="form-outline mb-1">
                    <label class="form-label" for="form3Example1cg">Category Name</label>
                    <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="catagorytittle" placeholder=" category name" style="font-size: 1.6rem;" required="required" />
                </div>
                  
                  <!----description----->

                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example3cg">Description</label>
                    <textarea type="text" id="form3Example3cg" class="form-control form-control-2g" name="catagoryDescription" placeholder=" description" style="font-size: 1.6rem; " >  </textarea>
                </div>
                 
                  <!----Product price --->

             
                  
                  <!------discount---->
                 


                  <!----product Quantity------>
               
                  
                  
                               

                  <!----category---
                                     <div class="form-outline mb-4">
                    
                    <label class="form-label" for="form3Example1cg">category</label>
                    <select id="form3Example1cg" name="productcategory" class="form-control form-control-6g" style="font-size: 1.6rem;" required="required" >
                        
                           <option selected="" value="Select"> --select--</option>
                        
                 
                            <option selected="" value="Select"> --select--</option>
                               <option value="phones"> Phones</option>
                        <option value="laptops"> Laptops</option>
                        <option value="clothes"> Clothes</option>
                        <option value="clothes"> Sports</option>
                      
                         
                              <option value="phones"> Phones</option>
                        <option value="laptops"> Laptops</option>
                        <option value="clothes"> Clothes</option>
                        <option value="clothes"> Sports</option>
                      
                      
                        
                    </select>

                </div>
                   -->
                  
                  <!---------active or inactive-------->
                  
                  
                     
                  
                  
                  <!-----submit buttton--->
                  <button type="submit" class="btn btn-primary" style="font-size: 1.9rem;">Edit</button>
             
             
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