<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 07/11/2020
  Time: 9:08 AM
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
                    <h1>Create new customer</h1>
                    <form method="post">
                        <fieldset>
                            <legend>Customer information</legend>
                            <table>
                                <tr>
                                    <td>Phone:</td>
                                    <td><input type="text" name="phone" id="phone"></td>
                                </tr>
                                <tr>
                                    <td>Name:</td>
                                    <td><input type="text" name="name" id="name"></td>
                                </tr>
                                <tr>
                                    <td>Facility:</td>
                                    <td><select type="text" name="facility" id="facility">
                                        <option value="Mỹ Đình">Mỹ Đình</option>
                                        <option value="Ba Đình">Ba Đình</option>
                                        <option value="Hà Đông">Hà Đông</option>
                                        <option value="Từ Liêm">Từ Liêm</option>
                                        <option value="Tràng Tiền">Tràng Tiền</option>
                                    </select></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><input type="submit" value="Create customer"></td>
                                </tr>
                            </table>
                        </fieldset>
                    </form>
                </div>
            </div>
</div>
</body>
</html>
