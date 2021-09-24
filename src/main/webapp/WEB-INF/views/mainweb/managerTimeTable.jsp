<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="_csrf" content="${_csrf.token}"/>
	<meta name="_csrf_header" content="${_csrf.headerName}"/>
    <title>bookingTimeTable.jsp</title>

   <style type="text/css">
      table {
         border-collapse: separate;
         border-spacing: 0 20px;
      }
      
      .panel-heading {
         margin-bottom: 20px;
      }
   
   </style>
<script type="text/javascript" src="${path}/resources/host/js/managerTimeTable.js"></script>
</head>

<body class="top-navigation">
	<div style="display:inline-block" id="managerTable">
		<c:forEach var="dto" items="${dtos}" varStatus="status">
			<button type="button" class="btn btn-outline btn-primary" class="managerBtn" id="managerBtn${status.index}" 
                 style="margin: 10px" value="${dto.employee_code}">${dto.employee_name}</button>
		</c:forEach>
	</div>
</body>

</html>