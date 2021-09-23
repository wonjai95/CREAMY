$("document").ready(function() {
   // 2번 탭 클릭시 ajax 발동
   $("a[href='#tab-2']").click(function() {
	  console.log("탭2 클릭");
	  var header = "X-CSRF-TOKEN";
      var token = $("meta[name='_csrf']").attr("content");
      console.log("header : " + header);
      console.log("token : " + token);

      $.ajax({
         url : "salesTypeStatics",
         type : "Post",
         beforeSend : function(jqXHR, settings) {
            console.log("beforesend 진행");
            jqXHR.setRequestHeader(header, token);
         },
         success : function(result) {
            $(".tab-content").html(result);
         },
         error : function(error) {
            alert("다시 시도해주세요.");
            console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            window.history.back();
         }
         
      });
   });
   
});

//
//$.ajax({
//  url : "salesTypeStatics",
//  type : "Post",
//  beforeSend : function(xhr) {
//     console.log("beforesend 진행");
//     xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
//  },
//  success : function(result, jqXHR) {
//     $(".tab-content").html(result);
//  },
//  error : function(jqXHR, error) {
//     alert("다시 시도해주세요.");
//     window.history.back();
//     alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
//  }
//
//});
// "Get" 으로 하면 먹기는 하는데... 왜 Post로 시큐리티가 안 뚫어지는 걸까ㅠ