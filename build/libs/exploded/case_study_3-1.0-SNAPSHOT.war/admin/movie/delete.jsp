<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 08/11/2020
  Time: 23:22 PM
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
    <style>
        @import url(http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css);

        body {
            margin-top: 20px;
        }

        .fa-fw {
            width: 2em;
        }
        form.fix {
            padding: 10px 10px 10px 15px;
            margin-bottom: 0px;
        }
        div.left {
            float: left;
            width: 70%;
            text-align: left;
            font-max-size: medium;
        }

        div.right {
            text-align: center;
            float: right;
            width: 30%;
        }

        img {
            width: 90%;
            height: auto;
            float: none;
        }

        iframe {
            width: 90%;
            height: 300px;
        }
        body {
            margin: 25px;
            /*background-image: url("https://images.pexels.com/photos/242236/pexels-photo-242236.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")*/
        }

        div.body {
            width: 80%;

        }

        p.right {
            float: right;
            width: 50%;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="/"><i class="fa fa-home fa-fw"></i>Home</a></li>
                <li ><form class="fix" id="list_customer" method="get" action="/admin"><a href="javascript:{}"
                                                                                          onclick="document.getElementById('list_customer').submit(); return false;">
                    <i class="fa fa-list-alt fa-fw"></i>List Customer</a></form></li>
                <li ><form class="fix" id="list_movie" method="get" action="/admin/movie"><a href="javascript:{}"
                                                                                             onclick="document.getElementById('list_movie').submit(); return false;">
                    <i class="fa fa-list-alt fa-fw"></i>List Movie</a></form></li>
                <li><a href="/admin?action=create"><i class="fa fa-pencil fa-fw"></i>Create Customer</a>
                </li>
                <li><a href="/admin/movie?action=create"><i class="fa fa-pencil fa-fw"></i>Create Movie</a>
                </li>
            </ul>
        </div>
        <div class="col-md-9 well">
            <h3>Are you sure?</h3>
            <form method="post">

                    <h1>Thông tin phim cụ thể</h1>
                    <div class="left">
                        <p>Tên phim: ${requestScope["movies"].getName()}</p>
                        <p>Nguồn gốc: ${requestScope["movies"].getCountry()}</p>
                        <p>IMDB: ${requestScope["movies"].getImdb()}</p>
                        <p>Mô tả: <br>${requestScope["movies"].getDescription()}</p>
                        <p>Trailer:</p>
                        <iframe src="https://www.youtube.com/embed/${requestScope["movies"].getTrailer()}" frameborder="0"
                                allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                            Trailer
                        </iframe>
                    </div>
                    <div class="right">
                        <div><img src="${requestScope["movies"].getPoster()}.jpg"></div>
                        <center><input type="submit" value="Delete Movie"></center>
                    </div>

            </form>
        </div>
    </div>
</div>
</body>
</html>
