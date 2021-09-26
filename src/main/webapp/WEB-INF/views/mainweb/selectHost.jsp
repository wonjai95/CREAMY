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
<title>selectHost</title>    
    
<style type="text/css">
	@font-face {
	    font-family: 'Wemakeprice-SemiBold';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/Wemakeprice-SemiBold.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	
	body {font-family: 'Wemakeprice-SemiBold';}
	.panel-heading { margin-bottom: 20px;}
	a:link {text-decoration: none;}
	h3 {font-size: 18px;}
	address {font-size: 14px;}
</style>
    
    
<script type="text/javascript" src="${path}/resources/host/js/selectHost.js"></script>
</head>
<body style="background: white">

    <div id="wrapper" >
        <div id="wrapper wrapper-content" class="gray-bg" style="min-height: 1000px;">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <form role="search" class="navbar-form-custom" action="search_results.html" style="margin-left: 20px;">
                <sec:csrfInput/>
                <div class="form-group">
                    <input type="text" placeholder="검색어 입력" class="form-control" name="top-search" id="top-search">
                </div>
            </form>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">Welcome to Creamy</span>
                </li>
                <li>
                    <a href="home">
                        <i class="fa fa-sign-out"></i> Home
                    </a>
                </li>
            </ul>

        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading" style="background:#1ab394; color: white">
                <div class="col-lg-9">
                    <h2 style="margin: 10px; margin-top: 20px;">매장 선택</h2>
                    <ol class="breadcrumb" style="margin: 10px; background:#1ab394; color: white">
                        <li class="breadcrumb-item">
                            <a href="home">Home</a>
                        </li>
                        <li class="breadcrumb-item active">
                            <strong>매장 목록</strong>
                        </li>
                    </ol>
                </div>
            </div>
            
        <!-- 본문 리스트 시작 -->
        <div class="wrapper wrapper-content animated fadeInRight" style="margin: 30px;">
	        <div class="row" id="hostList">
	        	<c:forEach var="dto" items="${dtos}">
		            <div class="col-lg-4">
		                <div class="contact-box">
		                    <a class="row" href="custBooking?host_code=${dto.host_code}&comp_address=${dto.comp_address}&com_res=${dto.com_res}" 
		                    	style="justify-content: center;">
			                    <div class="col-8" style="text-align: center;">
			                        <h3><strong>${dto.comp_name}</strong></h3>
			                        <p>${dto.host_name}</p>
			                        <address>
			                           <i class="fa fa-map-marker"></i> <strong>${dto.comp_address}</strong><br>
			                                                                      우편번호 : ${dto.zipcode}<br>
			                            	전화 : ${dto.host_ph}<br>
			                        </address>
			                    </div>
		                    </a>
		                </div>
		            </div>
	            </c:forEach>
  			</div>
  		</div>
  	</div>
</div>  

          
                      
<!-- Mainly scripts -->
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>


</body>
</html>