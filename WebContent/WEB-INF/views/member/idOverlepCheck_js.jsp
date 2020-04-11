<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<script>
	function idCheck(){
			var user_id =$('#id').val();
			$.ajax({
				url:'<%=request.getContextPath() %>/member/idCheck_js?id='+user_id,
				type:'get',
				success:function(data){
					if(data == ""){
						$('#id_check').text("사용가능");
						$('#id_check').css("color", "green");
						$('input[name="checkID"]').val(user_id);
					}else{
						$('#id_check').text("사용중");
						$('#id_check').css("color", "red");
					}
				},
				error:function(err){
					alert("상태 : " + err.status);
				}
				
			})
	}
	function pwdCheck(text){
		var	 checkText = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{1,50}).{20,50}$/;
		var user_pwd=$('#pwd').val();
		if(checkText.test(user_pwd)){
			$('#pwd_check').text("적합");
			$('#pwd_check').css("color", "green");
			$('input[name=checkPWD]').val(user_pwd);
		}else{
			$('#pwd_check').text("부적합");
			$('#pwd_check').css("color", "red");
		}
	}
</script>