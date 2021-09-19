// email 자동 완성
function selectEmailChk() {
	// 직접 입력 - email2 초기화
	if(document.modifyUser.email3.value == 0) {
		document.modifyUser.email2.value = ""; // input 초기화
		document.modifyUser.email2.focus();
	//직접 입력이 아닌 경우 email3.value를 email2.value로 설정
	} else {
		document.modifyUser.email2.value = document.modifyUser.email3.value;
	}
}



//다음 주소입력 API
function addressSearch() {
      new daum.Postcode({
          oncomplete: function(data) {
          	
          	//우편번호
              document.getElementById('postcode').value = data.zonecode;
             
              //시도
              document.getElementById('sido').value = data.sido;
           
              //구군
              document.getElementById('sigungu').value = data.sigungu;
        
          }
      }).open();
  }

