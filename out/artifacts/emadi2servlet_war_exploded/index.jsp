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
  <link rel="stylesheet" href="textcss.css" type="text/css">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>Clothes shopping / Home</title>
</head>

<body>

<%

   HttpSession session2=request.getSession();
   session2.setAttribute("Login",true);
   if(session2.getAttribute("NowLogin")==null){
     session2.setAttribute("NowLogin",false);
   }
%>
<div class="container">
  <header>
    <nav>
      <ul class="menu">
        <li class="logo"><a href="#">Clothes Shopping</a></li>
        <li><a href="index.jsp"  class="hover" style="color: red;">Home</a></li>
        <li><a href="#" class="hover">Blog</a></li>
        <li>
          <a href="#" class="hover">Products <i class="fa fa-arrow-down"></i></a>
          <ul class="sub-menu " style="margin-left: -22px;">
            <li> <a herf="#">T shirt</a></li>
            <li><a herf="#">Pants </a></li>

          </ul>

        </li>
        <li><a href="#" class="hover">Shop</a></li>
        <%
          boolean value= (boolean) session2.getAttribute("NowLogin");
        %>
        <%
          if(value){
            out.print("<li><a href='Login_succes.jsp' class='hover' style='color: green';>Loged in</a></li>");
          }%>
        <% if(!value){
          out.print("<li><a href='Login.jsp' class='hover';>Login</a></li>");
        }%>
        <li><a href="Register.jsp" class="hover">Register</a></li>
        <li><a href="Contactus.jsp" class="hover">Contact Us</a></li>
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


<div class="slidewrapper" style="background: black">
  <div style="background: black;">
    <img src="image/30.jpg" style="width: 100%; height: 450px;">


  </div>



  <div id="slider">

    <div class="slide active">
      <img src="image/1.jpg" alt="">
      <div class="text">
        Stylish
      </div>
    </div>

    <div class="slide">
      <img src="image/2.jpg" alt="">
      <div class="text">
        Suitable
      </div>
    </div>

    <div class="slide">
      <img src="image/3.jpg" alt="">
      <div class="text">
        High quality
      </div>
    </div>

    <a href="#" class="prev">&#10094;</a>
    <a href="#" class="next">&#10095;</a>

  </div>

  <div style="background: black">
    <img src="image/34.jpg" style="width: 100%; height: 450px;">


  </div>


</div>


<!--
<div id="dots">
    <span class="dot active"></span>
    <span class="dot"></span>
    <span class="dot"></span>
</div>
-->

<script src="script.js"></script>

