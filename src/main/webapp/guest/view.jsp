<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 06/11/2020
  Time: 14:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta>
    <title>Moew Movie</title>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        div.left {
            float: left;
            width: 50%;
            text-align: left;
            font-max-size: medium;
        }

        div.right {
            float: right;
            width: 50%;
        }

        div.body {
            width: 80%;
        }

        img {
            width: 60%;
            height: auto;
            float: none;
        }

        iframe {
            width: 90%;
            height: 300px;
        }
        body {
            margin: 25px;
            background-image: url("https://images.pexels.com/photos/242236/pexels-photo-242236.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
        }

        div.body {
            width: 80%;

        }

        p.right {
            float: right;
            width: 50%;
        }

        .navbar-new-top{
            background: #fff;
        }
        .navbar-brand{
            font-weight: 600;
        }
        .navbar-brand img{
            width: 25%;
            height: auto;
        }
        .navbar-new-top ul{
            margin-right: 9%;
        }
        .navbar-new-top ul li{
            margin-right: 8%;
        }
        .navbar-new-bottom{
            background-color: #f7f7f7;
            box-shadow: 0 5px 6px -2px rgba(0,0,0,.3);
            border-top: 1px solid #e0e0e0;
            margin-top: 4%;
            height: 40px;
        }
        .navbar-new-bottom ul li{
            margin-left: 2%;
            margin-right: 2%;
        }
        .navbar-nav .nav-item a {
            color: #333;
            font-size: 14px;
            font-weight: 600;
            transition: 1s ease;
        }
        .navbar-nav .nav-item a:hover{
            color: #0062cc;
        }
    </style>
</head>
<body>
<nav class="navbar fixed-top navbar-expand-md flex-nowrap navbar-new-top" >
    <a href="/" class="navbar-brand"><img src="https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/123608508_3490189617728244_1445112587532092340_n.jpg?_nc_cat=101&ccb=2&_nc_sid=730e14&_nc_ohc=ZacIWEjtzMoAX9JACG6&_nc_ht=scontent.fhan5-5.fna&oh=634cca097b945ceb8ec06f18d072dfea&oe=5FCFD1B9" alt=""/></a>
    <div style="font-size: medium;float: right;text-align: right">Đ/c: 136 Yên Lãng / 166 Ven Hồ Đắc Di/ 61, ngõ 82 Chùa Láng/ 30 An Hòa Hà Đông <br>SĐT: 02473 666 999</div>
</nav>
<nav class="navbar fixed-top navbar-expand-md navbar-new-bottom">
    <div class="navbar-collapse collapse pt-2 pt-md-0" id="navbar2">

        <ul class="navbar-nav w-100 justify-content-center px-3">
            <li class="nav-item">
                <a class="nav-link" href="guest/room.jsp">Giá phòng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="guest/food.jsp">Giá đồ ăn</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="guest/book.jsp">Đặt phòng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/guest?action=list">Danh sách phim</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="guest/about.jsp">About us</a>
            </li>
        </ul>
    </div>
</nav>
<h2>1</h2>
<h5>2</h5>
<center>
    <div class="body">
        <h1>Thông tin phim cụ thể</h1>
        <div class="left" >
            <p>Tên phim: ${requestScope["movie"].getName()}</p>
            <p>Nguồn gốc: ${requestScope["movie"].getCountry()}</p>
            <p>IMDB: ${requestScope["movie"].getImdb()}</p>
            <p>Mô tả: <br>${requestScope["movie"].getDescription()}</p>
            <p>Trailer:</p>
            <iframe src="https://www.youtube.com/embed/${requestScope["movie"].getTrailer()}" frameborder="0"
                    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                Trailer
            </iframe>
        </div>

        <div class="right">
            <div><img src="${requestScope["movie"].getPoster()}.jpg"></div>
        </div>
    </div>
</center>
</body>
</html>
