<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 08/11/2020
  Time: 23:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <title>Moew Movie</title>
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
            <h1>Movies</h1>
            <p>
            <form method="post" action="/admin/movie?action=search">
                <input type="text" placeholder="Nhập tên phim" name="words">
                <input type="submit" value="Search">
            </form>
            </p>
            <table border="1">
                <tr>
                    <th>Name</th>
                    <th>Country</th>
                    <th>Imdb</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                <c:forEach items='${movies}' var="movie">
                    <tr>
                        <td>${movie.getName()}</td>
                        <td>${movie.getCountry()}</td>
                        <td>${movie.getImdb()}</td>
                        <td><a href="/admin/movie?action=edit&id=${movie.getId()}">edit</a></td>
                        <td><a href="/admin/movie?action=delete&id=${movie.getId()}">delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
<%--<center>--%>
<%--    <h1>Movies</h1>--%>
<%--    <p>--%>
<%--        <a href="/admin/movie?action=create" ><b>+</b>Tạo phim mới</a>--%>
<%--    </p>--%>
<%--    <p>--%>
<%--        <a href="/admin?action=create"><b>+</b>Tạo khách hàng mới</a>--%>
<%--    </p>--%>
<%--    <form method="get" action="/admin"><input type="submit" value="Back to customer list"></form>--%>
<%--    <p>--%>
<%--        <input type="text" name="search">--%>
<%--        <select name="choice">--%>
<%--            <option value="phone">Phone</option>--%>
<%--            <option value="name">Name</option>--%>
<%--            <option value="facility">Facility</option>--%>
<%--        </select>--%>
<%--        <a href="/guest?action=search"><input type="submit" value="Search"></a>--%>
<%--    </p>--%>
<%--    <table border="1">--%>
<%--        <tr>--%>
<%--            <th>Name</th>--%>
<%--            <th>Country</th>--%>
<%--            <th>Imdb</th>--%>
<%--            <th>Edit</th>--%>
<%--            <th>Delete</th>--%>
<%--        </tr>--%>
<%--        <c:forEach items='${movies}' var="movie">--%>
<%--            <tr>--%>
<%--                <td>${movie.getName()}</td>--%>
<%--                <td>${movie.getCountry()}</td>--%>
<%--                <td>${movie.getImdb()}</td>--%>
<%--                <td><a href="/admin/movie?action=edit&id=${movie.getId()}">edit</a></td>--%>
<%--                <td><a href="/admin/movie?action=delete&id=${movie.getId()}">delete</a></td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--    </table>--%>
<%--</center>--%>
</body>
</html>