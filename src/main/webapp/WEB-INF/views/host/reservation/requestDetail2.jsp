<!-- 
이름 : 이시현
작성날짜 : 2021-09-16 ~ 2021-09-16 
회원으로부터 예약 요청된 내용을 나타내는 페이지
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title> 예약상세정보 </title>

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

<script type="text/javascript">

	$(function() {
		$.ajax({
			url : '${pageContext.request.contextPath}/requestDetail',  // 전송페이지 => 컨트롤러/basic1_next
			type : 'GET',						// 전송방식('GET', 'POST')
			dataType : {},						// 요청한 데이터 형식('html', 'xml', 'json', text', 'jsoup')
			success : function(data) {			// 콜백함수 - 전송에 성공했을때의 결과(= basic1_next.jsp)가 data 변수에 전달된다.
				$('#requestDetail').html(data);	// .html은 innerHTML과 같다. data 변수명은 내가 임의로 정하기 나름.
			},				
			error : function() {
				alert('오류');
			}
		});
	});
</script>

<script type="text/javascript" src="${path}/resources/host/js/custBooking.js"></script>
</head>
<body>

<!-- ------------------------------- 테이블표 시작 전 '예약요청' 설명란 시작 -->
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
	                        <img alt="image" class="rounded-circle" src="team-2" style="width: 62px">
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
	            <h3>예약 상세</h3>
	        </div>
	        <div class="ibox-content">
<!-- form -->	<form action="" method="post" id="requestDetail">
				<sec:csrfInput/>
				<input type="hidden" id="res_code" name="res_code" value="${dto.res_code}">
				<input type="hidden" id="user_id" name="user_id" value="${dto.user_id}">
				<input type="hidden" id="res_review_chk" name="res_review_chk" value="${dto.res_review_chk}">
				<input type="hidden" id="product_code" name="product_code" value="${dto.product_code}">
	                <!-- 예약 테이블 시작 -->
                    <table class="box">
                     <tr>
                        <td><strong>날짜</strong>
                     </tr>
                     <tr>
                        <td class="dashed">
                           <!-- 시간 -->
                           <div class="col-lg-6"><input type="date" id="res_date" name="res_date" value="${dto.res_date}" class="form-control">
                           	${dto.res_date}
                           </div>
                      <div class="hr-line-dashed"></div>
                        </td>
                     </tr>
                     
                     
                     <tr>
                        <td><strong>시간</strong><br>
                        <small>예약 날짜를 선택하시면, 시간을 선택할 수 있습니다.</small></td>
                     </tr>
                     <tr>
                        <td class="dashed">
                           <!-- 시간 -->
                           <div style="display:inline-block">
                              <button type="button" class="btn btn-outline btn-primary" class="timeBtn" id="timeBtn1"
                                 style="margin: 10px" value="09:00" disabled>09:00</button>
                              <button type="button" class="btn btn-outline btn-primary" class="timeBtn" id="timeBtn1"
                                 style="margin: 10px" value="10:00" disabled>10:00</button>
                              <button type="button" class="btn btn-outline btn-primary" class="timeBtn" id="timeBtn2"
                                 style="margin: 10px" value="11:00" disabled>11:00</button>
                              <button type="button" class="btn btn-outline btn-primary" class="timeBtn" id="timeBtn3"
                                 style="margin: 10px" value="12:00">12:00</button>
                              <button type="button" class="btn btn-outline btn-primary" class="timeBtn" id="timeBtn4"
                                 style="margin: 10px" value="13:00">13:00</button>
                              <button type="button" class="btn btn-outline btn-primary" class="timeBtn" id="timeBtn5"
                                 style="margin: 10px" value="14:00">14:00</button>
                              <button type="button" class="btn btn-outline btn-primary" class="timeBtn" id="timeBtn5"
                                 style="margin: 10px" value="15">15:00</button>
                              <button type="button" class="btn btn-outline btn-primary" class="timeBtn" id="timeBtn5"
                                 style="margin: 10px" value="16">16:00</button>
                              <button type="button" class="btn btn-outline btn-primary" class="timeBtn" id="timeBtn5"
                                 style="margin: 10px" value="17">17:00</button>
                              <button type="button" class="btn btn-outline btn-primary" class="timeBtn" id="timeBtn5"
                                 style="margin: 10px" value="18">18:00</button>
                           </div>
                      <div class="panel-heading" style="background-color: #e5e6e7; margin-top:15px; color: black">
                         <input type="text" name="selectTime" id="selectTime" value="${dto.res_hour}" style="display: none">선택 시간 : <span class="timeSelectedInfo">${dto.res_hour}</span>
                      </div>
                      <div class="hr-line-dashed"></div>
                        </td>
                     </tr>
                     
                     <!-- 예약 유형 -->
                     <tr>
                        <td><strong>수업형태</strong></td>
                     </tr>
                     <tr>
                        <td>
                           <div style="display:inline-block">
                              <button type="button" class="btn btn-outline btn-primary" class="typeBtn" id="typeBtn1"
                                 style="margin: 10px" value="예약중">예약중</button>
                              <button type="button" class="btn btn-outline btn-primary" class="typeBtn" id="typeBtn2"
                                 style="margin: 10px" value="예약요청">예약요청</button>
                                 <button type="button" class="btn btn-outline btn-primary" class="typeBtn" id="typeBtn3"
                                 style="margin: 10px" value="방문예약">방문예약</button>
                                 <button type="button" class="btn btn-outline btn-primary" class="typeBtn" id="typeBtn4"
                                 style="margin: 10px" value="상담예약">상담예약</button>
                           </div>
                           <div class="panel-heading" style="background-color: #e5e6e7; margin-top:15px; color: black">
                         <input type="text" name="selectType" id="selectType" style="display: none">형태 : <span class="typeSelectedInfo">${dto.res_state}</span>
                      </div>
                      <div class="hr-line-dashed"></div>
                        </td>
                     </tr>
   
                     <!-- 호실 -->
                     <tr>
                        <td><strong>호실</strong></td>
                     </tr>
                     <tr>
                        <td>
                           <div style="display:inline-block">
                              <button type="button" class="btn btn-outline btn-primary" class="roomBtn" id="roomBtn1"
                                 value="1실" style="margin: 10px">1실</button>
                              <button type="button" class="btn btn-outline btn-primary" class="roomBtn" id="roomBtn2"
                                  value="2실" style="margin: 10px">2실</button>
                              <button type="button" class="btn btn-outline btn-primary" class="roomBtn" id="roomBtn3"
                                  value="3실" style="margin: 10px">3실</button>
                           </div>
