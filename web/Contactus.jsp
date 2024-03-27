<%--
  Created by IntelliJ IDEA.
  User: nima8
  Date: 11/30/2020
  Time: 12:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <link rel="stylesheet" href="text2css.css" type="text/css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Clothes shopping/Conect us</title>
</head>

<body>
<div class="container">
    <header>
        <nav>
            <ul class="menu">
                <li class="logo"><a href="#">Clothes Shopping</a></li>
                <li><a href="index.jsp"  class="hover" >Home</a></li>
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
                <li><a href="Contactus.jsp" class="hover" style="color: red;">Conect Us</a></li>
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
</div>


<div>
    <img class="banner" src="image/40.jpg">

</div>


<div class="wrapper">

    <div class="div-wrapper">

        <form action="mail" method="post">
            <label style="color: red; font-size: 20px; margin-left: 122px;">Name</label>
            <input class="input" type="text" name="prop1" placeholder="Your name.." style="margin-left: 15px; margin-top: 35px" id="n">
            <br>
            <label style="color: red; font-size: 20px; margin-left: 126px">Email</label>
            <input class="input" type="text" name="prop2" placeholder="your mail..." style="margin-left: 15px; margin-top: 30px" id="e">
            <label style="color: #356; font-size: 20px; margin-left: 117px">Phone</label>
            <input class="input" name="prop3" type="text" placeholder="+98 910 *** ** **"
                   style="margin-left: 15px; margin-top: 30px">
            <br>
            <label style="color: #356; font-size: 20px; margin-left: 153px">To</label>
            <select name="country" class="select">

                <option value="australia">Managemant</option>
                <option value="canada">Sale support</option>
                <option value="usa">financial</option>
            </select>
            <br>
            <label style="color: #356; font-size: 20px; margin-left: 69px ;">Explanation</label>
            <input class="input" name="prop4" type="text" placeholder="....."
                   style="margin-left: 15px; margin-top: 30px; padding-bottom: 100px">
            <input type="file" style="margin-left: 192px; margin-top: 30px; color: #356">

            <input  class="submit" type="submit" onclick="email_reg() , ne()">

        </form>
<%--        <label style="color: red; font-size: 20px; margin-left: 122px;">Name</label>--%>
<%--        <input class="input" type="text" placeholder="Your name.." style="margin-left: 15px; margin-top: 35px" id="n">--%>
<%--        <br>--%>
<%--        <label style="color: red; font-size: 20px; margin-left: 126px">Email</label>--%>
<%--        <input class="input" type="text" placeholder="your mail..." style="margin-left: 15px; margin-top: 30px" id="e">--%>
<%--        <br>--%>
<%--        <label style="color: #356; font-size: 20px; margin-left: 117px">Phone</label>--%>
<%--        <input class="input" type="text" placeholder="+98 910 *** ** **"--%>
<%--               style="margin-left: 15px; margin-top: 30px">--%>
<%--        <br>--%>
<%--        <label style="color: #356; font-size: 20px; margin-left: 153px">To</label>--%>
<%--        <select name="country" class="select">--%>

<%--            <option value="australia">Managemant</option>--%>
<%--            <option value="canada">Sale support</option>--%>
<%--            <option value="usa">financial</option>--%>
<%--        </select>--%>
<%--        <br>--%>
<%--        <label style="color: #356; font-size: 20px; margin-left: 69px ;">Explanation</label>--%>
<%--        <input class="input" type="text" placeholder="....."--%>
<%--               style="margin-left: 15px; margin-top: 30px; padding-bottom: 100px">--%>


<%--        <input type="file" style="margin-left: 192px; margin-top: 30px; color: #356">--%>

<%--        <button class="submit" onclick="email_reg() , ne()">Send</button>--%>


    </div>

    <div class="div-wrapper">

        <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d67253712.23318781!2d-90.11728406120422!3d5.5247984022814185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3f8e00491ff3dcd9%3A0xf0b3697c567024bc!2sTehran%2C%20Tehran%20Province%2C%20Iran!5e0!3m2!1sen!2slu!4v1604072976052!5m2!1sen!2slu"
                frameborder="0" style="border:0; width: 100%; height: 100%; border-radius: 2em" allowfullscreen="" aria-hidden="false"
        ></iframe>
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
