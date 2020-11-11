<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 08/11/2020
  Time: 12:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Moew Movie</title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        body {
            margin: 25px;
            background-image: url("https://images.pexels.com/photos/242236/pexels-photo-242236.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
        }

        div.body {
            width: 80%;

        }

        div.display {
            display: inline;

        }

        div.polaroid {
            float: left;
            width: 30%;
            background-color: white;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            margin-bottom: 50px;
            margin-right: 25px;
            height: 80%;
        }

        img {
            width: 100%;
            height: auto;
        }

        div.container {
            text-align: center;
            padding: 10px 20px;
            font-size: medium;
        }

        .navbar-new-top {
            background: #fff;
        }

        .navbar-brand {
            font-weight: 600;
        }

        .navbar-brand img {
            width: 28%;
            height: auto;
        }

        .navbar-new-top ul {
            margin-right: 9%;
        }

        .navbar-new-top ul li {
            margin-right: 8%;
        }

        .navbar-new-bottom {
            background-color: #f7f7f7;
            box-shadow: 0 5px 6px -2px rgba(0, 0, 0, .3);
            border-top: 1px solid #e0e0e0;
            margin-top: 4%;
            height: 40px;
        }

        .navbar-new-bottom ul li {
            margin-left: 2%;
            margin-right: 2%;
        }

        .navbar-nav .nav-item a {
            color: #333;
            font-size: 14px;
            font-weight: 600;
            transition: 1s ease;
        }

        .navbar-nav .nav-item a:hover {
            color: #0062cc;
        }

    </style>
</head>
<body>
<nav class="navbar fixed-top navbar-expand-md flex-nowrap navbar-new-top">
    <a href="/" class="navbar-brand"><img
            src="https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/123608508_3490189617728244_1445112587532092340_n.jpg?_nc_cat=101&ccb=2&_nc_sid=730e14&_nc_ohc=ZacIWEjtzMoAX9JACG6&_nc_ht=scontent.fhan5-5.fna&oh=634cca097b945ceb8ec06f18d072dfea&oe=5FCFD1B9"
            alt=""/></a>
    <div style="font-size: medium;float: right;text-align: right">Đ/c: 136 Yên Lãng / 166 Ven Hồ Đắc Di/ 61, ngõ 82 Chùa
        Láng/ 30 An Hòa Hà Đông <br>SĐT: 02473 666 999
    </div>
</nav>
<nav class="navbar fixed-top navbar-expand-md navbar-new-bottom">
    <div class="navbar-collapse collapse pt-2 pt-md-0" id="navbar2">

        <ul class="navbar-nav w-100 justify-content-center px-3">
            <li class="nav-item">
                <a class="nav-link" href="/guest?action=room">Giá phòng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/guest?action=food">Giá đồ ăn</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="guest/book.jsp">Đặt phòng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="guest/about.jsp">About us</a>
            </li>
        </ul>
    </div>
</nav>
<h1>1</h1>
<h1>2</h1>
<h5>2</h5>
<div class="nen">
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="/pic/banner1.jpg" alt="First slide" style="width: 50% ; height: 500px">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="/pic/banner2.jpg" alt="Second slide" style="width: 50% ; height: 500px">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="/pic/banner3.jpg" alt="Third slide" style="width: 50%; height: 500px">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<center>
    <div class="body">
        <h1>Danh sách phim</h1>
        <div>
            <p class="right">
            <form method="post" action="/guest?action=search">
                <input type="text" placeholder="Nhập tên phim" name="words">
                <input type="submit" value="Search">
            </form>
            </p>
<%--            <p class="right"><label>Thể loại</label>--%>
<%--                <select name="choice">--%>
<%--                    <option value="1">Tội phạm</option>--%>
<%--                    <option value="2">Lịch sử</option>--%>
<%--                    <option value="3">Chiến tranh</option>--%>
<%--                    <option value="4">Khoa học viễn tưởng</option>--%>
<%--                    <option value="5">Thể thao</option>--%>
<%--                    <option value="6">Western</option>--%>
<%--                    <option value="7">Kiếm hiệp</option>--%>
<%--                    <option value="8">Cổ trang</option>--%>
<%--                    <option value="9">Hành động</option>--%>
<%--                    <option value="10">Phiêu lưu</option>--%>
<%--                    <option value="11">Bí ẩn</option>--%>
<%--                    <option value="12">Hài</option>--%>
<%--                    <option value="13">Kinh dị</option>--%>
<%--                    <option value="14">Giật gân</option>--%>
<%--                    <option value="15">Kỳ ảo</option>--%>
<%--                    <option value="16">Drama</option>--%>
<%--                    <option value="17">Lãng mạn</option>--%>
<%--                    <option value="18">Hoạt hình</option>--%>
<%--                    <option value="19">Tài liệu</option>--%>
<%--                    <option value="20">Ca nhạc</option>--%>
<%--                    <option value="21">Anime</option>--%>
<%--                </select>--%>
<%--                <a href="/guest?action=check"><input type="submit" value="Check"></a>--%>
<%--            </p>--%>
        </div>
        <div class="display">
            <c:forEach items='${requestScope["guest"]}' var="movie">
                <div class="polaroid">
                    <a href="/guest?action=view&id=${movie.getId()}"><img src="${movie.getPoster()}.jpg" sizes="100*80"></a>
                    <div class="container">
                        <p>${movie.getName()}</p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</center>
</body>
</html>
