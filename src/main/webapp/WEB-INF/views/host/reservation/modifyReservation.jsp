<!-- 
이름 : 이시현
작성날짜 : 2021-09-16 ~ 2021-09-16 
회원으로부터 요청된 예약서비스를 받고 취합하여 관리하는 페이지
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="../../setting.jsp" %> --%>
<%@ include file="/WEB-INF/views/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title> 예약수정 </title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
<div id="wrapper">

	<!-- frame  -->
	<jsp:include page="../Frame.jsp" />
	
<div id="page-wrapper" class="gray-bg">

	<!-- nav bar  -->
	<jsp:include page="../navbar.jsp" />

<!-- ------------------------------- 중분류 '예약수정' 상단 흰색 표기란 시작 -->
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-8">
        <h2>예약수정</h2>
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="home">Home</a>
            </li>
            <li class="breadcrumb-item">
                예약
            </li>
            <li class="breadcrumb-item active">
                <strong>예약수정</strong>
            </li>
        </ol>
    </div>
</div>
<!-- ------------------------------- 중분류 '예약수정' 상단 흰색 표기란 끝 -->

<!-- ------------------------------- 테이블표 시작 전 '예약수정' 설명란 시작 -->
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row">
	    <div class="col-lg-12">
	    <div class="ibox ">
	        <div class="ibox-title">
	            <h5>예약수정을 진행합니다.</h5>
	            
	            &nbsp;&nbsp;&nbsp;
	            <button type="button" class="btn btn-primary btn-lg"
	            		onclick="modifyReservation"> 예약 수정
	            </button>
	            
	        </div>
<!-- ------------------------------- 테이블표 시작 전 '예약수정' 설명란 끝 -->

<!-- ------------------------------- 회원정보 시작 -->
<div class="row">
<div class="col-sm-4">
<div class="ibox selected">
	<div class="ibox-content">
	    <div class="tab-content">
	        <div id="contact-1" class="tab-pane active">
	            <div class="row m-b-lg">
	                <div class="col-lg-4 text-center">
	                    <h2>강수현</h2>
	
	                    <div class="m-b-sm">
	                        <img alt="image" class="rounded-circle" src="img/a2.jpg" style="width: 62px">
	                    </div>
	                </div>
	                <div class="col-lg-8">
	                    <strong>
	                        자기소개
	                    </strong>
	
	                    <p>
	                        안녕하세요. 서울 신림동에 사는 강수현입니다. 사장님이 헤어 펌 잘하신다고 여기저기 소문이 많이 나서 가입합니다.
	                        잘 부탁드려요~!
	                    </p>
	                    <button type="button" class="btn btn-primary btn-sm btn-block"><i class="fa fa-envelope"></i> Send Message
	                    </button>
	                </div>
	            </div>
	            <div class="client-detail">
	            <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;"><div class="full-height-scroll" style="overflow: hidden; width: auto; height: 100%;">
	
	                <strong>기본정보</strong>
	
	                <ul class="list-group clear-list">
	                    <li class="list-group-item fist-item">
	                        <span class="float-right"> 회원번호 : </span>
	                        A379647
	                    </li>
	                    <li class="list-group-item">
	                        <span class="float-right"> 이름 : </span>
	                        강수현
	                    </li>
	                    <li class="list-group-item">
	                        <span class="float-right"> 담당자 : </span>
	                        차희선
	                    </li>
	                    <li class="list-group-item">
	                        <span class="float-right"> 휴대폰 : </span>
	                        010-3355-9876
	                    </li>
	                    <li class="list-group-item">
	                        <span class="float-right"> 총 예약 : </span>
	                        1건
	                    </li>
	                </ul>
	                <strong>Notes</strong>
	                <p>
	                    만성 두피건조증이 있습니다. 무쪼록 잘 부탁드려요.
	                </p>
	                <hr>
	                
	            </div><div class="slimScrollBar" style="background-color: rgb(0, 0, 0); width: 7px; position: absolute; top: 42px; opacity: 0.4; display: none; border-top-left-radius: 7px; border-top-right-radius: 7px; border-bottom-right-radius: 7px; border-bottom-left-radius: 7px; z-index: 99; right: 1px; height: 412.88936627282493px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-top-left-radius: 7px; border-top-right-radius: 7px; border-bottom-right-radius: 7px; border-bottom-left-radius: 7px; background-color: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
	            </div>
	        </div>
	      </div>  
	    </div>    
	  </div>      
	</div>
