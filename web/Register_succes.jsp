<%--
  Created by IntelliJ IDEA.
  User: nima8
  Date: 11/30/2020
  Time: 5:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="textcss.css" type="text/css">
</head>
<body>
<div class="container">
    <header>
        <nav>
            <ul class="menu">
                <li class="logo"><a href="#">Clothes Shopping</a></li>
                <li><a href="#"  class="hover">Home</a></li>
                <li><a href="#" class="hover">Blog</a></li>
                <li>
                    <a href="#" class="hover">Products <i class="fa fa-arrow-down"></i></a>
                    <ul class="sub-menu " style="margin-left: -22px;">
                        <li> <a herf="#">T shirt</a></li>
                        <li><a herf="#">Pants </a></li>

                    </ul>

                </li>
                <li><a href="#" class="hover">Shop</a></li>
                <li><a href="Login.jsp" class="hover">Login</a></li>
                <li><a href="Register.jsp" class="hover" style="color: red">Register</a></li>
                <li><a href="Contactus.jsp" class="hover">Contact Us</a></li>
                <a href="#" ><i class="fa fa-shopping-cart" style="font-size: 20px;" ></i></a>

            </ul>
        </nav>
    </header>
</div>
<div style="text-align: center">
    <%String email=request.getParameter("email");
    %>
    <h1 style="color: #356;padding-top: 3em"><%out.println("register succes");%><h1>
    <h1 style="color: #356;"><%out.println("Welcome"+" "+email);%><h1>

</div>

</body>
</html>
