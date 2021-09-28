<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>CRM | sale</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="images/main/favicon.png" rel="icon">
  <link href="images/main/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${path}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${path}/resources/bootstrap/css/font-awesome.css" rel="stylesheet">
  <link href="${path}/resources/bootstrap/css/iCheck/custom.css" rel="stylesheet">
  <link href="${path}/resources/bootstrap/css/bootstrap-icons.css" rel="stylesheet">
  <link href="${path}/resources/bootstrap/css/boxicons.min.css" rel="stylesheet">
  <link href="${path}/resources/bootstrap/css/glightbox.min.css" rel="stylesheet">
  <link href="${path}/resources/bootstrap/css/remixicon.css" rel="stylesheet">
  <link href="${path}/resources/bootstrap/css/swiper-bundle.min.css" rel="stylesheet">
  <link href="${path}/resources/bootstrap/css/animate.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${path}/resources/bootstrap/css/user_style.css" rel="stylesheet">
  <link href="${path}/resources/bootstrap/css/style.css" rel="stylesheet">
  
  <!-- 내가 쓴 js  -->
  <script src="${path}/resources/user/js/modifyUser.js"></script>\
  <script type="text/javascript" src="${path}/resources/host/js/custBooking.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a24a16f3acffb8fc1ba508e3c65e6c76&libraries=services"></script>
  <!-- =======================================================
  * Template Name: Vlava - v4.3.0
  * Template URL: https://bootstrapmade.com/vlava-free-bootstrap-one-page-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center header-transparent">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
        <h1><a href="home">Creamy</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="images/main/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
	      <c:if test="${sessionScope.id != null}">
          	<li><a href="mypage" class="nav-link scrollto">${sessionScope.id}</a></li>
          </c:if>
          <li><a class="nav-link scrollto active" href="home">Home</a></li>
          <li class="dropdown"><a href=""><span>Reservation</span> <i class="bi bi-chevron-down"></i></a>
          	<ul>
                  <li><a href="reservation">캡처</a></li>
                  <li><a href="custBooking">고객 예약</a></li>
          	</ul>
          </li>
          <c:if test="${sessionScope.id != null}">
          <li><a class="nav-link scrollto" href="logout">logout</a></li>
          </c:if>
          <c:if test="${sessionScope.id == null}">
          <li><a class="nav-link scrollto" href="login">login</a></li>
          </c:if>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

    <!-- ======= 상단 메뉴 ======= -->
    <section id="contact" class="contact section-bg">
      <div class="container">

        <div class="section-title" style="padding-bottom: 0px; padding-top: 50px;">
          <h2>결제 정보 입력</h2>
        </div>
      </div>
      <div class="container">
        <div class="row mt-5 justify-content-center">


        
        
        <!-- ======= 상단 메뉴 끝 ======= -->
        
        <!-- ======= 예약내역 폼 ======= -->
         <div class="row mt-5 justify-content-center">
         	<div class="col-lg-15">
         	<!-- <form method="post" name="modifyUser" role="form" class="php-email-form"> -->
         	 	
         	 	<div class="row">
         	 	<form action="#" method="post" name="deleteActionByUser" class="php-email-form">
         	 	<sec:csrfInput/>
         	 	
         	 	
         			<div class="member-info" style="padding-left: 5px;"><span style="font-size: 20px;"><b>예약 내역</b></span><br><br></div>
         			
         			
         			
         			<div class="col-lg-12 col-md-12">    
         			<div class="row">  
         				<!-- ibox 시작 -->
                        <div class="ibox col-lg-6">
                            <div class="ibox-content">
                              <div id="calendar"></div>   
                            </div>
                            <div class="ibox-content" style="margin-top: 50px;">
                               <span style="font-size:24px;"><strong>예약한 매장 정보<br><br></strong></span>
                               <div id="map" style="width: 300; height:200px;"></div>
                               
                               <div class="panel-heading" style="background-color: #e5e6e7; margin-top:15px; color: black">
                                  <input type="text" name="selectTime" id="selectTime" style="display: none">선택 시간 : <span class="timeSelectedInfo">예약시간</span>
                               </div>
                               
                            </div>
                        </div>     
                        <!-- ibox 끝 -->
                        
                        
                         <!-- ibox 시작 -->
                        <div class="ibox col-lg-6">
                            <div class="ibox-content">
                                <div class="row">
                                   <!-- 예약 테이블 시작 -->
                                   <table class="box">
                                    <tr>
                                       <td><strong>시간</strong>
	                                       <!-- 시간 -->
	                                       <div style="display:inline-block">
	                                             <button type="button" class="btn btn-outline btn-primary" class="timeBtn" id="timeBtn4"
	                                                style="margin: 10px" value="13:00">13:00</button>
	                                       </div>
                                       </td>
                                    </tr>
                                    <tr>
                                       <td class="dashed">
                                          <!-- 시간 -->
	                                     <div class="panel-heading" style="background-color: #e5e6e7; margin-top:15px; color: black">
	                                        <input type="text" name="selectTime" id="selectTime" style="display: none">선택 시간 : <span class="timeSelectedInfo">예약시간</span>
	                                     </div>
                                       <br><br></td>
                                    </tr>
                  
                                    <!-- 예약 유형 -->
                                    <tr>
                                       <td><strong>수업형태</strong>
	                                       <div style="display:inline-block">
	                                             <button type="button" class="btn btn-outline btn-primary" class="typeBtn" id="typeBtn1"
	                                                style="margin: 10px" value="방문예약">방문예약</button>
	                                       </div>
                                       </td>
                                    </tr>
                                    <tr>
                                       <td>
                                          <div class="panel-heading" style="background-color: #e5e6e7; margin-top:15px; color: black">
                                        	<input type="text" name="selectType" id="selectType" style="display: none">형태 : <span class="typeSelectedInfo">예약 형태</span>
                                     	 </div>
                                       <br><br></td>
                                    </tr>                                    
                  
                                    <!-- 호실 -->
                                    <tr>
                                       <td><strong>강의실</strong>
                                       		<div style="display:inline-block">
	                                       		<button type="button" class="btn btn-outline btn-primary" class="roomBtn" id="roomBtn2"
	                                                 	value="2호실" style="margin: 10px">2호실</button>
                                            </div>
                                       </td>
                                    </tr>
                                    <tr>
                                       <td>
                                          <div class="panel-heading" style="background-color: #e5e6e7; margin-top:15px; color: black">
                                        		<input type="text" name="selectRoom" id="selectRoom" style="display: none">호실 : <span class="roomSelectedInfo">호실</span>
                                     	  </div>
                                       <br><br></td>
                                    </tr>
                  
                                    <!-- 인원 -->
                                    <tr>
                                       <td><strong>인원 &nbsp;&nbsp;&nbsp;&nbsp;</strong>
										<div style="display:inline-block">
										<div class="col-4">
                                                <input type="text" id="GuestCount" name="GuestCount" maxlength="4" class="form-control text-center" value="0" readonly />
                                             </div>
										</div>
										<br><br></td>
                                    </tr>
                                    
                                    <!-- 담당자 -->
                                    <tr>
                                       <td><strong>담당자</strong>
	                                       <div style="display:inline-block">
	                                             <button type="button" class="btn btn-outline btn-primary" class="managerBtn" id="managerBtn1" 
	                                                value="정지은" style="margin: 10px">정지은</button>
	                                       </div>
                                       </td>
                                    </tr>
                                    <tr>
                                       <td>
                                          <div class="panel-heading" style="background-color: #e5e6e7; margin-top:15px; color: black">
                                              <input type="text" name="selectManager" id="selectManager" style="display: none">담당자 : <span class="managerSelectedInfo">담당자</span>
                                          </div>
                                          <div class="form-group" style="margin-top:30px;">
                                        <span><strong>추가 요청사항</strong></span>
                                        <textarea class="form-control" placeholder="Your message" rows="3" readonly
                                           style="margin-top:10px;"></textarea>
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
                                                <input type="radio" class="checkbox" id="product_17806" name="ReserveProduct" value="17806" />
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
                                                <input type="radio" class="checkbox" id="product_17807" name="ReserveProduct" value="17807" />
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
                                             <td style="width:64px; padding:10px 0 0 0; background:#fafafa; text-align:center">
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
                                             </div>
                                          </div>
                                       </table>
                                      <!-- 상품 테이블 끝 -->
                                   </div>
                               </div>
                           </div>
                           <!-- ibox 끝 -->
                        
                        
                        
                        
                        
                    </div>
               		
						
					
					
					
                      
                    </div>
                    </div>
                        <!-- col-lg-6 끝 -->
					
					
					
					
               		
               		<div class="text-center">
		              <button type="submit" style="font-size: 16px">예약내역 취소</button>
		            </div>
              
         	 	</form>
         	 	</div>
         	 </div>
         </div>
		</div>
      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-top">

      <div class="container">

        <div class="row  justify-content-center">
          <div class="col-lg-6">
            <h3>Creamy</h3>
            <p>Et aut eum quis fuga eos sunt ipsa nihil. Labore corporis magni eligendi fuga maxime saepe commodi placeat.</p>
          </div>
        </div>

        <div class="row footer-newsletter justify-content-center">
          <div class="col-lg-6">
            <form action="" method="post">
              <input type="email" name="email" placeholder="Enter your Email"><input type="submit" value="Subscribe">
            </form>
          </div>
        </div>

        <div class="social-links">
          <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
          <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
          <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
          <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
          <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
        </div>

      </div>
    </div>

    <div class="container footer-bottom clearfix">
      <div class="copyright">
        &copy; Copyright <strong><span>Creamy</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/vlava-free-bootstrap-one-page-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="${path}/resources/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${path}/resources/bootstrap/js/glightbox.min.js"></script>
  <script src="${path}/resources/bootstrap/js/isotope.pkgd.min.js"></script>
  <script src="${path}/resources/bootstrap/js/validate.js"></script>
  <script src="${path}/resources/bootstrap/js/swiper-bundle.min.js"></script>

  <!-- Template Main JS File -->
  <script src=${path}/resources/bootstrap/js/user_main.js"></script>

</body>

</html>