<%-- 
    Document   : home
    Created on : Apr 5, 2022, 7:47:38 PM
    Author     : ram
--%>

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
</head>
<body>
    
 
       <c:if test="${not empty failedmsg}">
                                <p class="text-center text-danger" style="font-size: 2rem">${failedmsg}</p>
                                <c:remove var="failedmsg"  scope="session"/>
                            </c:if>
                        
    <header class="header"> 

          
        <!-- nav container-->
       
            <div class=" head">
         
            <a href="#" class="logo navbar-brand font-weight-bold">SHOPPERS <span style="color: red">SQUARE</span> </a>
        
         
            <form action="" class="search-text">
                <input type="search" name="" id="" placeholder="search here ..">
              <label class='bx bx-search-alt-2 tag'></label>
            </form>
           
 
            <!---cart add icon-->
            <div class="icon">
            <div id="search-btn" class="bx bx-search-alt-2"></div>
              <a href="" class='bx bxs-cart-add' id="cart-add" ></a>  
              <div id="login-btn" class='bx bxs-user'> </div>   
            
            </div>
        </div>
        <div class="header_2">
            <nav class="navbr">
                <a href="#home">home</a>
                <a href="#about">about</a>
                <a href="#message us">message us</a>
                <a href="#catogary">catogary</a>
            </nav>
        </div>
    </header>
       
 <!---header section end-->
 <!---bottom navbar-->

 <nav class="bottom-navbr">
    <a href="#home.jsp" class="fa-solid fa-house-chimney"></a>
    <a href="#about"  class="fa-solid fa-address-book"></a>
    <a href="#message us"  class="fa-solid fa-message"></a>
    <a href="#catogary"  class="fa-solid fa-eye"></a>
</nav>

 <div class="container-fluid"  >
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner" style="padding-top: 1rem;">
          <div class="carousel-item active" style="height: 40vh;">
            <img src="images/index-12-2048x1045.jpg" style="height: 40vh;" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item" style="height: 40vh;">
            <img src="images/20140801-174432-banner-2.jpg"  style="height: 40vh;" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item" style="height: 40vh;">
            <img src="images/Redmi-k30s-1-1200x517.jpg"  style="height: 50rem; background-size: auto;" class="d-block w-100" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
</div>

 
 
<!--login portion-->
<div class="login-form-container">

    <div id="close-login-btn"  class="fa-solid fa-xmark"></div> 
    <form action="LoginServlet" method="post">

    <h3>Sign in</h3>
             <c:if test="${not empty succmsg}">
                                      <p class="text-center text-success" style="font-size: 2rem" >${succmsg}</p>
                                <c:remove var="succmsg"  scope="session"/>
                                 
                            </c:if>
                        
                            <c:if test="${not empty failmsg}">
                                <p class="text-center text-danger" style="font-size: 10rem">${failmsg}</p>
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

  
    <script src="main/main.js"></script>

</body>
</html>
