





<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    
</head>
<body>
    <% response.setHeader("Cache-Control", "no-cache, no-store");
    %>
    
    <c:if  test="${empty userobj}">
        <c:redirect url="../home.jsp" />
        
    </c:if>
    
           
   <!-- Preloader -->
   <div class="loader_bg">
        <div class="loader"></div>
   </div>
   
	<!-- End Preloader --> 
        
        
        
           
           <!---header start---->
           
    <header class="header"> 

        <!-- nav container-->
       
            <div class=" head">
         
            <a href="#" class="logo navbar-brand font-weight-bold">SHOPPERS <span style="color: red">SQUARE</span> </a>
            
             <div class="icon">
            
             <c:if test="${not empty userobj}"  >
                 
                  <div id="login-btn" class='bx bxs-user'> ${ userobj.name} </div>  
                  <div  class='fas fa-sign-in-alt' style="font-size: 2rem;">  <a data-toggle="modal" data-target="#exampleModalCenter" href="">Logout</a> </div>
                 
            </c:if>
                  <c:if test="${empty userobj}">
                       <div id="login-btn" class='bx bxs-user'> </div>   
                  </c:if>
                  
              
            <!--  <div id="search-btn" class="bx bx-search-alt-2"></div> -->
            
            </div>
            </div>
        
        <!--logout--->
        <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" style="font-size: 3rem;" >
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="text-center">
               <h2>Do you want to Logout</h2> 
              <button type="button" class="btn btn-secondary" data-dismiss="modal"  style="font-size: 2.5rem;">Close</button>
              <a  href="../logout" type="button" class="btn btn-primary"  style="font-size: 2.5rem;">Logout</a>
          </div>
          </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>
        
        
        
<!---add category  model start--->
<!-- Button trigger modal -->

<!-- Modal -->


<!---add category  model end--->
        <!-------logout end ---->
        
        <div class="header_2">
            <nav class="navbr">
                <a href="#home" class="fa-solid fa-house-chimney"> &nbsp;H O M E</a>
              
            </nav>
        </div>
    </header>
       
           <div class="container" style="padding: 15px 0 30px 10px">
               <div class="row p-5" >
                   <div class="  col-md-3 " style="padding-bottom: 10px;">
                       <a href="addproducts.jsp" class="and" style="text-decoration: none;">
                       <div class="card" >
                           <div class="card-body text-center">
                               <div id="login-btn" class="fas fa-plus-square fa-3x text-primary"> </div> 
                               
                               <h4>Add Products</h4>
                               ............
                           </div>
                       </div>
                       </a>
                       
                   </div>
                   
                   <div class=" col-md-3 "  style="padding-bottom: 10px;">
                       <a href="allproducts.jsp" class="and" style="text-decoration: none;">
                       <div class="card">
                           <div class="card-body text-center">
                               <i class="fa fa-product-hunt fa-3x text-danger"></i>
                               <h4>All Products</h4>
                               ............
                           </div>
                       </div>
                       </a>
                   </div>
                   <div class="  col-md-3 "  style="padding-bottom: 10px;">
                       <a href="order.jsp" class="and" style="text-decoration: none;">
                       <div class="card">
                           <div class="card-body text-center">
                              <i class="fa-solid fa-box-open fa-3x text-success"></i>
                               <h4>Orders</h4>
                               ............
                           </div>
                       </div>
                       </a>
                   </div>
                   <div class=" col-md-3"  style="padding-bottom: 10px;">
                       <a href="../logout" data-toggle="modal" data-target="#exampleModalCenter" class="and" style="text-decoration: none;">
                       <div class="card">
                           <div class="card-body text-center">
                              <i class="fa-solid fa-arrow-right-from-bracket fa-3x text-primary"></i>
                               <h4>Logout</h4>
                               ............
                           </div>
                       </div>
                       </a>
                   </div>
                   
                          <div class=" col-md-3 "  style="padding-bottom: 10px;">
                       <a href="#" class="and" style="text-decoration: none;">
                       <div class="card">
                           <div class="card-body text-center">
                               <i class="fa-solid fa-eye fa-3x text-danger"></i>
                               <h4>All Category</h4>
                               ............
                           </div>
                       </div>
                       </a>
                   </div>
                   
                          <div class=" col-md-3 "  style="padding-bottom: 10px;">
                       <a href="addcategory.jsp" class="and" style="text-decoration: none;" >
                       <div class="card">
                           <div class="card-body text-center">
                               <i class="fas fa-plus-square fa-3x text-primary"></i>
                               <h4> Add Category</h4>
                               ............
                           </div>
                       </div>
                       </a>
                   </div>
               </div>
           </div>
 <!---header section end-->
 <!---bottom navbar-->

 <nav class="bottom-navbr">
    <a href="#home.jsp" class="fa-solid fa-house-chimney"></a>
   
