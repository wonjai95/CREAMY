<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>INSPINIA | Data Tables</title>

<link href="${path}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${path}/resources/bootstrap/css/font-awesome.css" rel="stylesheet">
<link href="${path}/resources/bootstrap/css/summernote-bs4.css" rel="stylesheet">
                            
<link href="${path}/resources/bootstrap/css/datepicker3.css" rel="stylesheet">
                            
<link href="${path}/resources/bootstrap/css/animate.css" rel="stylesheet">
<link href="${path}/resources/bootstrap/css/style.css" rel="stylesheet">

</head>
<body style="background-color:white;">
	
<!-- Main -->
<div class="row">
    <div class="col-lg-12">
        <div class="ibox ">
            <div class="ibox-title"  style="padding:10px 21px;">
                <h4 style="display:inline-block;">회원정보</h4>
                	<!-- form태그 밖에서 submit를 하기 위한 방법 -->
                	<!-- 2. form에 지정한 id를 button의 form태그에 넣어주면 된다. -->
                		<div class="button-wrap" style="display:inline-block; float:right;">
							<button class="btn btn-primary btn-sm" type="submit" form="modify">수정</button>
							<button class="btn btn-white btn-sm" type="button" onclick="window.close();">취소</button>
						</div>
	           		<!-- 
	                <div class="ibox-tools">
	                    <a class="collapse-link">
	                        <i class="fa fa-chevron-up"></i>
	                    </a>
	                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
	                        <i class="fa fa-wrench"></i>
	                    </a>
	                    <ul class="dropdown-menu dropdown-user">
	                        <li><a href="#" class="dropdown-item">Config option 1</a>
	                        </li>
	                        <li><a href="#" class="dropdown-item">Config option 2</a>
	                        </li>
	                    </ul>
	                    <a class="close-link">
	                        <i class="fa fa-times"></i>
	                    </a>
	                </div>
	                -->
	            </div>
	            
	            <!-- 직원 정보 -- 시작 -->
	            <div class="ibox-content">
	            	<!-- 1. form태그에 id 지정하기 -->
	                <form method="get" id="modify">
	                	<table class="table">
				           
				            <tbody>
				            <tr class="" style="border-top:1px solid;">
				                <td>직원코드</td>
				                <td><input type="text" value="E1"></td>
				                <td>부서</td>
				                <td><input type="text" value="회계"></td>
				            </tr>
				            <tr class="">
				                <td>직원ID</td>
				                <td><input type="text" value="test"></td>
				                <td>직책</td>
				                <td><input type="text" value="신입"></td>
				            </tr>
				            <tr class="">
				                <td>직원이름</td>
				                <td><input type="text" value="정원제"></td>
				                <td>직위</td>
				                <td><input type="text" value="신입"></td>
				            </tr>
				            <tr class="">
				                <td>성별</td>
				                <td><input type="text" value="남"></td>
				                <td>직무</td>
				                <td><input type="text" value="잡일"></td>
				            </tr>
				            <tr class="">
				                <td>나이</td>
				                <td><input type="text" value="27"></td>
				                <td>고용형태</td>
				                <td><input type="text" value="계약직"></td>
				            </tr>
				            
				            <tr class="">
				                <td>입사날짜</td>
				                <td><input type="date" value="2021-09-16"></td>
				                <td class="center">퇴사날짜</td>
				                <td><input type="date" value="27"></td>
				            </tr>
				            </tbody>
				         
				          </table>
							<div class="form-group row">
								<div class="col-sm-4 col-sm-offset-2">
							</div>
	                    </div>
	                </form>
	            </div>
            
            <!-- 직원 정보 -- 끝 -->
            
            <!-- 근태 / 휴가 / 급여 -- 시작 -->
            <div class="wrapper wrapper-content animated fadeInRight ecommerce" style="padding:12px 0px 12px 20px;">

            <div class="row">
                <div class="col-lg-12">
                    <div class="tabs-container">
                            <ul class="nav nav-tabs">
                                <li><a class="nav-link active" data-toggle="tab" href="#tab-1"> 근태 </a></li>
                                <li><a class="nav-link" data-toggle="tab" href="#tab-2"> 휴가 </a></li>
                                <li><a class="nav-link" data-toggle="tab" href="#tab-3"> 급여 계약 </a></li>
                                <li><a class="nav-link" data-toggle="tab" href="#tab-4"> 급여 지급 </a></li>
                            </ul>
                            <div class="tab-content">
                            
                            <!-- 근태 시작 -->
							<div id="tab-1" class="tab-pane active">
							   <div class="panel-body">
							   
							    	<!-- 월선택 달력!!! -->
									<div class="form-group" id="data_4" style="width:13%; margin-bottom:10px; display:inline-block;">
									    <div class="input-group date">
									      <input type="month" class="form-control" value="07/01/2014" style="width:auto;">
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
			                                    <th style="width:9%;">시간</th>
			                                    <th style="width:9%;">구분</th>
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
			                                <tr>
			                                    <td>21</td>
			                                    <td>14:12</td>
			                                    <td>출근</td>
			                                    <td>지각</td>
			                                    <td></td>
			                                    <td></td>
			                                    <td>O</td>
			                                    <td>X</td>
			                                    <td>X</td>
			                                    <td>X</td>
			                                </tr>
			                                <tr>
			                                    <td>21</td>
			                                    <td>14:12</td>
			                                    <td>출근</td>
			                                    <td>지각</td>
			                                    <td></td>
			                                    <td></td>
			                                    <td>O</td>
			                                    <td>X</td>
			                                    <td>X</td>
			                                    <td>X</td>
			                                </tr>
			                                <tr>
			                                    <td>21</td>
			                                    <td>14:12</td>
			                                    <td>출근</td>
			                                    <td>지각</td>
			                                    <td></td>
			                                    <td></td>
			                                    <td>O</td>
			                                    <td>X</td>
			                                    <td>X</td>
			                                    <td>X</td>
			                                </tr>
			                                </tbody>
			                            </table>
							       </fieldset>
							   </div>
							</div>
							<!-- 근태 탭 끝 -->
                                
                                <!-- 휴가탭 시작 -->
                                <div id="tab-2" class="tab-pane">
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
				                                <tr>
				                                    <td>● 연차</td>
				                                    <td>승인</td>
				                                    <td>2021-09-21</td>
				                                    <td>2020-09-25</td>
				                                    <td>4</td>
				                                    <td>010-1111-1111</td>
				                                    <td>휴가</td>
				                                    <td>2021-09-20</td>
				                                </tr>
				                                <tr>
				                                    <td>● 연차</td>
				                                    <td>승인</td>
				                                    <td>2021-09-13</td>
				                                    <td>2020-09-14</td>
				                                    <td>1</td>
				                                    <td>010-1111-1111</td>
				                                    <td></td>
				                                    <td>2021-09-20</td>
				                                </tr>
				                                <tr>
				                                    <td>● 연차</td>
				                                    <td>승인</td>
				                                    <td>2021-09-13</td>
				                                    <td>2020-09-14</td>
				                                    <td>1</td>
				                                    <td>010-1111-1111</td>
				                                    <td></td>
				                                    <td>2021-09-20</td>
				                                </tr>
				                                </tbody>
				                            </table>
								       </fieldset>
                                    </div>
                                </div>
                                <!-- 휴가 탭 끝 -->
                                
                                <!-- 급여 계약 시작 -->
                                <div id="tab-3" class="tab-pane">
                                    <div class="panel-body">

                                        <!-- 월선택 달력!!! -->
										<div class="round-btn" style="text-align:right; margin-bottom:10px;">
											<a class="btn btn-default btn-rounded" href="#">수정</a>
											<a class="btn btn-default btn-rounded" href="#">삭제</a>
										</div>
										
								       <fieldset>
								           <table class="table table-bordered" style="font-size:12px; text-align:center;">
				                                <thead>
				                                <tr>
				                                	<!-- 여기 파트 보면 비타민에 사유가 있는데 기타메모에 합치는건 어떨까??? -->
				                                    <th style="width:15%;">적용 기간</th>
				                                    <th style="width:10%;">월급</th>
				                                    <th style="width:15%;">연봉</th>
				                                    <th style="width:10%;">지급일자</th>
				                                    <th style="width:20%;">은행 / 계좌번호</th>
				                                    <th style="width:30%;">기타메모</th>
				                                </tr>
				                                </thead>
				                                <tbody>
				                                <tr>
				                                    <td>2021-11-01 ~ 2022-10-31</td>
				                                    <td><fmt:formatNumber value="2000000" pattern="###,###,###"/></td>
				                                    <td><fmt:formatNumber value="24000000" pattern="###,###,###"/></td>
				                                    <td>매달 5일</td>
				                                    <td>국민은행 / 111-111-1111111</td>
				                                    <td>연봉 협상</td>
				                                </tr>
				                                <tr>
				                                    <td>2020-11-01 ~ 2021-10-31</td>
				                                    <td><fmt:formatNumber value="1500000" pattern="###,###,###"/></td>
				                                    <td><fmt:formatNumber value="18000000" pattern="###,###,###"/></td>
				                                    <td>매달 5일</td>
				                                    <td>국민은행 / 111-111-1111111</td>
				                                    <td>재계약</td>
				                                </tr>
				                                <tr>
				                                    <td>2019-11-01 ~ 2020-10-31</td>
				                                    <td><fmt:formatNumber value="1500000" pattern="###,###,###"/></td>
				                                    <td><fmt:formatNumber value="18000000" pattern="###,###,###"/></td>
				                                    <td>매달 5일</td>
				                                    <td>국민은행 / 111-111-1111111</td>
				                                    <td>신규</td>
				                                </tr>
				                                </tbody>
				                            </table>
								       </fieldset>
                                    </div>
                                </div>
                                <!-- 급여 계약 끝  -->
                                
                                <!-- 급여 지급 시작 -->
                                <div id="tab-4" class="tab-pane">
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
				                                    <th style="width:12%;">지급일자</th>
				                                    <th style="width:12%;">월분</th>
				                                    <th style="width:12%;">월급</th>
				                                    <th style="width:12%;">공제합계</th>
				                                    <th style="width:12%">차인지급액</th>
				                                    <th style="width:40%;">기타메모</th>
				                                </tr>
				                                </thead>
				                                <tbody>
				                                <tr>
				                                    <td>2021-09-05</td>
				                                    <td>2021년 08월분</td>
				                                    <td><fmt:formatNumber value="2000000" pattern="###,###,###"/></td>
				                                    <td><fmt:formatNumber value="200000" pattern="###,###,###"/></td>
				                                    <td><fmt:formatNumber value="1800000" pattern="###,###,###"/></td>
				                                    <td></td>
				                                </tr>
				                                <tr>
				                                    <td>2021-08-05</td>
				                                    <td>2021년 07월분</td>
				                                    <td><fmt:formatNumber value="2000000" pattern="###,###,###"/></td>
				                                    <td><fmt:formatNumber value="200000" pattern="###,###,###"/></td>
				                                    <td><fmt:formatNumber value="1800000" pattern="###,###,###"/></td>
				                                    <td></td>
				                                </tr>
				                                <tr>
				                                    <td>2021-07-05</td>
				                                    <td>2021년 06월분</td>
				                                    <td><fmt:formatNumber value="2000000" pattern="###,###,###"/></td>
				                                    <td><fmt:formatNumber value="200000" pattern="###,###,###"/></td>
				                                    <td><fmt:formatNumber value="1800000" pattern="###,###,###"/></td>
				                                    <td></td>
				                                </tr>
				                                </tbody>
				                            </table>
								       </fieldset>
                                    </div>
                                </div>
                                <!-- 급여 지급 끝 -->
                                
                            </div>
	                    </div>
	                </div>
	            </div>
        	</div>
        	<!-- 근태 / 휴가 / 급여 -- 끝 -->
        	
        </div>
    </div>
</div>
                            
</body>
</html>