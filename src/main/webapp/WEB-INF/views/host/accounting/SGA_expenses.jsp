<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<title>SGA_expenses</title>

<style>
	label {
		margin-bottom: 10px;
	}
	
	.form-group {
		margin-bottom: 30px;
	}
	
	.btn-block {
		margin-top: -10px;
	}

</style>
<script type="text/javascript" src="${path}/resources/host/js/SGA_expenses.js"></script>
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
                <a href="home">Home</a>
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
<div class="col-lg-6 col-md-12" style="width: 30%;">
    <div class="ibox" style="padding: 0; ">
        <div class="ibox-content">
            <h3 style="font-size:20px;">전표 입력</h3>
   			<hr>
            <p class="small">
                            복리후생비,소모품비,수수료비용을 적어주세요.
            </p>
            
            <form id="SGAform">
            	<sec:csrfInput/>
	            <div class="form-group" >
	                <label>날짜</label>
	                <input type="date" class="form-control" name="slip_regDate" style="width: 40%;" required>
	            </div>
	            
	            <div class="form-group" >
	                <label>유형</label><br>
	              <input type="button" class="btn btn-outline btn-primary" name="slip_type1" id="slip_type1" value="복리후생비">
	              <input type="button" class="btn btn-outline btn-primary" name="slip_type2" id="slip_type3" value="소모품비">
	              <input type="button" class="btn btn-outline btn-primary" name="slip_type3" id="slip_type4" value="수수료비용">
	              <input type="text" style="display: none" name="slip_type" id="slip_type">
	            </div>
	            
	            <div class="form-group" >
	                <label>금액</label>
	                <input type="text" class="form-control" name="slip_money" style="width: 40%;" placeholder="금액을 입력해주세요." required>
	            </div>
	            
	            <div class="form-group" >
	                <label>메모</label>
	                <textarea class="form-control" name="slip_memo" style="width: 80%;" placeholder="판매비와 관리비 내용" rows="3" required></textarea>
	            </div>
	            <br>
	            <input type="button" class="btn btn-primary btn-block" id="insertSGA" value="등록">
	            <input type="reset" class="btn btn-primary btn-block" value="취소">
         </form>
        </div>
    </div>
</div>
 
<!-- 리스트 부분 -->
<div class="col-lg-6 col-md-12" style="width: 70%;">
	<div class="ibox" style="padding: 0;">
   		 <div class="ibox-content" style="height: auto; ">
            <div class="row">
               <div class="col-sm-5 m-b-xs" style="width: 30%; ">
               		<select class="form-control-sm form-control input-s-sm inline"  style="width: 80%; ">
                   <option value="복리후생비">복리후생비</option>
                   <option value="수수료비용">수수료비용</option>
                   <option value="소모품비">소모품비</option>
               </select>
               </div>
               <div class="col-sm-4 m-b-xs" style="width: 30%; ">
                   <div class="btn-group btn-group-toggle" data-toggle="buttons">
                       <label class="btn btn-sm btn-white ">
                           <input type="radio" name="options" id="option1" autocomplete="off" checked> Day
                       </label>
                       <label class="btn btn-sm btn-white active">
                           <input type="radio" name="options" id="option2" autocomplete="off"> Week
                       </label>
                       <label class="btn btn-sm btn-white">
                           <input type="radio" name="options" id="option3" autocomplete="off"> Month
                       </label>
                   </div>
               </div>
               <div class="col-sm-3" style="width: 40%; ">
                   <div class="input-group"><input placeholder="Search" type="text" class="form-control form-control-sm"> <span class="input-group-append"> 
                   		<input type="button" class="btn btn-sm btn-primary" value="검색">
                    </span></div>

               </div>
           </div>
           <div class="table-responsive">
                <table class="table table-bordered">
                   <thead>
                      <th>날짜</th>
                      <th>유형</th>
                      <th>금액</th>
                      <th>메모</th>
                   </thead>
                    <tbody>
                    <c:forEach var="dto" items="${dtos}" varStatus="status">
	                    <tr>
	                        <td>${dto.slip_regDate}</td>
	                        <td>${dto.slip_type}</td>
	                        <td><fmt:formatNumber value="${dto.slip_money}" pattern="###,###,###원" /></td>
	                        <td>${dto.slip_memo}</td>
	                    </tr>
                    </c:forEach>
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