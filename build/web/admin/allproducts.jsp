<%-- 
    Document   : allproducts
    Created on : Apr 26, 2022, 3:22:36 PM
    Author     : ram
--%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page  isELIgnored="false" %>
<%@page import="java.util.List"%>
<%@page import="com.entity.Product"%>
<%@page import="com.DAO.ProductDAOImpl"%>
<%@page import="com.DB.DBconnect"%>
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
           
   <!-- Preloader -->
   <div class="loader_bg">
  
	<!-- End Preloader --> 
        
        
        
           
           <!---header start---->
           
    <header class="header"> 

        <!-- nav container-->
       
            <div class=" head">
         
            <a href="#" class="logo navbar-brand font-weight-bold">SHOPPERS <span style="color: red">SQUARE</span> </a>
            </div>
        <div class="header_2">
            <nav class="navbr">
                <a href="home.jsp" class="fa-solid fa-house-chimney"> &nbsp; H O M E</a>
              
            </nav>
        </div>
    </header>
           
             <c:if test="${not empty succMsg}">
                                      <p class="text-center text-success" style="font-size: 2rem" >${succMsg}</p>
                                <c:remove var="succMsg"  scope="session"/>
                                 
                            </c:if>
                        
                            <c:if test="${not empty failedMsg}">
                                <p class="text-center text-danger" style="font-size: 2rem">${failedMsg}</p>
                                <c:remove var="failedMsg"  scope="session"/>
                            </c:if>
           
           <table class="table table-striped " style="font-size: 1.6rem; margin:  10px;">
               <thead  class="text-white" style="background: #0077ff;">
    <tr>
        
      <th scope="col">Id</th>
      <th scope="col">Images</th>
      <th scope="col">Product</th>
      <th scope="col">description</th>
      <th scope="col">price</th>
      <th scope="col">discount</th>
      <th scope="col">Quantity</th>
      <th scope="col">category</th>
      <th scope="col">status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
      
    
       <c:if  test="${empty userobj}">
        <c:redirect url="../home.jsp" />
        
    </c:if>
      
      
      
      <% 
      ProductDAOImpl dao=new ProductDAOImpl(DBconnect.getConn());
      List<Product> list = dao.getAllproducts();
      for (Product pro : list){
      %>
      
      <tr>
          <td > <%=pro.getProductId() %></td>
          <td><img src="../books/<%= pro.getPhotoName()%>" style="width: 50px; height: 50px;" ></td>
      <td><%=pro.getProductname()%></td>
      <td><%=pro.getProductdescription()%></td>
       <td><%=pro.getProductprice()%></td>
      <td><%=pro.getProductdiscount()%></td>
      <td><%=pro.getProductquantity()%></td>
      <td><%=pro.getProductcategory() %></td>
      <td><%=pro.getProductstatus()%></td>
      <td >
          <a href="editproducts.jsp?id=<%=pro.getProductId() %>" class="btn btn-sm btn-primary" style="font-size: 1.5rem;">Edit</a>
          <a href="../delete?id=<%=pro.getProductId()%>" class="btn btn-sm btn-danger" style="font-size: 1.5rem;">Delete</a>
      </td>
      </tr>
      <% 
      }
      %>
      
     </tbody>
</table>
           
           
 <!---bottom navbar-->

 <nav class="bottom-navbr">
    <a href="home.jsp" class="fa-solid fa-house-chimney"></a>
   
</nav>
           
           
      <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <script src="main.js"></script>
    <script src="jquery.min.js"></script>
        </body>
</html>