<!-- ------------------------------- 회원정보 끝 -->
	
<!-- ------------------------------- 예약등록표 시작 -->
<div class="col-sm-8">
                    <div class="ibox ">
                        <div class="ibox-title">
                            <h5>예약 수정</h5>
                        </div>
                        <div class="ibox-content">
                            <form method="get">
                                <div class="form-group  row"><label class="col-sm-2 col-form-label">예약 상태</label>

                                    <div class="col-sm-10">
                                    
                                    
                                    <button type="button" class="btn btn-outline btn-primary">예약합니다?</button>
                                    <button type="button" class="btn btn-outline btn-primary">예약할까요?</button>
                                    <button type="button" class="btn btn-outline btn-primary">예약하니?</button>
                                    
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group row"><label class="col-lg-2 col-form-label">예약 일자</label>

                                    <div class="col-lg-10"><input type="date" class="form-control"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                
                                <div class="form-group row"><label class="col-sm-2 col-form-label">예약 시간</label>
                                    
                                    <div class="col-sm-4"><select class="form-control" multiple="">
                                        <option>09시</option>
                                        <option>10시</option>
                                        <option>11시</option>
                                        <option>12시</option>
                                        <option>13시</option>
                                        <option>14시</option>
                                        <option>15시</option>
                                        <option>16시</option>
                                        <option>17시</option>
                                        <option>18시</option>
                                    </select></div>
                                    
                                    ~
                                    
                                    <div class="col-sm-4"><select class="form-control" multiple="">
                                        <option>09시</option>
                                        <option>10시</option>
                                        <option>11시</option>
                                        <option>12시</option>
                                        <option>13시</option>
                                        <option>14시</option>
                                        <option>15시</option>
                                        <option>16시</option>
                                        <option>17시</option>
                                        <option>18시</option>
                                    </select></div>
                                    
                                </div>
                                <div class="hr-line-dashed"></div>
                                
                                <div class="form-group row"><label class="col-lg-2 col-form-label">호실</label>

                                    <div class="col-sm-4"><select class="form-control m-b" name="room">
                                        <option>A301호</option>
                                        <option>A302호</option>
                                        <option>A303호</option>
                                        <option>A304호</option>
                                        <option>A305호</option>
                                        <option>A306호</option>
                                        <option>A307호</option>
                                    </select></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                
                                <div class="form-group row"><label class="col-lg-2 col-form-label">인원</label>

                                    <div class="col-lg-10"><input type="text" value="2명" class="form-control"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                
                                <div class="form-group row"><label class="col-lg-2 col-form-label">담당자</label>

                                    <div class="col-lg-10"><input type="text" value="A38961 요정님" class="form-control"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                
                                <div class="form-group row"><label class="col-lg-2 col-form-label">별도 요청</label>

                                    <div class="col-lg-10"><input type="text" value="머리 잘 감겨주세요" class="form-control"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                
                                <div class="form-group row"><label class="col-lg-2 col-form-label">예약 상품</label>

                                    <div class="col-lg-10"><input type="text" value="머리 감겨주기" class="form-control"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                
                                <div class="form-group row"><label class="col-lg-2 col-form-label">기타 메모</label>

                                    <div class="col-lg-10"><input type="text" value="하..정말 힘들다" class="form-control"></div>
                                </div>
                                <div class="hr-line-dashed"></div>   
                            </form>
                        </div>
                    </div>
                </div>
<!-- ------------------------------- 예약등록표 끝 -->
			</div>  
			</div>    
		</div>
	</div>    
</div>
</div>
</div>
</body>
</html>