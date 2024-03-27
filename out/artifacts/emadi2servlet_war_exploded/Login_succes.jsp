<%--
  Created by IntelliJ IDEA.
  User: nima8
  Date: 11/30/2020
  Time: 7:26 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="textcss.css" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@ page import="java.sql.*" %>
<%
    HttpSession session1=request.getSession();
    session1.setAttribute("NowLogin",true);
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    String phone=null;

    try {

        Class.forName("com.mysql.jdbc.Driver").newInstance();
        String url = "jdbc:mysql://localhost:3306/servlet?user=root";
        Connection conect = DriverManager.getConnection(url);
        Statement state = conect.createStatement();
        String query = "select * from register";
        ResultSet result = state.executeQuery(query);
        while (result.next()) {
            String user = result.getString(1);
            String pass = result.getString(2);
            if (user.equals(email) && pass.equals(password)) {
                phone=result.getString(3);
            }
        }
        conect.close();
        state.close();


    } catch (IllegalAccessException | InstantiationException | ClassNotFoundException | SQLException e) {
        e.printStackTrace();

    }

%>
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
                <li><a href="#" class="hover" style="color: green">Loged in</a></li>
                <li><a href="Register.jsp" class="hover">Register</a></li>
                <li><a href="Contactus.jsp" class="hover">Contact Us</a></li>
                <%

                    boolean value= (boolean) session1.getAttribute("NowLogin");

                %>
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


<div style="text-align: center; ">
    <h1 style="color: white;padding-top: 1em">Welcome</h1>

</div>
<div style="position: relative; display: grid; grid-template-columns: 1fr 1fr 1fr; grid-auto-rows: 350px; padding-top: 2em;" >
    <div>

    </div>

    <div style="background: #356">

        <h3 style="margin-top: 3em;margin-left: 7em">Email: <% out.println(email);%></h3>
        <br>
        <br>
        <h3><label style="margin-top: 2em;margin-left: 7em">password: <% out.println(password);%></label></h3>
        <br>
        <br>
        <h3><label style="margin-top: 2em;margin-left: 7em">Phone: <% out.println(phone);%></label></h3>


    </div>

    <div>

    </div>

</div>




</body>
</html>