<div class="bord">
  <div
          style="color: white; padding-left: 2em; padding-top: 1em; font-size: 25px; padding-left: 1.5em; line-height: 20px; text-shadow: 3px 2px #356;">
    The newest

  </div>

  <div class="wrapper">

    <div style="border-radius: 1em;">
      <div>
        <img src="image/10.webp"
             style="width: 100%; height: 250px; border-top-left-radius:1em; border-top-right-radius:1em; ">

      </div>

      <div class="text1">
        Men Sherpa Lined Lette Embroidery Hooded Jacket
      </div>

      <div class="wrapper2">

        <div class="wrapper2-1">
          200$
        </div>
        <div style="background: #356; text-align: center; padding-top: 6px; border-radius: 6px;">
          <p style="color: white">Add to cart</p>
        </div>

      </div>

    </div>



    <div style="border-radius: 1em;">
      <div>
        <img src="image/6.webp"
             style="width: 100%; height: 250px; border-top-left-radius:1em; border-top-right-radius:1em; ">

      </div>

      <div class="text2">
        Men Button Through Denim<br> Trucker Jacket
      </div>

      <div class="wrapper2">

        <div class="wrapper2-1">
          150$
        </div>
        <div style="background: white; text-align: center; padding-top: 6px; border-radius: 6px;">
          <p style="color:#356">Add to cart</p>
        </div>

      </div>



    </div>



    <div style="border-radius: 1em;">
      <div>
        <img src="image/8.webp"
             style="width: 100%; height: 250px; border-top-left-radius:1em; border-top-right-radius:1em;">

      </div>

      <div class="text1">
        Men Flap Pocket Drawstring Waist Cargo Pants
      </div>

      <div class="wrapper2">

        <div class="wrapper2-1">
          170$
        </div>
        <div style="background: #356; text-align: center; padding-top: 6px; border-radius: 6px;">
          <p style="color: white">Add to cart</p>
        </div>

      </div>

    </div>



    <div style="border-radius: 1em;">
      <div>
        <img src="image/12.webp"
             style="width: 100%; height: 250px; border-top-left-radius:1em; border-top-right-radius:1em; ">

      </div>

      <div class="text2">
        Men Flap Pocket<br> Cargo Pants
      </div>

      <div class="wrapper2">

        <div class="wrapper2-1">
          170$
        </div>
        <div style="background: white; text-align: center; padding-top: 6px; border-radius: 6px;">
          <p style="color:#356">Add to cart</p>
        </div>

      </div>

    </div>



    <div style="border-radius: 1em;">
      <div>
        <img src="image/13.webp"
             style="width: 100%; height: 250px; border-top-left-radius:1em; border-top-right-radius:1em;">

      </div>

      <div class="text1">
        Men Flap Pocket Drawstring Waist Cargo Pants
      </div>

      <div style="font-size: 15px ; padding-left: 1em; color: grey; text-decoration: line-through">
        170$
      </div>

      <div class="wrapper2-2">

        <div class="OffWrapper">
          150$
        </div>
        <div style="background: #356; text-align: center; padding-top: 6px; border-radius: 6px;">
          <p style="color: white">Add to cart</p>
        </div>

      </div>

    </div>



    <div style="border-radius: 1em;">
      <div>
        <img src="image/11.webp"
             style="width: 100%; height: 250px; border-top-left-radius:1em; border-top-right-radius:1em; ">

      </div>

      <div class="text2">
        Men Flap Pocket<br> Cargo Pants
      </div>

      <div style="font-size: 15px ; padding-left: 1em; color: grey; text-decoration: line-through">
        200$
      </div>

      <div class="wrapper2-2">

        <div class="OffWrapper">
          155$
        </div>
        <div style="background: white; text-align: center; padding-top: 6px; border-radius: 6px;">
          <p style="color:#356">Add to cart</p>
        </div>

      </div>

    </div>



    <div style="border-radius: 1em;">
      <div>
        <img src="image/14.webp"
             style="width: 100%; height: 250px; border-top-left-radius:1em; border-top-right-radius:1em;">

      </div>

      <div class="text1">
        Men Graphic Pattern Drawstring Waist Carrot Jeans
      </div>

      <div class="wrapper2">

        <div class="wrapper2-1">
          190$
        </div>
        <div style="background: #356; text-align: center; padding-top: 6px; border-radius: 6px;">
          <p style="color: white">Add to cart</p>
        </div>

      </div>

    </div>



    <div style="border-radius: 1em;">
      <div>
        <img src="image/22.webp"
             style="width: 100%; height: 250px; border-top-left-radius:1em; border-top-right-radius:1em;">

      </div>

      <div class="text2">
        Men Spliced Denim Trucker Jacket Without Hoodie
      </div>

      <div class="wrapper2">

        <div class="wrapper2-1">
          150$
        </div>
        <div style="background: white; text-align: center; padding-top: 6px; border-radius: 6px;">
          <p style="color:#356">Add to cart</p>
        </div>

      </div>

    </div>



    <div style="border-radius: 1em;">
      <div>
        <img src="image/21.webp"
             style="width: 100%; height: 250px; border-top-left-radius:1em; border-top-right-radius:1em;">

      </div>

      <div class="text1">
        Men Flap Pocket Drawstring<br> Cargo Pants
      </div>

      <div class="wrapper2">

        <div class="wrapper2-1">
          70$
        </div>
        <div style="background: #356; text-align: center; padding-top: 6px; border-radius: 6px;">
          <p style="color: white">Add to cart</p>
        </div>

      </div>

    </div>


    <div style="border-radius: 1em;">
      <div>
        <img src="image/5.webp"
             style="width: 100%; height: 250px; border-top-left-radius:1em; border-top-right-radius:1em;">

      </div>

      <div class="text2">
        Men Slogan <br>Graphic Tee
      </div>

      <div class="wrapper2">

        <div class="wrapper2-1">
          50$
        </div>
        <div style="background: white; text-align: center; padding-top: 6px; border-radius: 6px;">
          <p style="color:#356">Add to cart</p>
        </div>

      </div>

    </div>



  </div>



