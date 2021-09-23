$("document").ready(function() {
   // 2번 탭 클릭시 ajax 발동
   $("a[href='#tab-2']").click(function() {
      var header = $("meta[name='_csrf_header]").attr("content");
      var token = $("meta[name='_csrf']").attr("content");
      
      $.ajax({
          url : "salesTypeStatics",
          type : "Post",
          beforesend : function(xhr) {
             console.log("beforesend 진행");
             xhr.setRequestHeader("${_csrf.headerName}","${_csrf.token}");
          },
          success : function(result, jqXHR) {
             $(".tab-content").html(result);
          },
          error : function(jqXHR, error) {
             alert("다시 시도해주세요.");
             window.history.back();
          }
          
       });
      
      /*
      // "Get" 으로 하면 먹기는 하는데... 왜 Post로 시큐리티가 안 뚫어지는 걸까ㅠ
      $.ajax({
         url : "salesTypeStatics",
         type : "Get",
         beforesend : function(jqXHR, settings) {
            console.log("beforesend 진행");
            jqXHR.setRequestHeader(header, token);
         },
         success : function(result) {
            $(".tab-content").html(result);
         },
         error : function(error) {
            alert("다시 시도해주세요.");
            window.history.back();
         }
         
      });
      
      */
   });
   
});