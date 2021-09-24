<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태 목록 페이지</title>
</head>
<body>
<!-- 근태 시작 -->
<div id="tab-1" class="tab-pane active">
   <div class="panel-body">
	   
   	<!-- 월선택 달력!!! -->
	<div class="form-group" id="data_4" style="width:13%; margin-bottom:10px; display:inline-block;">
		<div class="input-group date">
			<input type="month" class="form-control" id="currentMonth" style="width:auto;">
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
		         <th style="width:5%;">일자</th>
		         <th style="width:9%;">출근시간</th>
		         <th style="width:9%;">퇴근시간</th>
		         <th style="width:9%;">기록</th>
		         <th>메모</th>
		         <th style="width:10%;">체온</th>
		         <th style="width:8%;">문진 여부</th>
		         <th style="width:9%;">확진자 접촉</th>
		         <th style="width:8%;">해외 방문</th>
		         <th style="width:8%;">집단 발병</th>
		     </tr>
		     </thead>
		     <tbody>
				<c:forEach var="list1" items="${attList}" varStatus="status">
		      	<tr>
		           <td><fmt:formatDate value="${list1.attendance_date}" pattern="dd" /></td>
		           <td>${list1.check_in_time}</td>
		           <td>
			           	<c:if test="${list1.check_out_time == '0'}">
			           		-
			           	</c:if>
			           	
			           	<c:if test="${list1.check_out_time != '0'}">
			           		${list1.check_out_time}
			           	</c:if>
		           </td>
		           <td>
			           	<c:if test="${list1.lateChk == '0'}">
			           		-
			           	</c:if>
			           	
			           	<c:if test="${list1.lateChk !=  '0'}">
			           		${list1.lateChk}
			           	</c:if>
		           </td>
		           <td>${list1.memo}</td>
		           <td>${list1.temperature}</td>
		           <td>
		           		<c:if test="${list1.examination_chk1 != null || list1.examination_chk2 != null || list1.examination_chk3 != null}">
		           			O
		           		</c:if>
		           		<c:if test="${list1.examination_chk1 == null || list1.examination_chk2 == null || list1.examination_chk3 == null}">
		           			X
		           		</c:if>
		           </td>
		           <td>${list1.examination_chk1}</td>
		           <td>${list1.examination_chk2}</td>
		           <td>${list1.examination_chk3}</td>
		       </tr>
               </c:forEach>
             </tbody>
          </table>
      </fieldset>
   </div>
</div>
<!-- 근태 탭 끝 -->
</body>
</html>