<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 08/11/2020
  Time: 23:21 PM
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
            <h1>Sửa thông tin phim</h1>
            <p>
                <c:if test='${requestScope["message"] != null}'>
                    <span class="message">${requestScope["message"]}</span>
                </c:if>
            <form  method="post">
                <fieldset>
                    <legend>Movie information</legend>
                    <table>
                        <tr>
                            <td>Name: </td>
                            <td><input type="text" name="name" id="name" value="${requestScope["movies"].getName()}"></td>
                        </tr>
                        <tr>
                            <td>Country: </td>
                            <td><select type="text" name="country_id" id="country_id" >
                                <option value="1">Việt Nam</option>
                                <option value="2">Mỹ</option>
                                <option value="3">Hàn Quốc</option>
                                <option value="4">Nhật Bản</option>
                                <option value="5">Anh</option>
                                <option value="6">Thái Lan</option>
                                <option value="7">Đức</option>
                                <option value="8">Úc</option>
                                <option value="9">Tây Ban Nha</option>
                                <option value="10">Trung Quốc</option>
                            </select></td>
                        </tr>
                        <tr>
                            <td>IMDB: </td>
                            <td><input type="text" name="imdb" id="imdb" value="${requestScope["movies"].getImdb()}"></td>
                        </tr>
                        <tr>
                            <td>Poster: </td>
                            <td><input type="text" name="poster" id="poster" value="${requestScope["movies"].getPoster()}"></td>
                        </tr>
                        <tr>
                            <td>Trailer: </td>
                            <td><input type="text" name="trailer" id="trailer" value="${requestScope["movies"].getTrailer()}"></td>
                        </tr>
                        <tr>
                            <td>Description: </td>
                            <td><textarea type="text" name="description" id="description" style="size: 200px" >${requestScope["movies"].getDescription()}</textarea></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Update movie"></td>
                        </tr>
                        <input type="hidden" name="id" value="${requestScope["movies"].getId()}">
                    </table>
                </fieldset>
            </form>
        </div>
    </div>
</div>
<%--<center>--%>
<%--    <h1>Sửa thông tin phim</h1>--%>
<%--    <p>--%>
<%--        <c:if test='${requestScope["message"] != null}'>--%>
<%--            <span class="message">${requestScope["message"]}</span>--%>
<%--        </c:if>--%>
<%--    </p>--%>
<%--    <form method="get" action="/admin"><input type="submit" value="Back to Customer list"></form>--%>
<%--    <p>--%>
<%--        <a href="/admin/movie">Back to movie list</a>--%>
<%--    </p>--%>
<%--    <form  method="post">--%>
<%--        <fieldset>--%>
<%--            <legend>Movie information</legend>--%>
<%--            <table>--%>
<%--                --%>
<%--                <tr>--%>
<%--                    <td>Name: </td>--%>
<%--                    <td><input type="text" name="name" id="name" value="${requestScope["movies"].getName()}"></td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td>Country: </td>--%>
<%--                    <td><select type="text" name="country_id" id="country_id" >--%>
<%--                        <option value="1">Việt Nam</option>--%>
<%--                        <option value="2">Mỹ</option>--%>
<%--                        <option value="3">Hàn Quốc</option>--%>
<%--                        <option value="4">Nhật Bản</option>--%>
<%--                        <option value="5">Anh</option>--%>
<%--                        <option value="6">Thái Lan</option>--%>
<%--                        <option value="7">Đức</option>--%>
<%--                        <option value="8">Úc</option>--%>
<%--                        <option value="9">Tây Ban Nha</option>--%>
<%--                        <option value="10">Trung Quốc</option>--%>
<%--                    </select></td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td>IMDB: </td>--%>
<%--                    <td><input type="text" name="imdb" id="imdb" value="${requestScope["movies"].getImdb()}"></td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td>Poster: </td>--%>
<%--                    <td><input type="text" name="poster" id="poster" value="${requestScope["movies"].getPoster()}"></td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td>Trailer: </td>--%>
<%--                    <td><input type="text" name="trailer" id="trailer" value="${requestScope["movies"].getTrailer()}"></td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td>Description: </td>--%>
<%--                    <td><textarea type="text" name="description" id="description" style="size: 200px" >${requestScope["movies"].getDescription()}</textarea></td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <td></td>--%>
<%--                    <td><input type="submit" value="Update movie"></td>--%>
<%--                </tr>--%>
<%--                <input type="hidden" name="id" value="${requestScope["movies"].getId()}">--%>
<%--            </table>--%>
<%--        </fieldset>--%>
<%--    </form>--%>
<%--</center>--%>
</body>
</html>
