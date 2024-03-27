<%--
  Created by IntelliJ IDEA.
  User: nima8
  Date: 11/30/2020
  Time: 12:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Clothes shopping/ Login</title>

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            color: #222;
        }
        a {
            text-decoration: none;
        }
        ul {
            list-style-type: none;
        }
        header {
            position: sticky;
            height: 100px;
            background: #356;
            position: relative;
            width: 100%;
            z-index: 99;
        }
        nav {
            height: inherit;
        }
        .menu {
            display: flex;
            height: inherit;
            align-items: center;
            padding: 0 20px;
        }
        .menu li {
            padding: 0 17px;
        }
        .menu a {
            color: white;
        }
        .logo {
            flex: 1;
            font-size: 22px;
        }


        body {
            background-color: currentColor;
        }

        .footerWrapper{
            background: #356;
            position: relative;
            padding-left: 2em;
            padding-right: 2em;
            padding-top: 1em;
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            grid-gap: 2em;
            font-size: 11px;
        }


        .sub-menu{
            display: none;
            position: absolute;
        }

        .sub-menu > li > a{
            display: block;
            width: 90px;
            background-color: black;
            color: white;
            padding: 7px 20px;
        }
        .sub-menu > li:hover > a{
            background-color: red;
        }
        li:hover > .sub-menu{
            display: block;
        }


        .wrapper{
            position: relative;
            padding-left: 2em;
            padding-right: 2em;
            padding-top: 2em;
            padding-bottom: 2em;
            display: grid;
            grid-template-columns: 1fr 2fr 1fr;

            /*    grid-auto-rows: minmax(400px,auto);*/
            grid-auto-rows: 550px;
            /*    grid-auto-columns: 100px;*/


        }

        .input{

            width: 50%;
            padding: 12px 20px;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .submit{
            width: 40%;
            background-color: white;
            color: black;
            font-size: 20px;
            padding: 14px 20px;
            margin-top: 40px;

            margin-left:235px;

            border: none;
            border-radius: 4px;
            cursor: pointer;
        }


        .submit:hover {
            background-color: #356;
        }


        .hover:hover{
            color: red;


        }


    </style>


</head>

<body>
<div class="container">
    <header>
        <nav>
            <ul class="menu">
                <li class="logo"><a href="#">Clothes Shopping</a></li>
                <li><a href="index.jsp"  class="hover">Home</a></li>
                <li><a href="#" class="hover">Blog</a></li>
                <li>
                    <a href="#" class="hover">Products <i class="fa fa-arrow-down"></i></a>
                    <ul class="sub-menu " style="margin-left: -22px;">
                        <li> <a herf="#">T shirt</a></li>
                        <li><a herf="#">Pants </a></li>

                    </ul>

                </li>
                <li><a href="#" class="hover">Shop</a></li>
                <% HttpSession session1=request.getSession();
                    boolean value= (boolean) session1.getAttribute("NowLogin");
                %>
                <%
                    if(value){
                        out.print("<li><a href='Login_succes.jsp' class='hover' style='color: green';>Loged in</a></li>");
                    }%>
                <% if(!value){
                    out.print("<li><a href='Login.jsp' class='hover';>Login</a></li>");
                }%>
                <li><a href="Register.jsp" class="hover">Register</a></li>
                <li><a href="Contactus.jsp" class="hover">Conect Us</a></li>
                <%
                    if (value){
                        out.print("<a href='shop.jsp' ><i class='fa fa-shopping-cart' style='font-size: 20px;' ></i></a>");
                    }
                %>
                <%
                    if (!value){
                        out.print("<a href='Login.jsp' ><i class='fa fa-shopping-cart' style='font-size: 20px;' ></i></a>");
                    }
                %>

            </ul>
        </nav>
    </header>
</div><!-- End .container -->

<div class="wrapper">


    <div>

    </div>



    <div style="background-color: black; border-radius: 2em;">


        <h1 style="color: #356; font-size: 50px; margin-left: 166px; margin-top: 30px"> Clothes shopping</h1>
        <h1 style=" color: #356; font-size: 35px; margin-left: 320px;margin-top: 10px">Login</h1>
        <form action="Login" method="post">
            <label style="color: #356; font-size: 20px; margin-left: 70px;" >Email/Phone</label>
            <input  class="input" type="text" name="email"  placeholder="Your mail.." style="margin-left: 15px; margin-top: 35px" id="e">
            <br>
            <label style="color: #356; font-size: 20px; margin-left: 95px" >Password</label>
            <input  class="input" type="password" name="password"  placeholder="*******" style="margin-left: 15px; margin-top: 30px" id="p1">
            <br>
            <input type="submit" class="submit" onclick="email_reg()">


        </form>
        <%

            boolean value1= (boolean) session1.getAttribute("Login");


        %>


        <div style="color: #356; margin-left: 280px; margin-top: 15px;">
            <% if(value1){
               out.print("don't have account?<a href='Register.html' style='color: #356'>Register</a>");
            }%>
            <h5 style="color: red; padding-left: 4em">
                <%if(!value1){
                    out.print("no user was found");
                    }%>

            </h5>


        </div>

    </div>


    <div>


    </div>


</div>








<div class="footerWrapper">
    <div style=" height: 100px; ">

        <label for="fname" style="margin-left: 70px; color: white">Email</label>
        <input type="text" id="fname" name="firstname" placeholder="your email adress..."
               style="padding: 5px; margin-left:6px; margin-top: 10px ; background: white">

        <br>
        <button value="save"
                style="margin-left: 159px; margin-top: 4px; padding: 5px 18px; background-color:#356; font-size: 11px" onclick="email_footer()">save</button>

    </div>




    <div style=" height:100px; text-align: center; color: white">
        <a href="conectus.html" style="color: white">Contact Us</a><br><br>Phone : 983212005<br><br> Email : Nima87760@gmail.com
        <br><br>
        Copyright © 2020 nimaahmadi.com. All rights reserved.

    </div>

    <div style=" height: 100px; text-align: center;">
        <a href="web.html" style="color: white">Home</a><br><br><a href="#" style="color: white">Blog</a><br><br><a href="#" style="color: white">Shop</a><br><br><a href="Register.html" style="color: white">Register</a><br><br>
    </div>

</div>








<script src="script.js"></script>
</body>

</html>
