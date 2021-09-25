$(document).ready(function() {

        

    

    
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
    	alert('클릭하시겠어요?');
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