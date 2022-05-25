<%-- 
    Document   : cart
    Created on : Apr 25, 2022, 12:40:58 AM
    Author     : ram
--%>
<%@page import="com.DAO.CategoryDAOImpl"%>
<%@page import="com.entity.Catagory"%>
<%@page import="com.entity.Product"%>
<%@page import="com.DAO.ProductDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Cart"%>
<%@page import="com.entity.User"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@page import="com.DB.DBconnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="style/stylesheet.css">
    <title>Document</title>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
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
      
    
        <c:if test="${ empty userobj}">
            <c:redirect url="home.jsp"></c:redirect>
  
        </c:if>
        
    
    
  
        
          <!-- Preloader -->
 
   
	<!-- End Preloader --> 
          <header class="header"> 

        <!-- nav container-->
       
            <div class=" head">
         
            <a href="home.jsp" class="logo navbar-brand font-weight-bold">SHOPPERS <span style="color: red">SQUARE</span> </a>
        
           <!---jsp expression- that use from Category -->
        
         <div class="borderr" style=" ">
                 
                 
                <a href="home.jsp"  style=" text-decoration: none;">HOME</a>
             <a href="#About.jsp"  style=" text-decoration: none;">ABOUT</a>
            
                 
              </div>
            <% 
                CategoryDAOImpl daoo = new CategoryDAOImpl (DBconnect.getConn());
                List<Catagory> listt = daoo.getAllcategory();
                %>

                <div class="coll "  >
                     <ul class="navbar-nav mr-auto" style="font-size: 1.5rem; "> 
                         <li class="nav-item dropdown" >  
                               <a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                   CATEGORIES
                               </a>   
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <% 
                             for(Catagory cro: listt) {%>
                            <a class="dropdown-item" href="home.jsp?category=<%= cro.getCatagoryId()%> " style="font-size: 1.5rem;" value="<%=cro.getCatagoryId()%>" ><%=cro.getCatagorytittle()%></a>
          
                         <%}
                         %>
                            </div>
                         </li>
                    </ul>
                </div>
                   <!--- category fetch form db complete---->
    
            
      <!------search column------>
            <form action="search.jsp" class="search-text" method="post" >
                <input type="search" name="ch" id="" placeholder="search here .." aria-label="Search">
                <a href="search.jsp"><label class='bx bx-search-alt-2 tag'></label></a>
            </form>
            <!------search column end------>
           
 
            <!---cart add icon-->
            <div class="icon">
           <c:if test="${not empty userobj}">
                <div class="action">
                  <div id="search-btn" class="bx bx-search-alt-2"></div>
                    
                    <div id="" class='bx bxs-user foo' onclick="menuToggle();"> 
                <div class="menu">
                    <h1>${userobj.name}</h1>
                    <ul>
                        
                        <li><a href="userprofile.jsp"  >Profile</a></li>
                        <li><a href="address.jsp"  >Address</a></li>
                        <li><a href="userorder.jsp" >My Order</a></li>
                        <li><a href="./logout"  >Logout</a></li>
                    </ul>
                </div>
                    </div>
                </div>
                    
            </c:if>
            </div>
        </div>
       
    </header>
       
 <!---header section end-->
 <!---bottom navbar-->
<nav class="bottom-navbr">
    

      <div class="colll "  >
                     <ul class="navbar-nav mr-auto" style="font-size: 1.6rem; "> 
                         <li class="nav-item dropdown" >  
                              <a href="#home.jsp" class="fa-solid fa-house-chimney" style="  text-decoration: none;"></a>
                                 <a href="#About.jsp"  class="fa-solid fa-address-book" style=" text-decoration: none;"></a>
                                 <a href="#message us"  class="fa-solid fa-message"style=" text-decoration: none;"></a>
                               <a class="nav-link dropdown-toggle fa-solid fa-eye" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style=" text-decoration: none;">
                                  
                               </a>   
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <% 
                             for(Catagory cro: listt) {%>
                            <a class="dropdown-item" href="home.jsp?category=<%= cro.getCatagoryId()%> " style="font-size: 1.5rem;" value="<%=cro.getCatagoryId()%>" ><%=cro.getCatagorytittle()%></a>
          
                         <%}
                         %>
                            </div>
                         </li>
                     </ul></div>
</nav>
 
 
	
 <div class="" style="padding-top: 20px;">
     
     <div class="con2"  >
     <h2  class="title">Cart Products</h2>
     </div>
     
      
     <div class="samll-container container cart-page cardd  "  >
      
       
            
         <table  >
       
                   <tr >
                 <th style="font-size: 1.8rem; font-weight: bold; text-transform: uppercase;">product</th>
                <th style="font-size: 1.8rem; font-weight: bold; text-transform: uppercase;">Quantity</th>
                <th style="font-size: 1.8rem; font-weight: bold; text-transform: uppercase;">total</th>
            </tr>
            
               
         
                 <%
             
              User us = (User) session.getAttribute("userobj"); 
         CartDAOImpl dao = new CartDAOImpl(DBconnect.getConn());
         List <Cart> list =dao.getProductbyuserid(us.getId());
         int totalprice=0;
         for(Cart car : list){
             totalprice=car.getTotalprice();
           
         %>
              
        <tr class="cardd" >
                <td >
                    <div class="cart-info " >
                       <img src="books/<%=car.getPhotoName()%>">
                        <div>
                            <p style="font-size: 1.5rem; font-weight: 600; text-transform: uppercase;"><%=car.getProductname()%></p>
                            <small style="color: red;" >Price: <span style="color: black;"> <%=car.getGetafterdiscountprice()%></span></small>
                            <br>
                            <div class="" style="padding: 10px 0 0 0;">
                                <a href="remove_product?pid=<%=car.getPid()%>&&uid=<%=car.getUid()%>&&cid=<%=car.getCid()%>"><button class="add" style=" font-size: 1.2rem; background: #ff9255; color: white; font-weight: bold; width: 60px; height: 3vh; border-radius: 15%; " >Remove</button> </a>
                            </div>
                        </div>
                        
                    </div>
                </td>
                <td><input type="number"value='1'></td>
                <td style="padding-right: 10px;font-size: 1.5rem; " ><%=car.getGetafterdiscountprice()%>/-</td>
            </tr>
     
             
             <%}
              %>
 
          </table>
                
     <div class="total-price" style="padding-top: 15px;">
         <table>
             
             <tr>
                
                 <td> total</td>
                 <td><%=totalprice%></td> 
             </tr>
         </table>
             
                 
     </div>
   
     
 </div>
             
     
 </div>
             
             <div class="btnnn text-center" style="margin-bottom: 60px;" >
         <a href="home.jsp" >  <button class="add-btn" style=" font-size: 1.9rem; width: 160px;" >Continuous Shop</button> </a>
         <a href="cheakout.jsp"><button class="add-btnn   checkout-btn " style=" font-size: 1.9rem; " >CheckOut</button></a>
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
   
    </body>
</html>
