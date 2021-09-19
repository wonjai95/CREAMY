<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>INSPINIA | Data Tables</title>

<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../bootstrap/css/font-awesome.css" rel="stylesheet">
<link href="../bootstrap/css/table/datatables.min.css" rel="stylesheet">

<link href="../bootstrap/css/animate.css" rel="stylesheet">
<link href="../bootstrap/css/style.css" rel="stylesheet">

<style>
/* .ibox {
   float: left;
}

.tab-content{
   float: right;
} */

</style>
</head>
<body>
<div id="wrapper">

   <!-- frame  -->
   <jsp:include page="../Frame.jsp" />
   
<div id="page-wrapper" class="gray-bg">

   <!-- nav bar  -->
   <jsp:include page="../navbar.jsp" />

<!-- 상단 고정 -->
<div class="row wrapper border-bottom white-bg page-heading" style="margin-bottom: 20px;">
    <div class="col-lg-8">
        <h2>판매비와 관리비</h2>
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.html">Home</a>
            </li>
            <li class="breadcrumb-item">
                   회계
            </li>
            <li class="breadcrumb-item active">
                <strong>판매비와 관리비</strong>
            </li>
        </ol>
    </div>
</div>
<div class="row">
<!-- 매입매출전표 등록 부분 -->
<div class="col-lg-6 col-md-12">
    <div class="ibox" style="padding: 0;">
        <div class="ibox-content" >
            <h3>전표 입력</h3>
   
            <p class="small">
                            복리후생비,소모품비,수수료비용을 적어주세요.
            </p>
            
            <form>
            <div class="form-group" >
                <label>날짜</label>
                <input type="date" class="form-control">
            </div>
            
            <div class="form-group" >
                <label>유형</label>
                <br>
              <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
              <label class="btn btn-outline-success" for="btnradio1">복리후생비</label>
            
              <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
              <label class="btn btn-outline-success" for="btnradio2">소모품비</label>
            
              <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
              <label class="btn btn-outline-success" for="btnradio3">수수료비용</label>
            </div>
            
            <div class="form-group" >
                <label>금액</label>
                <input type="text" class="form-control" placeholder="금액을 입력해주세요.">
            </div>
            
            <div class="form-group" >
                <label>메모</label>
                <textarea class="form-control" placeholder="Your message" rows="3"></textarea>
            </div>
            <br>
            <button class="btn btn-primary btn-block">확인</button>
            <button class="btn btn-primary btn-block">취소</button>
         </form>
        </div>
    </div>
</div>
 
<!-- 리스트 부분 -->
<div class="col-lg-6 col-md-12">
    <div id="tab-1" class="ibox-content" style="">
        <div class="full-height-scroll">
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                   <thead>
                      <th>날짜</th>
                      <th>유형</th>
                      <th>금액</th>
                      <th>메모</th>
                   </thead>
                    <tbody>
                    <tr>
                        <td>9월 16일</td>
                        <td>복리후생비</td>
                        <td><fmt:formatNumber value="10000" pattern="###,###,###원" /></td>
                        <td>직원식사</td>
                    </tr>
                    <tr>
                        <td>9월 16일</td>
                        <td>소모품비</td>
                        <td><fmt:formatNumber value="25000" pattern="###,###,###원" /></td>
                        <td>필기구</td>
                    </tr>
                    <tr>
                        <td>9월 15일</td>
                        <td>복리후생비</td>
                        <td><fmt:formatNumber value="10000" pattern="###,###,###원" /></td>
                        <td>직원식사</td>
                    </tr>
                    <tr>
                        <td>9월 14일</td>
                        <td>복리후생비</td>
                        <td><fmt:formatNumber value="1000000" pattern="###,###,###원" /></td>
                        <td>직원 결혼식</td>
                    </tr>
                    <tr>
                        <td>9월 12일</td>
                        <td>소모품비</td>
                        <td><fmt:formatNumber value="30000" pattern="###,###,###원" /></td>
                        <td>전구</td>
                    </tr>
                    <tr>
                        <td>9월 12일</td>
                        <td>수수료비용</td>
                        <td><fmt:formatNumber value="10000" pattern="###,###,###원" /></td>
                        <td>택배</td>
                    </tr>
                    <tr>
                        <td>9월 11일</td>
                        <td>복리후생비</td>
                        <td><fmt:formatNumber value="10000" pattern="###,###,###원" /></td>
                        <td>직원식사</td>
                    </tr>
                    <tr>
                        <td>9월 10일</td>
                        <td>수수료비용</td>
                        <td><fmt:formatNumber value="20000" pattern="###,###,###원" /></td>
                        <td>택배</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</div>
</div>  
</div>
<!-- Mainly scripts -->
<script src="${path}/resources/bootstrap/js/moment.min.js"></script>
<script src="${path}/resources/bootstrap/js/jquery-3.1.1.min.js"></script>
<script src="${path}/resources/bootstrap/js/popper.min.js"></script>
<script src="${path}/resources/bootstrap/js/bootstrap.js"></script>
<script src="${path}/resources/bootstrap/js/jquery.metisMenu.js"></script>
<script src="${path}/resources/bootstrap/js/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="${path}/resources/bootstrap/js/inspinia.js"></script>
<script src="${path}/resources/bootstrap/js/pace.min.js"></script>

<!-- jQuery UI  -->
<script src="${path}/resources/bootstrap/js/jquery-ui.min.js"></script>

<!-- iCheck -->
<script src="${path}/resources/bootstrap/js/icheck.min.js"></script>

<!-- Full Calendar -->
<script src="${path}/resources/bootstrap/js/fullcalendar.min.js"></script>


</body>
</html>