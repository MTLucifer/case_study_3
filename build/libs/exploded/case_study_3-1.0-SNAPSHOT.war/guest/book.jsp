<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 06/11/2020
  Time: 14:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Moew Movie</title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>

        body {
            font-max-size: medium;
            margin: 25px;
            background-image: url("https://images.pexels.com/photos/242236/pexels-photo-242236.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
        }

        .navbar-new-top{
            background: #fff;
            font-max-size: medium;
            text-align: right;
        }
        .navbar-brand{
            font-max-size: medium;
            text-align: left;
        }
        .navbar-brand img{
            width: 28%;
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
        div.row {
            width: 80%;
            height: auto;
        }
        .contact{
            padding: 4%;
            height: 400px;
        }
        .col-sm-2 {
            width: 30%;
        }
        .col-md-3{
            background: #ff9b00;
            padding: 4%;
            border-top-left-radius: 0.5rem;
            border-bottom-left-radius: 0.5rem;
        }
        .contact-info{
            margin-top:10%;
        }
        .contact-info img{
            height: auto;
            margin-bottom: 15%;
        }
        .contact-info h2{
            margin-bottom: 10%;
        }
        .col-md-9{
            width: 60%;
            background: #fff;
            padding: 3%;
            border-top-right-radius: 0.5rem;
            border-bottom-right-radius: 0.5rem;
        }
        .contact-form label{
            font-weight:1000;
        }
        .contact-form button{
            background: #25274d;
            color: #fff;
            font-weight: 600;
            width: 25%;
        }
        .contact-form button:focus{
            box-shadow:none;
        }
    </style>
</head>
<body>
<nav class="navbar fixed-top navbar-expand-md flex-nowrap navbar-new-top">
    <a href="/" class="navbar-brand"><img src="https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/123608508_3490189617728244_1445112587532092340_n.jpg?_nc_cat=101&ccb=2&_nc_sid=730e14&_nc_ohc=ZacIWEjtzMoAX9JACG6&_nc_ht=scontent.fhan5-5.fna&oh=634cca097b945ceb8ec06f18d072dfea&oe=5FCFD1B9" alt=""/></a>
    <div style="font-size: medium;float: right">Đ/c: 136 Yên Lãng / 166 Ven Hồ Đắc Di/ 61, ngõ 82 Chùa Láng/ 30 An Hòa Hà Đông <br>SĐT: 02473 666 999</div>
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
                <a class="nav-link" href="/guest?action=list">Danh sách phim</a>
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
<center>
    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <form action="/guest?action=create" method="post">
    <div class="container contact">
        <div class="row">
            <div class="col-md-3">
                <div class="contact-info">
                    <img src="https://image.ibb.co/kUASdV/contact-image.png" alt="image"/>
                    <h2>Đặt phòng ngay nào!</h2>
                    <h4>Chúng tôi rất muốn được gặp bạn, nyan!</h4>
                </div>
            </div>
            <div class="col-md-9">
                <div class="contact-form">
                    <table>
                        <tr>
                            <th><label  for="phone">Số điện thoại</label></th>
                            <td><input type="text"  id="phone" placeholder="Nhập số điện thoại" name="phone"></td>
                        </tr>
                        <tr>
                            <th><br> </th>
                            <td> </td>
                        </tr>
                        <tr>
                           <th><label  for="name">Họ và tên:</label></th>
                            <td><input type="text"  id="name" placeholder="Nhập họ và tên" name="name"></td>
                        </tr>
                        <tr>
                            <th><br></th>
                            <td> </td>
                        </tr>
                        <tr>
                            <th><label  for="facility">Cơ sở muốn đặt phòng:</label></th>
                            <td><select type="text"  name="facility" id="facility">
                                <option value="Mỹ Đình">Mỹ Đình</option>
                                <option value="Ba Đình">Ba Đình</option>
                                <option value="Hà Đông">Hà Đông</option>
                                <option value="Từ Liêm">Từ Liêm</option>
                                <option value="Tràng Tiền">Tràng Tiền</option>
                            </select></td>
                        </tr>
                        <tr>
                            <th><br></th>
                            <td> </td>
                        </tr>
                    </table>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">Đặt phòng</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</center>
</body>
</html>