</div>







<div class="bord">
  <div
          style="color: white; padding-left: 2em; padding-top: 1em; padding-left: 1.5em; font-size: 25px;  line-height: 20px; text-shadow: 3px 2px green;">
    Discounted products

  </div>

  <div class="wrapper">

    <div style="border-radius: 1em;">
      <div>
        <img src="image/4.webp"
             style="width: 100%; height: 250px; border-top-left-radius:1em; border-top-right-radius:1em; ">

      </div>

      <div class="text1">
        Men Sherpa Lined Lette Embroidery Hooded Jacket
      </div>

      <div style="font-size: 15px ; padding-left: 1em; color: grey; text-decoration: line-through">
        120$
      </div>

      <div class="wrapper2-2">

        <div class="OffWrapper">
          80$
        </div>
        <div style="background: #356; text-align: center; padding-top: 6px; border-radius: 6px;">
          <p style="color: white">Add to cart</p>
        </div>

      </div>

    </div>



    <div style="border-radius: 1em;">
      <div>
        <img src="image/20.webp"
             style="width: 100%; height: 250px; border-top-left-radius:1em; border-top-right-radius:1em; ">

      </div>

      <div class="text2">
        Men Button Through Denim<br> Trucker Jacket
      </div>

      <div style="font-size: 15px ; padding-left: 1em; color: grey; text-decoration: line-through">
        150$
      </div>

      <div class="wrapper2-2">

        <div class="OffWrapper">
          100$
        </div>
        <div style="background: white; text-align: center; padding-top: 6px; border-radius: 6px;">
          <p style="color:#356">Add to cart</p>
        </div>

      </div>



    </div>



    <div style="border-radius: 1em;">
      <div>
        <img src="image/13.webp"
             style="width: 100%; height: 250px; border-top-left-radius:1em; border-top-right-radius:1em;">

      </div>

      <div class="text1">
        Men Flap Pocket Drawstring Waist Cargo Pants
      </div>

      <div style="font-size: 15px ; padding-left: 1em; color: grey; text-decoration: line-through">
        170$
      </div>

      <div class="wrapper2-2">

        <div class="OffWrapper">
          150$
        </div>
        <div style="background: #356; text-align: center; padding-top: 6px; border-radius: 6px;">
          <p style="color: white">Add to cart</p>
        </div>

      </div>

    </div>



    <div style="border-radius: 1em;">
      <div>
        <img src="image/11.webp"
             style="width: 100%; height: 250px; border-top-left-radius:1em; border-top-right-radius:1em; ">

      </div>

      <div class="text2">
        Men Flap Pocket<br> Cargo Pants
      </div>

      <div style="font-size: 15px ; padding-left: 1em; color: grey; text-decoration: line-through">
        200$
      </div>

      <div class="wrapper2-2">

        <div class="OffWrapper">
          155$
        </div>
        <div style="background: white; text-align: center; padding-top: 6px; border-radius: 6px;">
          <p style="color:#356">Add to cart</p>
        </div>

      </div>

    </div>



    <div style="border-radius: 1em;">
      <div>
        <img src="image/9.webp"
             style="width: 100%; height: 250px; border-top-left-radius:1em; border-top-right-radius:1em;">

      </div>

      <div class="text1">
        Men Solid<br> Drawstring Sweatpants
      </div>

      <div style="font-size: 15px ; padding-left: 1em; color: grey; text-decoration: line-through">
        150$
      </div>

      <div class="wrapper2-2">

        <div class="OffWrapper">
          98$
        </div>
        <div style="background: #356; text-align: center; padding-top: 6px; border-radius: 6px;">
          <p style="color: white">Add to cart</p>
        </div>

      </div>

    </div>


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



</body>

</html>
