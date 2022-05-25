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
                <div class="menu cardd">
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
     
    
     
      
     <div class="samll-container container cart cardd  "  >
         
         <div  class="name">
             <h1 >Add Address</h1>
             
         </div>
                   <%
             
              User us = (User) session.getAttribute("userobj"); 
      
           
         %>
         <div class="inner_checkout">
             
             <form action="" method="">
                 <div class="form-row">
                     <div class="form-group col-md-6">
                         <label for="inputname">Name</label>
                         <input type="text" class=" form-control" id="inputname1" value="<%=us.getName()%>"style="font-size: 1.8rem;" readonly="readonly">
                     </div>
                       <div class="form-group col-md-6">
                         <label for="inputname">Email</label>
                         <input type="text" class=" form-control" id="inputname1" value="<%=us.getEmail()%>"style="font-size: 1.8rem;"readonly="readonly">
                     </div>
                     
                 </div>
                 
                   <div class="form-row">
                     <div class="form-group col-md-6">
                         <label for="inputname">contect No:</label>
                         <input type="number" class=" form-control" id="inputname1" value="<%=us.getContact()%>"style="font-size: 1.8rem;" readonly="readonly" >
                     </div>
                       <div class="form-group col-md-6">
                         <label for="inputname">Address</label>
                         <input type="text" class=" form-control" id="inputname1" value=""style="font-size: 1.8rem;"  >
                     </div>
                     
                 </div>
                   <div class="form-row">
                     <div class="form-group col-md-6">
                         <label for="inputname">Landmark</label>
                         <input type="text" class=" form-control" id="inputname1" value=""style="font-size: 1.8rem;">
                     </div>
                       <div class="form-group col-md-6">
                         <label for="inputname">city</label>
                         <input type="text" class=" form-control" id="inputname1" value=""style="font-size: 1.8rem;">
                     </div>
                     
                 </div>
                   <div class="form-row">
                     <div class="form-group col-md-6">
                         <label for="inputname">State </label>
                         <input type="text" class=" form-control" id="inputname1" value=""style="font-size: 1.8rem;">
                     </div>
                       <div class="form-group col-md-6">
                         <label for="inputname">Pin code</label>
                         <input type="text" class=" form-control" id="inputname1" value="" style="font-size: 1.8rem;">
                     </div>
                     
                 </div>
                 
              
                 
             </form>
                     
                     <div class="text-center" style="margin-bottom: 10px;">
                         <button class="btn btn-warning " style="font-size: 1.8rem; " >Add Address</button>
                     </div>
             
             
         </div>

  
                 
     </div>
   
     
 </div>
             
     
  
             
             
   
  
         <!--- Footer bar--->
    
           
     
        
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
