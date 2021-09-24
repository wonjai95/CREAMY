$(document).ready(function() {
	
    // 시간 선택
    $("button[id^=managerBtn]").click(function() {
       var employeeBtn = $(this).attr('value');
       $('#selectManager').val(timeClick);
       $('.managerSelectedInfo').html(timeClick);
       
       
    });
    
    
    
});