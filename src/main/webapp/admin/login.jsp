<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 08/11/2020
  Time: 1:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <style>
        body {
            font-family: "Lato", sans-serif;
        }

        .sidenav {
            height: 100%;
            background-color: #000;
            overflow-x: hidden;
            padding-top: 20px;
        }


        .main {
            padding: 0px 10px;
        }

        @media screen and (max-height: 450px) {
            .sidenav {padding-top: 15px;}
        }

        @media screen and (max-width: 450px) {
            .login-form{
                margin-top: 10%;
            }
        }

        @media screen and (min-width: 768px){
            .main{
                margin-left: 40%;
            }

            .sidenav{
                width: 40%;
                position: fixed;
                z-index: 1;
                top: 0;
                left: 0;
            }

            .login-form{
                margin-top: 20%;
            }
            img {
                margin-top: 20%;
            }
            
        }

        .login-main-text{
            margin-top: 20%;
            padding: 60px;
            color: #fff;
        }

        .login-main-text h2{
            font-weight: 300;
        }

        .btn-black{
            background-color: #000 !important;
            color: #fff;
        }
    </style>
</head>
<body>
<div class="sidenav">
    <div class="login-main-text">
        <h3>Trang đăng nhập</h3>
        <p>Đăng nhập với tài khoản cho sẵn</p>
    </div>
</div>
<div class="main">
    <div class="col-md-6 col-sm-12">
        <img src="https://scontent.fhan5-5.fna.fbcdn.net/v/t1.0-9/123608508_3490189617728244_1445112587532092340_n.jpg?_nc_cat=101&ccb=2&_nc_sid=730e14&_nc_ohc=ZacIWEjtzMoAX9JACG6&_nc_ht=scontent.fhan5-5.fna&oh=634cca097b945ceb8ec06f18d072dfea&oe=5FCFD1B9" alt="">
        <div class="login-form">
            <form method="get" id="login-former" action="/admin">
                <div class="form-group">
                    <label>Người dùng</label>
                    <input type="text" id="username" class="form-control" placeholder="User Name">
                </div>
                <div class="form-group">
                    <label>Mật khẩu</label>
                    <input type="password" id="password" class="form-control" placeholder="Password">
                </div>
                <input type="submit" id="login-button" class="btn btn-black" value="Đăng nhập">
                <a href="/"><input type="button" class="btn btn-secondary" value="Trở lại trang chủ"></a>
            </form>
        </div>
    </div>
</div>
<script>
    const loginForm = document.getElementById("login-former");
    const loginButton = document.getElementById("login-button");

    loginButton.addEventListener("click", (e) => {
        e.preventDefault();
        const username = loginForm.username.value;
        const password = loginForm.password.value;

        if (username === "admin" && password === "admin") {
            window.location = "http://localhost:8080/admin";
        } else {
            alert("Kiểm tra lại tên người dùng hoặc mật khẩu");
            location.reload();
        }
    })
</script>
</body>
</html>