<!-- sql에서는 varchar(4)로 되어있어서 한글까지 넣으려면 sql을 다시 수정해야한다. -->
                           <div class="panel-heading" style="background-color: #e5e6e7; margin-top:15px; color: black">
                         <input type="text" name="selectRoom" id="selectRoom" style="display: none">호실 : <span class="roomSelectedInfo">${dto.res_room}호실</span>
                      </div>
                      
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
                        </td>
                     </tr>
   
                     <!-- 인원 -->
                     <tr>
                        <td><strong>인원</strong><br><small>방문하시는 인원을 선택하세요.<br><br></small>${dto.res_cnt}</td>
                     </tr>
                     <tr>
                        <td>
                           <div class="row">
                              <div class="col-3" style="width: auto;">
                                 <input type="button" id="GuestCountMinus" name="GuestCountMinus" class="btn btn-primary" value="－" />
                              </div>
                              <div class="col-4">
                                 <input type="text" id="GuestCount" name="GuestCount" maxlength="4" class="form-control text-center" value="0" readonly />
                              </div>
                              <div class="col-3">
                                 <input type="button" id="GuestCountPlus" name="GuestCountPlus" class="btn btn-primary" value="＋" />
                              </div>
                              <div class="offset-1"></div>
                           </div>
                     <div class="hr-line-dashed"></div>   
                        </td>
                     </tr>
                     
                     <!-- 담당자 -->
                     <tr>
                        <td><strong>담당자</strong></td>
                     </tr>
                     <tr>
                        <td>
                           <div style="display:inline-block">
                              <button type="button" class="btn btn-outline btn-primary" class="managerBtn" id="managerBtn1" 
                                 value="정지은" style="margin: 10px">정지은</button>
                              <button type="button" class="btn btn-outline btn-primary" class="managerBtn" id="managerBtn2" 
                                 value="한진원" style="margin: 10px">한진원</button>
                              <button type="button" class="btn btn-outline btn-primary" class="managerBtn" id="managerBtn3"
                                 value="이시현" style="margin: 10px">이시현</button>
                              <button type="button" class="btn btn-outline btn-primary" class="managerBtn" id="managerBtn3"
                                 value="E4" style="margin: 10px">장현정</button>
                           </div>
                           <div class="panel-heading" style="background-color: #e5e6e7; margin-top:15px; color: black">
                               <input type="text" name="selectManager" id="selectManager" style="display: none">담당자 : <span class="managerSelectedInfo">${dto.employee_code}</span>
                           </div>
                           <div class="form-group" style="margin-top:30px;">
                         <span><strong>추가 요청사항</strong></span>
                         <textarea class="form-control" rows="3"
                         			name="res_indiv_request" value="${dto.res_indiv_request}"
                         			style="margin-top:10px;"></textarea>
    <!-- textarea 다시 체크해 볼 것! -->
                     </div>
                     <div class="hr-line-dashed"></div>   
                        </td>
                     </tr>
                     
                     
                     
                     <!-- 직원 기타메모 -->
                     <tr>
                        <td><strong>담당자 기타메모</strong></td>
                     </tr>
                     <tr>
                        <td>
                     
			         <div class="col-lg-12">
			         	<input type="text" id="res_memo" name="res_memo"
			         			class="form-control">
			         </div>
			  				<div class="hr-line-dashed"></div>  
			                     </td>
			                     </tr>
                  		</table>                             
						<!-- 예약 테이블 끝 -->
						</form>
		                </div>
				                
				                
				        </div>
				    </div>
				</div>
<!-- ------------------------------- 예약등록표 끝 -->
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