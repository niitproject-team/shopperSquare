<%-- 
    Document   : home
    Created on : Apr 5, 2022, 7:47:38 PM
    Author     : ram
--%>

<%@page import="com.entity.User"%>
<%@page import="com.entity.Catagory"%>
<%@page import="com.DAO.CategoryDAOImpl"%>
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
   
        
    <!--User object from USer entity--->
    <%  User us = (User) session.getAttribute("userobj"); %>
    
            <!-----toast msg   for add cart---->
            <c:if test="${not empty addCart}">
             <div id="toast"> ${addCart}</div>

       <!----javascript of toast msg---->
            <script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
            </script>

                    <!--------- add cart reove session----->
                    <c:remove var="addCart" scope="session"/>
                    </c:if>
  
                    
    <!-- Preloader html part start -->
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
               
                
                <input type="search" name="ch" id="serch" placeholder="search here .." >
                <a href="#serch"><label class='bx bx-search-alt-2 tag'></label></a>
            </form>
            <!------search column end------>
 
            <!---cart add icon-->
            <div class="icon">
              <!---- validation for user after login and before login that given below with the help of jstl--->
            <c:if test="${not empty userobj}">
                <div class="action">
                    <div id="search-btn" class="bx bx-search-alt-2"></div>
                    
                    <a href="cart.jsp" class='bx bxs-cart-add' id="cart-add" id="cart" ><span class="cart-items" style="font-size: 1.2rem; color: red;" ></span></a>  
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
                
              <!---- validation second before login---->
                <c:if test="${empty userobj}">
                    
                     <nav class="navbr">
                 <div id="search-btn" class="bx bx-search-alt-2"style="" ></div>
             
                 
                 
                 <div id="login-btn" class='bx bxs-user ' style="" > </div>    
            
                     </nav>
                    
        
                    
                </c:if>
             </div>
             <!validation is scomplete ---->
<!-- navbar -->
   </div>
       
    </header>
       
 <!---header section end-->
 <!---bottom navbar-->

 <nav class="bottom-navbr">
    

      <div class="colll "  >
                     <ul class="navbar-nav mr-auto" style="font-size: 1.6rem; "> 
                         <li class="nav-item dropdown" >  
                              <a href="home.jsp" class="fa-solid fa-house-chimney" style="  text-decoration: none;"></a>
                                 <a href="About.jsp"  class="fa-solid fa-address-book" style=" text-decoration: none;"></a>
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

 <!---crousal by javascript----->
 <section class="home" id="home">

    <div class="swiper home-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide slide" style="background:url(images/banner1.jpg) no-repeat">
                <div class="content">
                    <span>upto 50% off</span>
                    <h3>women's Fashion</h3>
                    <a href="#" class="btnn" >shop now</a>
                </div>
            </div>

            <div class="swiper-slide slide" style="background:url(images/banner2.jpg) no-repeat">
                <div class="content">
                    <span>upto 50% off</span>
                    <h3>men's Fashion</h3>
                    <a href="#" class="btnn">shop now</a>
                </div>
            </div>

            <div class="swiper-slide slide" style="background:url(images/banner3.jpg) no-repeat">
                <div class="content">
                    <span>upto 50% off</span>
                    <h3>kid's Fashion</h3>
                    <a href="#" class="btnn">shop now</a>
                </div>
            </div>

        </div>

        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

    </div>

</section>
 
  <!---crousal by javascript end----->
 
 <!--- featur product----------->
 <div class="container con">
     <div class="con2">
        <h2  class="title">Featured Products</h2>
     </div>
     <div class="text-center" style="padding-top: 20px; font-family: italic; font-weight: bold;">
           <a href="home.jsp?category=all"  class="list-group-item list-group-item-action">All PRODUCT</a>     
     </div>
            <div class="container con1" style="padding: 15px 0 30px 10px;   ">
               <div class="row p-5"  > 
                   <% 
                       ProductDAOImpl dao = new ProductDAOImpl(DBconnect.getConn());
                       
                       List<Product> list  =dao.Userproducts();
         
                       for (Product pro : list)
                       {
                       %>
                           
                   <div class="  col-md-3 " style="padding-bottom: 10px;">
                      
                       <div class="cardd" >
                           <div class="  one card-body text-center">
                             
                               <a href="singleproduct.jsp?id=<%=pro.getProductId() %>"><img src="books/<%= pro.getPhotoName()%>" style="width: 90%; height: 100%;" ></a>
                                  <h4> <span style="font-size: 1.8rem; color: #0077ff;">Product:</span> &nbsp; <%=pro.getProductname()%></h4>
                                  <p style="color: red;  font-weight: 700; font-size: 2rem;  padding-bottom: -5px; "> <i class="fa-solid fa-indian-rupee-sign"></i> <%=pro.getafterdiscountprice()%>/- </p>
                                  <p style=""> <span class="price" ><%=pro.getProductprice()%>, <span class="text-secondary discount"  >&nbsp;</span> <%=pro.getProductdiscount()%>% off</span></p>
                                  
                                  <% if(us == null) {%>
                                  <a href="signup.jsp"><button class="add-btn"  >Add To Card</button></a>
                                    <%}else{

                                      %>  
                                      <a href="Cart?pid=<%=pro.getProductId()%>&&uid=<%=us.getId()%>"><button class="add-btn"  >Add To Card</button></a>
                                        <%}
                                    %>
                                  
                           </div>
                       </div>
               </div>      
                   <%}
              
                    %>     
                  
           </div>
     </div>
 </div>
