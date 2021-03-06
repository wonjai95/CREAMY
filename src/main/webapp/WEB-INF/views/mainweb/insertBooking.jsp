<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | Dashboard v.4</title>

   <link href="${path}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${path}/resources/bootstrap/css/font-awesome.css" rel="stylesheet">

    <link href="${path}/resources/bootstrap/css/iCheck/custom.css" rel="stylesheet">

    <link href="${path}/resources/bootstrap/css/fullcalendar.css" rel="stylesheet">
    <link href="${path}/resources/bootstrap/css/fullcalendar.print.css" rel='stylesheet' media='print'>

    <link href="${path}/resources/bootstrap/css/animate.css" rel="stylesheet">
    <link href="${path}/resources/bootstrap/css/style.css" rel="stylesheet">

   <style type="text/css">
      table {
         border-collapse: separate;
         border-spacing: 0 20px;
      }
      
      .panel-heading {
         margin-bottom: 20px;
      }
   
   </style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a24a16f3acffb8fc1ba508e3c65e6c76&libraries=services"></script>
<script type="text/javascript" src="${path}/resources/host/js/custBooking.js"></script>
</head>

<body class="top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom white-bg">
        <nav class="navbar navbar-expand-lg navbar-static-top" role="navigation">
            <!--<div class="navbar-header">-->
                <!--<button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">-->
                    <!--<i class="fa fa-reorder"></i>-->
                <!--</button>-->
            <a href="#" class="navbar-brand">CREAMY</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-reorder"></i>
            </button>
        </nav>
        </div>    
       
        <!-- ??????????????? ????????????, -->
		<c:if test="${insertCnt == 0}">
			<script type="text/javascript">
				alert("????????? ??????????????????. ?????? ?????? ??????????????????.");
			</script>
		</c:if>
		
		<!-- ??????????????? ???????????????, -->
		<c:if test="${insertCnt != 0}">
			<script type="text/javascript">
				alert("??????????????? ?????????????????????.");	
				window.location='mypage';
			</script>
		</c:if>

        
        
        
        </div>
     </div>
</body>

</html>