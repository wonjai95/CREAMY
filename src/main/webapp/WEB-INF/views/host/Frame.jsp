<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Creamy_home</title>

    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../bootstrap/css/font-awesome.css" rel="stylesheet">

    <link href="../bootstrap/css/iCheck/custom.css" rel="stylesheet">

    <link href="../bootstrap/css/fullcalendar.css" rel="stylesheet">
    <link href="../bootstrap/css/fullcalendar.print.css" rel='stylesheet' media='print'>

    <link href="../bootstrap/css/animate.css" rel="stylesheet">
    <link href="../bootstrap/css/style.css" rel="stylesheet">

</head>

<body>
<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav metismenu" id="side-menu">
            <li class="nav-header">
                <div class="dropdown profile-element">
                    <img alt="image" class="rounded-circle" src="../images/CRM/bootstrap/cat1.png" width="48px" height="48px"/>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="block m-t-xs font-bold">관리자이름자리</span>
                        <span class="text-muted text-xs block">회사명자리<b class="caret"></b></span>
                    </a>
                    <ul class="dropdown-menu animated fadeInRight m-t-xs">
                        <li><a class="dropdown-item" href="profile.html">Profile</a></li>
                        <li><a class="dropdown-item" href="contacts.html">Contacts</a></li>
                        <li><a class="dropdown-item" href="mailbox.html">Mailbox</a></li>
                        <li class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="login.html">Logout</a></li>
                    </ul>
                </div>
                <div class="logo-element">
                    IN+
                </div>
            </li>
            <li>
                <a href="home"><i class="fa fa-th-large"></i> <span class="nav-label">홈</span> <span class="fa arrow"></span></a>
            </li>
            <li>
                <a href="user"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">회원정보</span><span class="fa arrow"></span></a>
            </li>
            <li>
                <a href=""><i class="fa fa-edit"></i> <span class="nav-label">예약</span><span class="fa arrow"></span></a>
                  <ul class="nav nav-second-level collapse">
                    <li><a href="showReservation">예약 조회</a></li>
                    <li><a href="reservation">예약 요청</a></li>
                    <li><a href="modifyReservation">예약 수정</a></li>
                    <li><a href="insertReservation">예약 등록</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="fa fa-files-o"></i> <span class="nav-label">회계</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse">
                    <li><a href="Accounting">손익계산서</a></li>
                    <li><a href="SGA_expenses">판매비와 관리비</a></li>
                 </ul>
            </li>
            <li>
                <a href=""><i class="fa fa-globe"></i> <span class="nav-label">통계</span></a>
            </li>
            <li>
                <a href="product"><i class="fa fa-flask"></i> <span class="nav-label">상품</span><span class="fa arrow"></span></a>
            </li>
            <li>
               <a href="Employee"><i class="fa fa-table"></i> <span class="nav-label">직원</span><span class="fa arrow"></span></a>
            </li>
            <li>
                <a href=""><i class="fa fa-table"></i> <span class="nav-label">후기</span><span class="fa arrow"></span></a>
            </li>
        </ul>

    </div>
</nav>

<!-- Mainly scripts -->
<script src="../bootstrap/js/moment.min.js"></script>
<script src="../bootstrap/js/jquery-3.1.1.min.js"></script>
<script src="../bootstrap/js/popper.min.js"></script>
<script src="../bootstrap/js/bootstrap.js"></script>
<script src="../bootstrap/js/jquery.metisMenu.js"></script>
<script src="../bootstrap/js/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="../bootstrap/js/inspinia.js"></script>
<script src="../bootstrap/js/plugins/pace/pace.min.js"></script>

<!-- jQuery UI  -->
<script src="../bootstrap/js/jquery-ui.min.js"></script>

<!-- iCheck -->
<script src="../bootstrap/js/icheck.min.js"></script>

<!-- Full Calendar -->
<script src="../bootstrap/js/fullcalendar.min.js"></script>

</body>

</html>
