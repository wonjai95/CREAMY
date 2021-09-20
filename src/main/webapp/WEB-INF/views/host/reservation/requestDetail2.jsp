<!-- 
이름 : 이시현
작성날짜 : 2021-09-16 ~ 2021-09-16 
회원으로부터 요청된 예약서비스를 받고 취합하여 관리하는 페이지
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title> 예약등록 </title>

<link href="${path}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${path}/resources/bootstrap/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="${path}/resources/bootstrap/css/custom.css" rel="stylesheet">
<link href="${path}/resources/bootstrap/css/animate.css" rel="stylesheet">
<link href="${path}/resources/bootstrap/css/style.css" rel="stylesheet">
<link href="${path}/resources/bootstrap/css/awesome-bootstrap-checkbox.css" rel="stylesheet">
<link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet">

<script type="text/javascript">
// 예약등록 버튼을 눌러 INSERT하기
/* 	function insertReservation(){
		var qty = document.getElementById("c_quantity").value;
		var m_number = document.getElementById("m_number").value;
		m_number = document.getElementById("m_number").innerHTML;
		if(qty == 0){
			alert("수량을 입력해 주세요.");
		}else{
			var m_name = document.getElementById("m_name").innerHTML;
			var isTrue = confirm(m_name +" "+ qty + "개를 장바구니에 담으시겠습니까?");
			
			if(isTrue==true){
				window.location = 'cartPutAction.bo_od?c_quantity=' + qty + '&m_number=' + m_number;
			}
		}
	} */
	
	function insertReservation(){		
		var isTrue = confirm("해당 요청을 등록하시겠습니까?");
		
		if(isTrue==true){
			window.location = 'insertAction';
		} else {
			window.location = 'requestDetail';
		}
	}
	
	function insertReservation(){		
		var isTrue = confirm("해당 요청을 수정하시겠습니까?");
		
		if(isTrue==true){
			window.location = 'modifyAction';
		} else {
			window.location = 'requestDetail';
		}
	}
	
	function insertReservation(){		
		var isTrue = confirm("해당 요청을 취소하시겠습니까?");
		
		if(isTrue==true){
			window.location = 'deleteAction';
		} else {
			window.location = 'requestDetail';
		}
	}
	

</script>

</head>
<body>

<!-- ------------------------------- 테이블표 시작 전 '예약등록' 설명란 시작 -->
<div class="panel-body">
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row">
	    <div class="col-lg-12">
	    <div class="ibox ">
	        <div class="ibox-title">
	            <h5>예약요청건에 대해 관리합니다.</h5>
	            
	            &nbsp;&nbsp;&nbsp;
	            <button type="submit" class="btn btn-primary btn-lg"
	            		formaction="insertAction" onclick="insertReservation();">예약 등록
	            </button>
	            &nbsp;&nbsp;&nbsp;
	            <button type="button" class="btn btn-primary btn-lg"
	            		formaction="modifyAction" onclick="modifyReservation();">예약 수정
	            </button>
	            &nbsp;&nbsp;&nbsp;
	            <button type="button" class="btn btn-primary btn-lg"
	            		formaction="deleteAction" onclick="deleteReservation();">예약 취소
	            </button>
	            &nbsp;&nbsp;&nbsp;
	            <button type="button" class="btn btn-primary btn-lg"
	            		onclick="window.location='reservation'">예약요청목록
	            </button>
	        </div>
<!-- ------------------------------- 테이블표 시작 전 '예약등록' 설명란 끝 -->

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
	                        <img alt="image" class="rounded-circle" src="${path}/resources/images/main/team/team-2.jpg" style="width: 62px">
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
	            <h5>예약 등록</h5>
	        </div>
	        <div class="ibox-content">
	            <form method="get">
	                <div class="form-group  row"><label class="col-sm-2 col-form-label">예약 상태</label>
	                    <div class="col-sm-10">
	                    <button type="button" class="btn btn-outline btn-primary">예약중</button>
	                    <button type="button" class="btn btn-outline btn-primary">예약요청</button>
	                    </div>
	                </div>
	                <div class="hr-line-dashed"></div>
	                <div class="form-group row"><label class="col-lg-2 col-form-label">예약 일자</label>
	
	                    <div class="col-lg-10"><input type="text" value="2021-09-17" class="form-control"></div>
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
	
	                    
	                    
	                    
	                    <div class="col-md-4">


                                    <div class="input-group bootstrap-touchspin bootstrap-touchspin-injected">
                                    	<span class="input-group-btn input-group-prepend">
                                    		<button class="btn btn-white bootstrap-touchspin-down" type="button">-</button></span>
                                    		<input class="touchspin1 form-control" type="text" value="" name="demo1">
                                    	<span class="input-group-btn input-group-append">
                                    		<button class="btn btn-white bootstrap-touchspin-up" type="button">+</button></span>
                                    </div>
						</div>
	                    
	                    
	                    
	                    
	                    
	                    
	                    
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
	                
	                <div class="form-group row"><label class="col-lg-2 col-form-label">알려주기</label>
	                

					<div class="col-sm-10">
					    <div class="i-checks"><label> <input type="checkbox" value=""> <i></i> Option one </label></div>
					    <div class="i-checks"><label> <input type="checkbox" value="" checked=""> <i></i> Option two checked </label></div>
					    <div class="i-checks"><label> <input type="checkbox" value="" disabled="" checked=""> <i></i> Option three checked and disabled </label></div>
					    <div class="i-checks"><label> <input type="checkbox" value="" disabled=""> <i></i> Option four disabled </label></div>
					    <div class="i-checks"><label> <input type="radio" value="option1" name="a"> <i></i> Option one </label></div>
					    <div class="i-checks"><label> <input type="radio" checked="" value="option2" name="a"> <i></i> Option two checked </label></div>
					    <div class="i-checks"><label> <input type="radio" disabled="" checked="" value="option2"> <i></i> Option three checked and disabled </label></div>
					    <div class="i-checks"><label> <input type="radio" disabled="" name="a"> <i></i> Option four disabled </label></div>
					</div>








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


    <!-- Mainly scripts -->
    <script src="${path}/resources/bootstrap/js/jquery-3.1.1.min.js"></script>
    <script src="${path}/resources/bootstrap/js/popper.min.js"></script>
    <script src="${path}/resources/bootstrap/js/bootstrap.js"></script>
    <script src="${path}/resources/bootstrap/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${path}/resources/bootstrap/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="${path}/resources/bootstrap/js/inspinia.js"></script>
    <script src="${path}/resources/bootstrap/js/plugins/pace/pace.min.js"></script>

    <!-- iCheck -->
    <script src="${path}/resources/bootstrap/js/plugins/iCheck/icheck.min.js"></script>
        <script>
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
            });
        </script>



</body>
</html>