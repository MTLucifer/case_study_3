<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/11/2020
  Time: 9:41 AM
  To change this template use File | Settings | File Templates.
--%>
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
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
    <style>
        body {
            font-family: 'Roboto';font-size: 16px;
        }

        .aboutus-section {
            padding: 90px 0;
        }
        .aboutus-title {
            font-size: 30px;
            letter-spacing: 0;
            line-height: 32px;
            margin: 0 0 39px;
            padding: 0 0 11px;
            position: relative;
            text-transform: uppercase;
            color: #000;
        }
        .aboutus-title::after {
            background: #fdb801 none repeat scroll 0 0;
            bottom: 0;
            content: "";
            height: 2px;
            left: 0;
            position: absolute;
            width: 54px;
        }
        .aboutus-text {
            color: #606060;
            font-size: 13px;
            line-height: 22px;
            margin: 0 0 35px;
        }

        a:hover, a:active {
            color: #ffb901;
            text-decoration: none;
            outline: 0;
        }
        .aboutus-more {
            border: 1px solid #fdb801;
            border-radius: 25px;
            color: #fdb801;
            display: inline-block;
            font-size: 14px;
            font-weight: 700;
            letter-spacing: 0;
            padding: 7px 20px;
            text-transform: uppercase;
        }
        .feature .feature-box .iconset {
            background: #fff none repeat scroll 0 0;
            float: left;
            position: relative;
            width: 18%;
        }
        .feature .feature-box .iconset::after {
            background: #fdb801 none repeat scroll 0 0;
            content: "";
            height: 150%;
            left: 43%;
            position: absolute;
            top: 100%;
            width: 1px;
        }

        .feature .feature-box .feature-content h4 {
            color: #0f0f0f;
            font-size: 18px;
            letter-spacing: 0;
            line-height: 22px;
            margin: 0 0 5px;
        }


        .feature .feature-box .feature-content {
            float: left;
            padding-left: 28px;
            width: 78%;
        }
        .feature .feature-box .feature-content h4 {
            color: #0f0f0f;
            font-size: 18px;
            letter-spacing: 0;
            line-height: 22px;
            margin: 0 0 5px;
        }
        .feature .feature-box .feature-content p {
            color: #606060;
            font-size: 13px;
            line-height: 22px;
        }
        .icon {
            color : #f4b841;
            padding:0px;
            font-size:40px;
            border: 1px solid #fdb801;
            border-radius: 100px;
            color: #fdb801;
            font-size: 28px;
            height: 70px;
            line-height: 70px;
            text-align: center;
            width: 70px;
        }
        }
        body {
            margin: 25px;
            background-image: url("https://images.pexels.com/photos/242236/pexels-photo-242236.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
        }

        img {
            width: auto;
            height: 500px;
        }

        .navbar-new-top{
            background: #fff;
        }
        .navbar-brand{
            font-weight: 600;
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
        .header-btn{
            width: 161%;
            border: none;
            border-radius: 1rem;
            padding: 8%;
            background: #0062cc;
            color: #fff;
            font-weight: 700;
            font-size: 13px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<nav class="navbar fixed-top navbar-expand-md flex-nowrap navbar-new-top">
    <a href="/" class="navbar-brand"><img src="https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/123608508_3490189617728244_1445112587532092340_n.jpg?_nc_cat=101&ccb=2&_nc_sid=730e14&_nc_ohc=ZacIWEjtzMoAX9JACG6&_nc_ht=scontent.fhan5-5.fna&oh=634cca097b945ceb8ec06f18d072dfea&oe=5FCFD1B9" alt=""/></a>
    <div style="font-size: medium;float: right;text-align: right">Đ/c: 136 Yên Lãng / 166 Ven Hồ Đắc Di/ 61, ngõ 82 Chùa Láng/ 30 An Hòa Hà Đông <br>SĐT: 02473 666 999</div>
</nav>
<nav class="navbar fixed-top navbar-expand-md navbar-new-bottom">
    <div class="navbar-collapse collapse pt-2 pt-md-0" id="navbar2">

        <ul class="navbar-nav w-100 justify-content-center px-3">
            <li class="nav-item">
                <a class="nav-link" href="/guest?action=room">Giá phòng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/guest?action=create">Đặt phòng</a>
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
<div style="width: 80%" class="container">
    <center>
        <div class="aboutus-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="aboutus">
                            <h2 class="aboutus-title">About Us</h2>
                            <p class="aboutus-text">Được thành lập vào tháng 24/8/2019 nhưng Meow Movie đã đạt có 4 cơ sở trên toàn Hà Nội bằng sự nỗ lực của toàn bộ nhân viên cùng sự yêu thích cảu khách hàng</p>
                            <p class="aboutus-text">Trang web được tạo ra bởi công ty thiết kế và phát triển website MTLucifer, một trong những nhà đầu tư của chuỗi cafe phim Meow Movie</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="aboutus-banner">
                            <img src="/pic/your-logo.png" alt="">
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-6 col-xs-12">
                        <div class="feature">
                            <div class="feature-box">
                                <div class="clearfix">
                                    <div class="iconset">
                                        <span class="glyphicon glyphicon-cog icon"></span>
                                    </div>
                                    <div class="feature-content">
                                        <h4>Work with heart</h4>
                                        <p>Với tinh thần phục vụ quý khách như những Hoàng Thượng. Moew Movie hy vọng có thể đem đến cho quý khách những giây phút đáng nhớ nhất</p>
                                    </div>
                                </div>
                            </div>
                            <div class="feature-box">
                                <div class="clearfix">
                                    <div class="iconset">
                                        <span class="glyphicon glyphicon-cog icon"></span>
                                    </div>
                                    <div class="feature-content">
                                        <h4>Reliable services</h4>
                                        <p>Với đội ngũ nhân viên được đào tạo bài bản, cơ sở vật chất luôn được cải thiện để luôn mang đến cho quy khách những dịch vụ tốt nhất</p>
                                    </div>
                                </div>
                            </div>
                            <div class="feature-box">
                                <div class="clearfix">
                                    <div class="iconset">
                                        <span class="glyphicon glyphicon-cog icon"></span>
                                    </div>
                                    <div class="feature-content">
                                        <h4>Great support</h4>
                                        <p>Chính vì vậy, sự ủng hộ của quý khách hàng chính là những gì chúng tôi mong đợi nhất, và để đạt được điều đó chúng tôi luôn cố gắng hết mình để có được sự ủng hộ của quý khách</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </center>
</div>
</body>
</html>
