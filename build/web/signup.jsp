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
    
              <!-- Preloader -->
   <div class="loader_bg">
        <div class="loader"></div>
   </div>
   
	<!-- End Preloader --> 
    
    <div class="first-box" >
        <div class="bbb" style="background-color: rgb(0, 119, 255); height: 70px;">

            <div class="shopper" style=" text-align: center; margin: 20px; background-color: whitesmoke; ">
               <a href="home.jsp" style="list-style-type: none; text-decoration: none;"><h1 style="color: rgb(0, 110, 255); font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">SHOPPER  <span style="color: red; font-weight: bold;">SQUARE</span></h1></a> 
            </div>
        </div>
            <!-- Sign up form -->
        
		<section class="signup">
         
            
            <div class="signup-content">
                            
                            <h2 class="form-title"></h2>
                            
                     
                            <form method="post" action="SignupServlet" class="register-form"id="register-form">
                                <h3>Sign up</h3>
                                
                                  <c:if test="${not empty succmsg}">
                                      <p class="text-center text-success" style="font-size: 2rem" >${succmsg}</p>
                                <c:remove var="succmsg"  scope="session"/>
                                 
                            </c:if>
                        
                            <c:if test="${not empty failmsg}">
                                <p class="text-center text-danger" style="font-size: 10rem">${failmsg}</p>
                                <c:remove var="failmsg"  scope="session"/>
                            </c:if>
                        
                            <div>
                                <span>Name</span>
                                <input type="text " name="name" class="box" placeholder="Enter your username" id="" required="required">
                            </div>
                            
                            <div>  
                                <span>Email</span>
                                <input type="email" name="email" class="box" placeholder="Enter your Email" id=""  required="required">
                            </div>
                            
                            <div>
                                <span>Password</span>
                                <input type="password" name="password"  class="box" placeholder="Enter your password" id=""  required="required">
                            </div>
                            
                        
							
				<div>
                                <span>Contact</span>
			<input type="number" name="contact" id="contact" class="box"	placeholder="Contact no"   required="required"/>
                            </div>
                            
				<div class="form-group form-button">
                                <input type="submit" name="signup" id="signup"
                                       class="form-submit" value="Register" />
                                
                                <p class="login" style="font-size: 1.6rem; text-align: center;" >if you've account  <a href="home.jsp" class="ancor" style="text-decoration: underline; ">Login</a></p>
							</div>
						</form>
					</div>
                </section>
            </div>
                
                <script src="main/main.js"></script>
                    <script src="main/jquery.min.js"></script>
    <script>
        setTimeout(function(){
            $('.loader_bg').fadeToggle();
        }, 1000);
    </script>
                
            </body>
</html>
