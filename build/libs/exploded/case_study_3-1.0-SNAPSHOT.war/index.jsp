<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 05/11/2020
  Time: 22:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="static sun.misc.MessageUtils.out" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Meow Movie</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        #home_quicklinks {
            padding: 20px 0;
            text-align: center;
        }

        a.quicklink.link1 {
            background: #fc6719;
        }

        a.quicklink {
            display: inline-block;
            width: 302px;
            height: 173px;
            position: relative;
            margin: 90px 30px;
        }

        a.quicklink .ql_caption {
            display: block;
            height: 100%;
            width: 100%;
            position: relative;
        }

        .outer {
            display: table;
            position: relative;
            vertical-align: middle;
            text-align: center;
            height: 100%;
            width: 100%;
            border-spacing: 0px;
            padding: 0px;
        }

        .inner {
            display: table-cell;
            position: relative;
            vertical-align: middle;
            text-align: center;
            height: 100%;
            width: 100%;
            border-spacing: 0px;
            padding: 0px;
        }

        a.quicklink .ql_caption h2 {
            margin: 0px;
            padding: 0px;
            text-transform: uppercase;
            line-height: 1.46em;
            color: #fff;
        }

        a.quicklink.link1 .ql_top {
            border-bottom-color: #fc6719;
        }

        a.quicklink.link1 .ql_bottom {
            border-top-color: #fc6719;
        }


        .ql_top {
            bottom: 173px;
            border-bottom: 89px solid #ccc;
        }

        .ql_bottom {
            top: 173px;
            border-top: 89px solid #ccc;
        }

        .ql_top, .ql_bottom {
            position: absolute;
            left: 0px;
            width: 0px;
            border-left: 151px solid transparent;
            border-right: 151px solid transparent;
        }

        a.quicklink.link2 {
            background: crimson;
        }

        a.quicklink.link2 .ql_top {
            border-bottom-color: crimson;
        }

        a.quicklink.link2 .ql_bottom {
            border-top-color: crimson;
        }


        a.quicklink.link3 .ql_top {
            border-bottom-color: #bcbdc0;
        }

        a.quicklink.link3 .ql_bottom {
            border-top-color: #bcbdc0;
        }

        a.quicklink.link3 {
            background: #bcbdc0;
        }

        a.quicklink {
            font-size: 36px;
            font-weight: 500;
            text-decoration: none;
        }

        .hexagon {
            position: relative;
            width: 300px;
            height: 173.21px;
            margin: 86.60px 0;
            background-image: url(http://csshexagon.com/img/meow.jpg);
            background-size: auto 334.8632px;
            background-position: center;
            box-shadow: 0 0 20px rgba(0, 128, 192, 0.6);
            border-left: solid 5px #4a401c;
            border-right: solid 5px #4a401c;
        }

        .hexTop,
        .hexBottom {
            position: absolute;
            z-index: 1;
            width: 212.13px;
            height: 212.13px;
            overflow: hidden;
            -webkit-transform: scaleY(0.5774) rotate(-45deg);
            -ms-transform: scaleY(0.5774) rotate(-45deg);
            transform: scaleY(0.5774) rotate(-45deg);
            background: inherit;
            left: 38.93px;
            box-shadow: 0 0 20px rgba(0, 128, 192, 0.6);
        }

        /*counter transform the bg image on the caps*/
        .hexTop:after,
        .hexBottom:after {
            content: "";
            position: absolute;
            width: 290.0000px;
            height: 167.4315780649915px;
            -webkit-transform: rotate(45deg) scaleY(1.7321) translateY(-83.7158px);
            -ms-transform: rotate(45deg) scaleY(1.7321) translateY(-83.7158px);
            transform: rotate(45deg) scaleY(1.7321) translateY(-83.7158px);
            -webkit-transform-origin: 0 0;
            -ms-transform-origin: 0 0;
            transform-origin: 0 0;
            background: inherit;
        }

        .hexTop {
            top: -106.0660px;
            border-top: solid 7.0711px #4a401c;
            border-right: solid 7.0711px #4a401c;
        }

        .hexTop:after {
            background-position: center top;
        }

        .hexBottom {
            bottom: -106.0660px;
            border-bottom: solid 7.0711px #4a401c;
            border-left: solid 7.0711px #4a401c;
        }

        .hexBottom:after {
            background-position: center bottom;
        }

        .hexagon:after {
            content: "";
            position: absolute;
            top: 2.8868px;
            left: 0;
            width: 290.0000px;
            height: 167.4316px;
            z-index: 2;
            background: inherit;
        }
    </style>
</head>

<body>
<center>
    <h1><img
            src="https://scontent.fhan4-1.fna.fbcdn.net/v/t1.0-9/124620749_3489038231176716_5197807780277752878_n.jpg?_nc_cat=105&ccb=2&_nc_sid=730e14&_nc_ohc=Bkdp518H2jYAX_soaxL&_nc_ht=scontent.fhan4-1.fna&oh=c6533964262546724bd3ba706cfa6d16&oe=5FCF0927"
            alt=""/></h1>

    <form id="my_form" action="/guest" style="float: left; width: 50%">
        <a class="quicklink link1" href="javascript:{}" onclick="document.getElementById('my_form').submit(); return false;">
            <span class="ql_top"></span>
                                    <span class="ql_caption">
                                        <span class="outer">
                                            <span class="inner">
                                                <h2>Khách hàng</h2>
                                            </span>
                                        </span>
                                    </span>
        <span class="ql_bottom"></span>
        </a>
    </form>

    <a class="quicklink link2" href="admin/login.jsp">
                                    <span class="ql_caption">
                                        <span class="outer">
                                            <span class="inner">
                                                <h2>Nhân Viên</h2>
                                            </span>
                                        </span>
                                    </span>
        <span class="ql_top"></span>
        <span class="ql_bottom"></span>
    </a>
    <div class="clear"></div>
    </div>
</center>
<%--<center>--%>
<%--  <h2>Auto Refresh Header Example</h2>--%>
<%--  <%--%>
<%--    // Set refresh, autoload time as 5 seconds--%>
<%--    response.setIntHeader("Refresh", 5);--%>

<%--    // Get current time--%>
<%--    Calendar calendar = new GregorianCalendar();--%>
<%--    String am_pm;--%>

<%--    int hour = calendar.get(Calendar.HOUR);--%>
<%--    int minute = calendar.get(Calendar.MINUTE);--%>
<%--    int second = calendar.get(Calendar.SECOND);--%>

<%--    if(calendar.get(Calendar.AM_PM) == 0)--%>
<%--      am_pm = "AM";--%>
<%--    else--%>
<%--      am_pm = "PM";--%>
<%--    String CT = hour+":"+ minute +":"+ second +" "+ am_pm;--%>
<%--  %>--%>
<%--  <h1>${"Current Time: " + CT + "\n"}</h1>--%>
<%--</center>--%>

</body>
</html>
