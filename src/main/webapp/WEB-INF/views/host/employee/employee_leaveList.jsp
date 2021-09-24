<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 휴가탭 시작 -->
<div id="tab-2" class="tab-pane active">
    <div class="panel-body">
    
	    <!-- 월선택 달력!!! -->
		<div class="form-group" id="data_4" style="width:13%; margin-bottom:10px; display:inline-block;">
			<div class="input-group date">
		 		 <input type="month" class="form-control" style="width:auto;">
		    </div>
		</div>
	
		<div class="round-btn" style="display:inline-block; float:right;">
			<a class="btn btn-default btn-rounded" href="#">수정</a>
			<a class="btn btn-default btn-rounded" href="#">삭제</a>
		</div>
	
		<fieldset>
		    <table class="table table-bordered" style="font-size:12px; text-align:center;">
				<thead>
					<tr>
						<!-- 여기 파트 보면 비타민에 사유가 있는데 기타메모에 합치는건 어떨까??? -->
						<th style="width:7%;">구분</th>
						<th style="width:7%;">상태</th>
						<th style="width:9%;">시작일자</th>
						<th style="width:9%;">종료일자</th>
						<th style="width:6%">사용일수</th>
						<th style="width:10%;">비상연락망</th>
						<th>기타메모</th>
						<th style="width:9%;">신청일자</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="list2" items="${leaveList}">
						<tr>
						    <td>● 연차</td>
						    <td>승인</td>
						    <td>${list2.leave_date}</td>
							<td>${list2.leave_end}</td>
							<td>${list2.leave_usage_cnt}</td>
							<td>${list2.emergency_contact}</td>
							<td>${list2.leave_memo}</td>
							<td>${list2.leave_regDatae}</td>
						</tr>
					</c:forEach>
	            </tbody>
	       </table>
		</fieldset>
    </div>
</div>
<!-- 휴가 탭 끝 -->
</body>
</html>