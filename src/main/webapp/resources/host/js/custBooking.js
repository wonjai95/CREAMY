$(document).ready(function() {

        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green'
        });

    /* initialize the external events
     -----------------------------------------------------------------*/


    $('#external-events div.external-event').each(function() {

        // store data so the calendar knows to render an event upon drop
        $(this).data('event', {
            title: $.trim($(this).text()), // use the element's text as the event title
            stick: true // maintain when user navigates (see docs on the renderEvent method)
        });

        // make the event draggable using jQuery UI
        $(this).draggable({
            zIndex: 1111999,
            revert: true,      // will cause the event to go back to its
            revertDuration: 0  //  original position after the drag
        });

    });


    /* initialize the calendar
     -----------------------------------------------------------------*/
    var date = new Date();
    var d = date.getDate();
    var m = date.getMonth();
    var y = date.getFullYear();

    $('#calendar').fullCalendar({
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month'
        },
        editable: true,
        droppable: true, // this allows things to be dropped onto the calendar
        selectable: true,
        
        drop: function() {
            // is the "remove after drop" checkbox checked?
            if ($('#drop-remove').is(':checked')) {
                // if so, remove the element from the "Draggable Events" list
                $(this).remove();
            }
        },
        
       dayClick: function(date, allDay, jsEvent, view) {
           
          if (date.isBefore(moment())) {
              alert("과거 날짜로 예약할 수 없습니다!")
           } else {
              m = date.format()
                alert('Clicked on: ' + m);
              
              var getDay = new Date(m).getDay();
              var getTime = new Date().getHours();
              // 월 ~ 일 : 1~7
              console.log("요일 : " + getDay + ", 시간 : " + getTime);
              
              var header = $("meta[name='_csrf_header']").attr("content");
              var token = $("meta[name='_csrf']").attr("content");
              console.log("header : " + header);
              console.log("token : " + token);
              
              $.ajax({
            	  url : "bookingTimeTable",
            	  type : "Post",
            	  data : "day=" + getDay + "&time=" + getTime,
            	  beforeSend : function(jqXHR, settings) {
            		  console.log("beforesend 진행");
                      jqXHR.setRequestHeader(header, token);
            	  },
            	  success : function(result) {
            		  $("#timeTable").html(result);
            	  },
            	  error : function(error) {
            		  
            	  }
            	  
              });
              

            $('.res_date').html(m);
           }
        
        }, 
    });

    
    // 인원수 감소
    $("#GuestCountMinus").click(function(){
       var newCnt;
       var cnt = $("#GuestCount").val();
       if(cnt == 0) {
          newCnt = 0;
       } else {
          newCnt = parseInt(cnt) - 1;
       }
       $("#GuestCount").val(newCnt);
       
    });
    
    // 인원수 증가
    $("#GuestCountPlus").click(function(){
       var newCnt;
       var cnt = $("#GuestCount").val();
         newCnt = parseInt(cnt) + 1;
       $("#GuestCount").val(newCnt);
       
    });
    
    // 시간 선택
    $("button[id^=timeBtn]").click(function() {
       var timeClick = $(this).attr('value');
       $('#selectTime').val(timeClick);
       $('.timeSelectedInfo').html(timeClick);
    });
    
    // 수업 선택
    $("button[id^=typeBtn]").click(function() {
       var typeClick = $(this).attr('value');
       $('#selectType').val(typeClick);
       $('.typeSelectedInfo').html(typeClick);
    });
    
    // 호실 선택
    $("button[id^=roomBtn]").click(function() {
       var roomClick = $(this).attr('value');
       $('#selectRoom').val(roomClick);
       $('.roomSelectedInfo').html(roomClick);
    });
    
    // 담당자 선택
    $("button[id^=managerBtn]").click(function() {
       var managerClick = $(this).attr('value');
       $('#selectManager').val(managerClick);
       $('.managerSelectedInfo').html(managerClick);
    });
    
    // 결제 상품 선택 
    $("input[name=ReserveProduct]").click(function() {
       var productClick = $(this).attr('value');
       console.log(productClick);
       var productPrice = $('input[id$=price_'+productClick+']');
       console.log(productPrice.val());
       $('#ReserveProductSum').val(productPrice.val());
       
       var productPrice_format = addComma(productPrice.val());
       
       $('.productSelectedInfo').html(productPrice_format);
       
    });
    
  //천단위 콤마 함수
  function addComma(value){
       value = value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
       return value; 
  };

  //천단위 콤마 함수
  function minusComma(value){
       value = value.toString().replace(/[^\d]+/g, "");
       return value; 
  };
  
  
  // -------------- 지도 api --------------
  
  var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
  mapOption = {
      center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
      level: 3 // 지도의 확대 레벨
      };  
   
     // 지도를 생성합니다    
     var map = new kakao.maps.Map(mapContainer, mapOption); 
   
     // 주소-좌표 변환 객체를 생성합니다
     var geocoder = new kakao.maps.services.Geocoder();
   
     // 주소로 좌표를 검색합니다
     geocoder.addressSearch('서울 금천구 가산디지털2로 123 월드메르디앙벤처센터II', function(result, status) {
   
         // 정상적으로 검색이 완료됐으면 
          if (status === kakao.maps.services.Status.OK) {
   
             var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
   
             // 결과값으로 받은 위치를 마커로 표시합니다
             var marker = new kakao.maps.Marker({
                 map: map,
                 position: coords
             });
   
             // 인포윈도우로 장소에 대한 설명을 표시합니다
         var infowindow = new kakao.maps.InfoWindow({
             content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
             });
             infowindow.open(map, marker);
   
             // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
         map.setCenter(coords);
     } 
 });    
  
  
    
});