<!---- feature produuct is complete---->

<!------ offer ---------->

<div class="offer">
    <div class="container">
        <div class=" row">
            <div class="col-6">
                <img src="images/exclusive.png" class="offer-img" style="width: 250px; height: 250px;">
            </div>
            <div class="col-6" style="padding-top: 10px;">
                <p class="ptag" style="font-size: 1.8rem; font-weight: 500;  border-bottom: 2px solid red;">Exclusively Avilable on shopersquare</p>
                <h1 style="font-weight: bold; text-transform: uppercase;">Smart Watch</h1>
                <small>
                    LEARN HOW TO MAKE COMPLETE RESPONSIVE ECOMMERCE WEBSITE USING HTML AND CSS STEP BY STEP TUTORIAL,
                    E-COMMERCE WEB DESIGN IN HTML AND CSS
                </small>
                
                <div class="space">
                      <a href="" class="btnn" style="text-decoration:  none;">Buy Now &#8594;</a>
                </div>
                
            </div>
          
        </div>
    </div>
    
    
</div>

<!-------testnomial-------->

<div class="testinomial">
    <div class="container">
        <div class="row">
            <div class="col-md-4 coo">
                <i class="fa fa-quote-left" style="color: #5298e3;"></i>
                <p>LEARN HOW TO MAKE COMPLETE RESPONSIVE ECOMMERCE WEBSITE USING HTML AND CSS STEP BY STEP TUTORIAL, E-COMMERCE WEB DESIGN IN HTML AND CSS</p>
                <div class="rating">
                    <i class="fa fa-star"style="color: #5298e3;"  ></i>
                    <i class="fa fa-star"style="color: #5298e3;" ></i>
                    <i class="fa fa-star"style="color: #5298e3;"></i>
                    <i class="fa fa-star"style="color: #5298e3;"></i>
                    <i class="fa fa-star-0"style="color: #5298e3;"></i>
                </div>
                <img src="images/user-1.png">
                <h3 style="color: #5298e3;">Sean willeam</h3>
                
        </div>
            
            <div class="col-md-4">
                <i class="fa fa-quote-left" style="color: #5298e3;"></i>
                <p>LEARN HOW TO MAKE COMPLETE RESPONSIVE ECOMMERCE WEBSITE USING HTML AND CSS STEP BY STEP TUTORIAL, E-COMMERCE WEB DESIGN IN HTML AND CSS</p>
                <div class="rating">
                    <i class="fa fa-star"style="color: #5298e3;"></i>
                    <i class="fa fa-star"style="color: #5298e3;"></i>
                    <i class="fa fa-star"style="color: #5298e3;"></i>
                    <i class="fa fa-star"style="color: #5298e3;"></i>
                    <i class="fa fa-star-0"style="color: #5298e3;"></i>
                </div>
                <img src="images/user-2.png">
                <h3 style="color: #5298e3;">jorge handiltion</h3>
                
        </div>
            
            <div class="col-md-4">
                <i class="fa fa-quote-left" style="color: #5298e3;"></i>
                <p>LEARN HOW TO MAKE COMPLETE RESPONSIVE ECOMMERCE WEBSITE USING HTML AND CSS STEP BY STEP TUTORIAL, E-COMMERCE WEB DESIGN IN HTML AND CSS</p>
                <div class="rating">
                    <i class="fa fa-star"style="color: #5298e3;"></i>
                    <i class="fa fa-star"style="color: #5298e3;"></i>
                    <i class="fa fa-star"style="color: #5298e3;"></i>
                    <i class="fa fa-star"style="color: #5298e3;"></i>
                    <i class="fa fa-star-0"style="color: #5298e3;"></i>
                </div>
                <img src="images/user-3.png">
                <h3  style="color: #5298e3;">kendra lust</h3>
                
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
<div class="login-form-container" id="login">

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
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <script>
        setTimeout(function(){
            $('.loader_bg').fadeToggle();
        }, 1000);
    </script>
</body>
</html>