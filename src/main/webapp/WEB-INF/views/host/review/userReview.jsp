<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="panel-body">
		<div class="ibox-content m-b-sm" style="padding-bottom: 0px; margin-bottom: 0px;">
			<div class="row">
				<div class="col-sm-2">
					<div class="form-group">
						<select name="" id="" class="form-control">
							<option value="1" selected="">구분</option>
							<option value="2">글제목</option>
							<option value="3">작성자</option>
							<option value="4">등록일</option>
						</select>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="form-group">
						<input type="text" id="" name="" value="" placeholder="검색어"
							class="form-control">
					</div>
				</div>

				<div class="col-sm-2">
					<div class="form-group">
						<button class="btn btn-primary dim" type="button">찾기</button>
					</div>
				</div>
			</div>
		</div>
		<fieldset>
			<div class="wrapper wrapper-content">
				<div style="display: flex;">
					<div class="col-lg-9 animated fadeInRight" style="width: 100%;">
						<div class="ibox-content" style="margin: 0px; padding: 0px;">
				            <div class="row">
				                <div class="col-sm-8" style="width : 60%;">
				                    <div class="ibox">
				                        <div class="ibox-content">
				                            <h2>고객 후기</h2>
				                            <p>
				                                	고객님들의 후기를 볼 수 있습니다.
				                            </p>
				                            <div class="clients-list">
					                            <ul class="nav nav-tabs">
					                                <li><a class="nav-link active" data-toggle="tab" href="#tab-1"><i class="fa fa-user"></i> Contacts</a></li>
					                            </ul>
					                            <div class="tab-content">
					                                <div id="tab-1" class="tab-pane active">
					                                    <div class="full-height-scroll">
					                                        <div class="table-responsive">
					                                            <table class="table table-hover">
					                                            	<thead>
									                                <tr>
									                                    <th>#</th>
									                                    <th>글 제목</th>
									                                    <th>작성자</th>
									                                    <th>고객번호</th>
									                                    <th>등록일</th>
									                                    <th>조회수</th>
									                                </tr>
									                                </thead>
					                                                <tbody>
					                                                <c:forEach var="vo" items="${list}">
					                                                	<tr style="border-bottom: #dee2e6 1px solid;">
						                                                	<td>${vo.review_code}</td>
						                                                    <td><a href="#contact-1" class="client-link">${vo.title}</a></td>
						                                                    <td> ${vo.user_name} </td>
						                                                    <td> ${vo.user_code}</td>
						                                                    <td> ${vo.regDate}</td>
						                                                    <td> &nbsp;&nbsp;&nbsp;${vo.readCnt}</td>
						                                                </tr>
					                                                </c:forEach>
					                                                </tbody>
					                                            </table>
					                                        </div>
					                                    </div>
					                                </div>
					                            </div>
				                            </div>
				                        </div>
				                    </div>
				                </div>
				                <div class="col-sm-4" style="width : 40%;">
				                    <div class="ibox selected">
				
				                        <div class="ibox-content">
				                            <div class="tab-content">
				                                <div id="contact-1" class="tab-pane active">
				                                    <div class="row m-b-lg">
				                                        <div class="col-lg-4 text-center">
				                                            <h2>두부</h2>
				
				                                            <div class="m-b-sm">
				                                                <img alt="image" class="rounded-circle" src="../images/CRM/bootstrap/dog1.png"
				                                                     style="width: 62px">
				                                            </div>
				                                        </div>
				                                        <div class="col-lg-8">
				                                            <strong>
				                                                About me
				                                            </strong>
				                                            <p>
				                                               		 여기에는 뭐 써야될지 도통 감이 안옵니다...지울까여
				                                            </p>
				                                        </div>
				                                    </div>
				                                    <div class="client-detail">
				                                    <div class="full-height-scroll">
														<strong>예약내역</strong>
				                                            <ul class="list-group clear-list">
				                                                <li class="list-group-item fist-item">
				                                                    <span class="float-right"> 2021.09.09 </span>
				                                                    	 &emsp;목욕서비스 - <span style="color: purple;">서비스 완료</span>
				                                                </li>
				                                                <li class="list-group-item">
				                                                    <span class="float-right"> 2021.08.29 </span>
				                                                    	 &emsp;커트 - <span style="color: purple;">예약 부도</span>
				                                                </li>
				                                                <li class="list-group-item">
				                                                    <span class="float-right"> 2021.08.09 </span>
				                                                    	 &emsp;목욕서비스 - <span style="color: purple;">서비스 완료</span>
				                                                </li>
				                                                <li class="list-group-item">
				                                                   <span class="float-right"> 2021.07.29 </span>
				                                                    	 &emsp;목욕서비스 - <span style="color: purple;">서비스 완료</span>
				                                                </li>
				                                                <li class="list-group-item">
				                                                    <span class="float-right"> 2021.07.19 </span>
				                                                   &emsp;커트 - <span style="color: purple;">예약 취소</span>
				                                                </li>
				                                            </ul>
				                                            <br>
				                                        <strong>후기 내용</strong>
				                                        <p>
				                                           	여기 개 별로임<br>
				                                           	다음부터 다른데 갈거
				                                        </p>
				                                        <hr/>
				                                        <strong>첨부 사진</strong>
				                                        <br>
				                                        <img alt="" src="../images/CRM/img/dog2.jpg" style="width: 200px; height: 200px;">
				                                        <hr/>
				                                    </div>
				                                    </div>
				                                </div>
				                                <div id="contact-2" class="tab-pane">
				                                    <div class="row m-b-lg">
				                                        <div class="col-lg-4 text-center">
				                                            <h2>Edan Randall</h2>
				
				                                            <div class="m-b-sm">
				                                                <img alt="image" class="rounded-circle" src="../images/CRM/bootstrap/dog1.png"
				                                                     style="width: 62px">
				                                            </div>
				                                        </div>
				                                        <div class="col-lg-8">
				                                            <strong>
				                                                About me
				                                            </strong>
				
				                                            <p>
				                                                Many desktop publishing packages and web page editors now use Lorem Ipsum as their default tempor incididunt model text.
				                                            </p>
				                                        </div>
				                                    </div>
				                                    <div class="client-detail">
				                                        <div class="full-height-scroll">
															<strong>Last activity</strong>
				                                            <ul class="list-group clear-list">
				                                                <li class="list-group-item fist-item">
				                                                    <span class="float-right"> 09:00 pm </span>
				                                                    Lorem Ipsum available
				                                                </li>
				                                                <li class="list-group-item">
				                                                    <span class="float-right"> 10:16 am </span>
				                                                    Latin words, combined
				                                                </li>
				                                                <li class="list-group-item">
				                                                    <span class="float-right"> 08:22 pm </span>
				                                                    Open new shop
				                                                </li>
				                                                <li class="list-group-item">
				                                                    <span class="float-right"> 11:06 pm </span>
				                                                    The generated Lorem Ipsum
				                                                </li>
				                                                <li class="list-group-item">
				                                                    <span class="float-right"> 12:00 am </span>
				                                                    Content here, content here
				                                                </li>
				                                            </ul>
				                                            <br>
															
				                                            <strong>Notes</strong>
				                                            <p>
				                                                There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words.
				                                            </p>
				                                            <hr/>
				                                        </div>
				                                    </div>
				                                </div>
				                                <div id="contact-4" class="tab-pane">
				                                    <div class="row m-b-lg">
				                                        <div class="col-lg-4 text-center">
				                                            <h2>Reuben Pacheco</h2>
				
				                                            <div class="m-b-sm">
				                                                 <img alt="image" class="rounded-circle" src="../images/CRM/bootstrap/dog1.png"
				                                                     style="width: 62px">
				                                            </div>
				                                        </div>
				                                        <div class="col-lg-8">
				                                            <strong>
				                                                About me
				                                            </strong>
										
				                                            <p>
				                                                Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero,written in 45 BC. This book is a treatise on.
				                                            </p>
				                                        </div>
				                                    </div>
				                                    <div class="client-detail">
				                                        <div class="full-height-scroll">
															<strong>Last activity</strong>
				                                            <ul class="list-group clear-list">
				                                                <li class="list-group-item fist-item">
				                                                    <span class="float-right"> 09:00 pm </span>
				                                                    Lorem Ipsum available
				                                                </li>
				                                                <li class="list-group-item">
				                                                    <span class="float-right"> 10:16 am </span>
				                                                    Latin words, combined
				                                                </li>
				                                                <li class="list-group-item">
				                                                    <span class="float-right"> 08:22 pm </span>
				                                                    Open new shop
				                                                </li>
				                                                <li class="list-group-item">
				                                                    <span class="float-right"> 11:06 pm </span>
				                                                    The generated Lorem Ipsum
				                                                </li>
				                                                <li class="list-group-item">
				                                                    <span class="float-right"> 12:00 am </span>
				                                                    Content here, content here
				                                                </li>
				                                            </ul>
				                                            <br>
															
				                                            <strong>Notes</strong>
				                                            <p>
				                                                Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.
				                                            </p>
				                                            <hr/>
				                                        </div>
				                                    </div>
				                                </div>
				                            </div>
				                        </div>
				                    </div>
				                </div>
				            </div>
       					 </div>
					</div>
				</div>
			</div>
		</fieldset>
	</div>
<script>

    $(document).ready(function(){

        $(document.body).on("click",".client-link",function(e){
            e.preventDefault()
            $(".selected .tab-pane").removeClass('active');
            $($(this).attr('href')).addClass("active");
        });

    });


</script>




</body>

</html>