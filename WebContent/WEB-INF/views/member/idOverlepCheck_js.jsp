<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<script>
	$(function(){
		$('#idCheck').click(function(e){
			var user_id =$('#id').val();
			$.ajax({
				url:'<%=request.getContextPath() %>/member/idCheck_js?id='+user_id,
				type:'get',
				success:function(data){
					if(data == ""){
						$('#id_check').text("사용가능");
						$('#id_check').css("color", "red");
						$('input[name="checkID"]').val(user_id);
					}else{
						$('#id_check').text("사용중");
						$('#id_check').css("color", "blue");
					}
				},
				error:function(err){
					alert("상태 : " + err.status);
				}
				
			})
		})
	})
</script>