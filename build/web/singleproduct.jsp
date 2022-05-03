<%-- 
    Document   : home
    Created on : Apr 5, 2022, 7:47:38 PM
    Author     : ram
--%>

<%@page import="java.util.List"%>
<%@page import="com.entity.Product"%>
<%@page import="com.DAO.ProductDAOImpl"%>
<%@page import="com.DB.DBconnect"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="style/stylesheet.css">
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
    
   <!-- Preloader -->
   <div class="loader_bg">
        <div class="loader"></div>
   </div>
   
	<!-- End Preloader --> 
        
        <!----jstl--->
                          <c:if test="${not empty failedmsg}">
                          <p class="text-center text-danger" style="font-size: 2rem">${failedmsg}</p>
                          <c:remove var="failedmsg"  scope="session"/>
                          </c:if>
           <!----jstl stop--->
                   
           
           <!---header start---->
           
    <header class="header"> 

        <!-- nav container-->
       
            <div class=" head">
         
            <a href="#" class="logo navbar-brand font-weight-bold">SHOPPERS <span style="color: red">SQUARE</span> </a>
        
         
            <form action="" class="search-text"  ">
                <input type="search" name="" id="" placeholder="search here ..">
                <label class='bx bx-search-alt-2 tag'></label>
            </form>
           
 
            <!---cart add icon-->
            <div class="icon">
            <div id="search-btn" class="bx bx-search-alt-2"></div>
              <a href="cart.jsp" class='bx bxs-cart-add' id="cart-add" ></a>  
              <div id="login-btn" class='bx bxs-user'> </div>   
            
            </div>
        </div>
        <div class="header_2">
            <nav class="navbr">
                <a href="home.jsp">home</a>
                <a href="#about">about</a>
                <a href="#message us">message us</a>
                <a href="#catogary">catogary</a>
            </nav>
        </div>
    </header>
       
 <!---header section end-->
 <!---bottom navbar-->

 <nav class="bottom-navbr">
     <a href="home.jsp" class="fa-solid fa-house-chimney" style="color: white;  text-decoration: none;"></a>
    <a href="#about"  class="fa-solid fa-address-book" style="color: white; text-decoration: none;"></a>
    <a href="#message us"  class="fa-solid fa-message"style="color: white; text-decoration: none;"></a>
    <a href="#catogary"  class="fa-solid fa-eye"style="color: white; text-decoration: none;"></a>
</nav>

 
 
 <!--- featur product----------->
 
      <%
                                int id = Integer.parseInt(request.getParameter("id"));   

                                  ProductDAOImpl dao = new ProductDAOImpl(DBconnect.getConn());
                                  Product pro =dao.getProductById(id);
                                %>  
                                
 
 <div class="container ">
     <h2  class="title"> Products detail</h2>
     
     <div class="container " style="padding-bottom: 90px;">
  <div class="row go">
    <div class="col on" style="">
        <img src="books/<%= pro.getPhotoName()%>" width="300px">
    </div>
      
    <div class="col wo">
        <h1><%= pro.getProductname()%></h1>
        <h1>price: <%= pro.getProductprice()%></h1>
        
        <p><%= pro.getProductdescription()%></p>
        <h2>In stock: <%= pro.getProductquantity()%></h2>
        <div class="btnnn text-center" style="">
        <button class="add-btn" style=" font-size: 1.9rem;" >Add To Card</button>
        <button class="add-btnn" style=" font-size: 1.9rem;" >Buy now</button>
    </div>
    </div>
    
  </div>
    </div>

                   
                       
                   
                   
                  
           
     </div>
     
 
 

 
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
    <script src="main/main.js"></script>
    <script src="main/jquery.min.js"></script>
    <script>
        setTimeout(function(){
            $('.loader_bg').fadeToggle();
        }, 1000);
    </script>
</body>
</html>
