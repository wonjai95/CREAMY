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


<div id="wrapper">

		<!-- frame  -->
		<jsp:include page="../Frame.jsp" />

		<div id="page-wrapper" class="gray-bg">

			<!-- nav bar  -->
			<jsp:include page="../navbar.jsp" />

			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-8">
					<h2>마이페이지</h2>
				</div>
			</div>


		<div class="fh-breadcrumb">

                <div class="fh-column">
                    <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;"><div class="full-height-scroll" style="overflow: hidden; width: auto; height: 100%;">
                        <ul class="list-group elements-list">
                            <li class="list-group-item">
                                <a class="nav-link" data-toggle="tab" href="#tab-1">
                                	내 정보
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a class="nav-link" data-toggle="tab" href="#tab-2">
                                	사업자 정보
                                </a>
                            </li>
                            <li class="list-group-item">
                                <a class="nav-link" data-toggle="tab" href="#tab-3">
                                	근무시간 설정
                                </a>
                            </li>
                        </ul>

                    </div><div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 625.03px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
                </div>

                <div class="full-height">
                    <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;"><div class="full-height-scroll white-bg border-left" style="overflow: hidden; width: auto; height: 100%;">

                        <div class="element-detail-box">

                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active show">
                                
	                                <div class="ibox-content">
			                            <h2>
			                            	마이페이지
			                            </h2>
		                                <p class="font-bold">마이페이지</p>
		                                
		                                <form role="form" id="form" novalidate="novalidate">
		                                    
		                                    <div class="form-group"><label>Email</label> <input type="email" placeholder="Enter email" class="form-control" required="" aria-required="true"></div>
		                                    <div class="form-group"><label>Password</label> <input type="password" placeholder="Password" class="form-control" name="password"></div>
		                                    <div class="form-group"><label>Url</label> <input type="text" placeholder="Enter email" class="form-control" name="url"></div>
		                                    <div class="form-group"><label>Number</label> <input type="text" placeholder="Enter email" class="form-control" name="number"></div>
		                                    <div class="form-group"><label>MinLength</label> <input type="text" placeholder="Enter email" class="form-control" name="min"></div>
		                                    <div class="form-group"><label>MaxLength</label> <input type="text" placeholder="Enter email" class="form-control" name="max"></div>
		                                   
		                                    <div>
		                                        <button class="btn btn-sm btn-primary m-t-n-xs" type="submit"><strong>Submit</strong></button>
		                                    </div>
		                                </form>
	                        		</div>
                                    

                                </div>

                                <div id="tab-2" class="tab-pane">
									<jsp:include page="./businessInfo.jsp" />	
                                </div>

                                <div id="tab-3" class="tab-pane">
                                    <jsp:include page="./timeSetting.jsp" />
                                </div>
                                
                            </div>

                        </div>

                    </div><div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 490.985px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
                </div>



            </div>

			
		</div>
	</div>


</body>
</html>