</nav>



 
    <!--- Footer bar--->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col-1" style="padding-left: 20px">
                    <h3>Download Our App</h3>
                    <p style="font-size: 1.2rem;"> Downlaod App for Adroid and ios  mobile phone</p>
                    <div class="app-logo">
                        <img src="images/play-store.png">
                        <img src="images/app-store.png">
                    </div>
                </div>
                 <div class="footer-col-2">
                     <h5>Email: &nbsp;shoppersqaureNIITgmail.com</h5>
                     <a href="#" class="logo navbar-brand font-weight-bold" style="color: white; border-bottom: 2px solid white" >SHOPPERS <span style="color: red">SQUARE</span> </a>
                       <p style="font-size: 1.2rem;">Our Purpose Is to Sustainably Make the Pleasure and  Benefits of Our products</p>
                </div>
                
                 <div class="footer-col-3">
                     <h3>Useful Links</h3>
                     <ul style="font-size: 1.2rem;">
                         <li>about</li>
                         <li>contact</li>
                         <li>blogs</li>
                     </ul>
                     
                     
                </div>
                   <div class="footer-col-4">
                     <h3>Follow Us</h3>
                     <ul style="font-size: 1.2rem;">
                         <li>Facebook</li>
                         <li>Instagram</li>
                         <li>Twitter</li>
                         <li>linked in</li>
                     </ul>
                   
                </div>
            </div>
                <hr>
                <p class="copyright" style="font-size: 1.3rem; padding-bottom: 25px">Copyright 2022 - shoppersquareNIIT@gmail.com</p>
            </div>
        </div>
    


 
<!--login portion-->
<div class="login-form-container">

    <div id="close-login-btn"  class="fa-solid fa-xmark"></div> 
    <form action="LoginServlet" method="post">
        <div>
            <h3>Sign in</h3>
        </div>
        <!----jtsl for success msg-->
                             <c:if test="${not empty succmsg}">
                                 <p class="text-center text-success" style="font-size: 2rem" >${succmsg}</p>
                                <c:remove var="succmsg"  scope="session"/> 
                             </c:if>
                        <!----jtsl for fail  msg-->
                            <c:if test="${not empty failmsg}">
                                <p class="text-center text-danger" style="font-size: 2 rem">${failmsg}</p>
                                <c:remove var="failmsg"  scope="session"/>
                            </c:if>
    <span>Email</span>
                <input type="email" name="email" class="box" placeholder="Enter your Email" id="" required="required">
                <span>Password</span>
                 <input type="password" name="password"  class="box" placeholder="Enter your password" id="" required="required">
                 <input type="submit" value="Sign in" class="btn" >
   

                    <p>Forget Password ? <a href="">CLick here</a></p>
                    <p>don't have an account? <a href="signup.jsp">Create one</a></p>
    </form>
</div>

   
 
   
     <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <script src="main.js"></script>
    <script src="jquery.min.js"></script>
    <script>
        setTimeout(function(){
            $('.loader_bg').fadeToggle();
        }, 1000);
    </script>
</body>
</html>
