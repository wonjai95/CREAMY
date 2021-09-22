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
        <div class="wrapper wrapper-content">
           <form action="insertBooking" method="post">
           <sec:csrfInput/>
           <input type="hidden" id="user_id" name="user_id">
           <input type="hidden" id="res_date" name="res_date">   <!-- 다시 체크해 볼 것!  name="custBookingForm" -->
           <input type="hidden" id="res_memo" name="res_memo">
                <div class="row">
                   <!-- col-lg-8  시작 -->
                    <div class="col-lg-6 col-md-12">
                        <div class="ibox ">
                            <div class="ibox-content">
                              <div id="calendar"></div>
                            </div>
                            <div class="ibox-content" style="margin-top: 50px;">
                               <span style="font-size:24px;"><strong>찾아오시는 길<br><br></strong></span>
                               <div id="map" style="width: auto; height:500px;"></div>
                            </div>
                        </div>
                    </div>
                    <!-- col-lg-8 끝 -->
                    <!-- col-lg-4 시작 -->
                    <div class="col-lg-6 col-md-12">
                       <!-- ibox 시작 -->
                        <div class="ibox ">
                            <div class="ibox-title">
                                <span class="label label-warning float-right">예약</span>
                                <span class="res_date"></span>
                            </div>
                            <div class="ibox-content">
                                <div class="row">
                                   <!-- 예약 테이블 시작 -->
                                   <table class="box">
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
                                        <input type="text" name="selectTime" id="selectTime" style="display: none">선택 시간 : <span class="timeSelectedInfo">예약시간</span>
                                     </div>
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
                                                style="margin: 10px" value="방문예약">방문예약</button>
                                             <button type="button" class="btn btn-outline btn-primary" class="typeBtn" id="typeBtn2"
                                                style="margin: 10px" value="상담예약">상담예약</button>
                                          </div>
                                          <div class="panel-heading" style="background-color: #e5e6e7; margin-top:15px; color: black">
                                        <input type="text" name="selectType" id="selectType" style="display: none">형태 : <span class="typeSelectedInfo">예약 형태</span>
                                     </div>
                                       </td>
                                    </tr>
                                    
                  
                                    <!-- 호실 -->
                                    
                                    <tr>
                                       <td><strong>강의실</strong></td>
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
                                        <input type="text" name="selectRoom" id="selectRoom" style="display: none">호실 : <span class="roomSelectedInfo">호실</span>
                                     </div>
                                       </td>
                                    </tr>
                                    
                  
                                    <!-- 인원 -->
                                    
                                    <tr>
                                       <td><strong>인원</strong><br><small>방문하시는 인원을 선택하세요.<br><br></small></td>
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
                                              <input type="text" name="selectManager" id="selectManager" style="display: none">담당자 : <span class="managerSelectedInfo">담당자</span>
                                          </div>
                                          <div class="form-group" style="margin-top:30px;">
                                        <span><strong>추가 요청사항</strong></span>
                                        <textarea class="form-control" placeholder="필요 시 내용을 입력하세요." rows="3"
                                        			name="res_indiv_request"
                                        			style="margin-top:10px;"></textarea>
                   <!-- textarea 다시 체크해 볼 것! -->
                                    </div>
                                       </td>
                                    </tr>
                                 </table>                             
                                   <!-- 예약 테이블 끝 -->
                                   <!-- 상품 테이블 시작 -->
                                   <table class="box">
                                   <!-- 상품 -->
                              <tr>
                                 <td><strong>상품</strong></td>
                              </tr>
            
                              <tr>
                                 <td style="padding-bottom:0px;">
                                    <div id="group_0" class="revgroup-selected" data-filter="*">전체 상품</div>
                                 </td>
                              <tr>
                                 <td class="dashed">
                                    <div id="product-list">
                                       <table class="product-item" data-cat="group-0" style="width:100%; border:1px solid #ddd; padding:0px; margin-bottom:8px;">
                                          <tr>
                                             <td style="width:64px; padding:10px 0 0 0; background:#fafafa; text-align:center">
                                                <input type="radio" class="checkbox" id="product_17806" name="ReserveProduct" value="25" />
                                                <label for="product_17806" class="input-label checkbox"></label>
                                                <input type="hidden" id="price_17806" value="100" />
                                             </td>
                                             <td style="padding:8px">
                                                <strong>테스트</strong>
                                                
                                                <br />
                                                   <small><strong>100</strong>원</small><br/>
                                             </td>
                                             
                                          </tr>
                                       </table>
                              
                                       <table class="product-item" data-cat="group-0" style="width:100%; border:1px solid #ddd; padding:0px; margin-bottom:8px;">
                                          <tr>
                                             <td style="width:64px; padding:10px 0 0 0; background:#fafafa; text-align:center">
                                                <input type="radio" class="checkbox" id="product_17807" name="ReserveProduct" value="61" />
                                                <label for="product_17807" class="input-label checkbox"></label>
                                                <input type="hidden" id="price_17807" value="800000" />
                                             </td>
                                             <td style="padding:8px">
                                                <strong>테스트 쿠폰</strong>
                                                <br />
                                                   <small><strong>800,000</strong>원</small><br/>
                                             </td>
                                             
                                          </tr>
                                       </table>
                                    
                                       <table class="product-item" data-cat="group-2676" style="width:100%; border:1px solid #ddd; padding:0px; margin-bottom:8px;">
                                          <tr>
                                             <td style="width:64px; padding:10px 0 0 0; background:#fafafa; text-align:center">62
                                                <input type="radio" class="checkbox" id="product_17808" name="ReserveProduct" value="17808" />
                                                <label for="product_17808" class="input-label checkbox"></label>
                                                <input type="hidden" id="price_17808" value="100000" />
                                             </td>
                                             <td style="padding:8px">
                                                <strong>왜안나오노</strong>
                                                
                                                <br />
                                                   <small><strong>100,000</strong>원</small><br/>
                                             </td>
                                             
                                          </tr>
                                          </table>
                                             <div class="panel-heading" style="background-color: #e5e6e7; margin-top:15px; color: black">
                                              <input type="text" name="ReserveProductSum" id="ReserveProductSum" style="display: none">
                                                   	 결제금액 : <span class="productSelectedInfo">총액</span>
          <!-- 결제금액도 예약테이블에 넣어야하는 부분인지 다시 체크해 볼 것! -->
                                             </div>
                                          </div>
                                       </table>
                                      <!-- 상품 테이블 끝 -->
                                      <!-- 결제 버튼 시작 -->
                                       <input type="submit" class="btn btn-primary btn-rounded btn-block" value="예약하기" style="font-size: 26px;">
                                      <!-- 결제 버튼 끝 -->
                                   </div>
                               </div>
                           </div>
                           <!-- ibox 끝 -->
                       </div>
                        <!-- col-lg-6 끝 -->
                   </div>
                </form>
            </div>
        </div>
      
     </div>

</body>

</html>