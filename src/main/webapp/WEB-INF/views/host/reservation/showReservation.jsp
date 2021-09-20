<!-- 
이름 : 이시현
작성날짜 : 2021-09-16 ~ 2021-09-16 
완료된 예약서비스에 따른 회원목록 조회
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title> 예약조회 </title>
</head>

<body>

<div class="panel-body">
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row">
		    <div class="col-lg-12">
	    <div class="ibox ">
	        <div class="ibox-title">
                    
                        <h5>예약 상태가 완료된 회원의 목록을 보여줍니다.</h5>
                    </div>
                    
          
                    <div class="ibox-content">
                        <div class="table-responsive">
		                    <table class="table table-striped table-bordered table-hover dataTables-example">
		                    <thead>
		                    <tr>
		                        <th>예약코드</th>
		                       	<th>상태</th>
		                        <th>날짜</th>
		                        <th>시간</th>
		                        <th>담당자</th>
		                        <th>회원아이디</th>
		                        <th>인원수</th>
		                        <th>특별요청</th>
		                        <th>서비스</th>
		                        <th>내용</th>
		                        <th>호실</th>
		                       
		                    </tr>
		                    </thead>
		                    <tbody>
		                    <tr class="gradeX">
		                        <td>13579864</td>
		                        <td>완료</td>
		                        <td>2021년 8월 15일</td>
		                        <td>13시</td>
		                        <td class="center">47963번</td>
		                        <td class="center">pilot1234</td>
		                        <td>3명</td>
		                        <td>좋은 서비스 제공해주세요</td>
		                        <td>헤어펌</td>
		                        <td class="center">헤어펌과 두피케어</td>
		                        <td class="center">R310호</td>
		                    </tr>
		                    </tbody>
		                    </table>
                        </div>

                    </div>
                </div>
            
            
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

    <script src="js/plugins/dataTables/datatables.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- Page-Level Scripts -->
    <script>

        // Upgrade button class name
        $.fn.dataTable.Buttons.defaults.dom.button.className = 'btn btn-white btn-sm';

        $(document).ready(function(){
            $('.dataTables-example').DataTable({
                pageLength: 25,
                responsive: true,
                dom: '<"html5buttons"B>lTfgitp',
                buttons: [
                    { extend: 'copy'},
                    {extend: 'csv'},
                    {extend: 'excel', title: 'ExampleFile'},
                    {extend: 'pdf', title: 'ExampleFile'},

                    {extend: 'print',
                     customize: function (win){
                            $(win.document.body).addClass('white-bg');
                            $(win.document.body).css('font-size', '10px');

                            $(win.document.body).find('table')
                                    .addClass('compact')
                                    .css('font-size', 'inherit');
                    }
                    }
                ]

            });

        });

    </script>









</body>

</html>
