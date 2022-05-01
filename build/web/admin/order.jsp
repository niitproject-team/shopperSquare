<%-- 
    Document   : allproducts
    Created on : Apr 26, 2022, 3:22:36 PM
    Author     : ram
--%>

<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="styles/stylesheet.css">
  
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
         
            <a href="home.jsp" class="logo navbar-brand font-weight-bold">SHOPPERS <span style="color: red">SQUARE</span> </a>
            </div>
        <div class="header_2">
            <nav class="navbr">
                <a href="home.jsp" class="fa-solid fa-house-chimney"> &nbsp;H O M E</a>
              
            </nav>
        </div>
    </header>
           
           <table class="table table-striped " style="font-size: 1.6rem; margin:  10px;">
               <thead  class="text-white" style="background: #0077ff;">
    <tr>
      <th scope="col">Order Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">contact</th>
      <th scope="col">Product</th>
      <th scope="col">price</th>
      <th scope="col">Payment type</th>
  
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
       <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
       <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
            
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
       <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
            
    </tr>
  </tbody>
</table>
           
           
 <!---bottom navbar-->

 <nav class="bottom-navbr">
    <a href="home.jsp" class="fa-solid fa-house-chimney"></a>
   
</nav>
           
           
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
