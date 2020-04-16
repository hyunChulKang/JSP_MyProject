	function OpenWindow(UrlStr, WinTitle, WinWidth, WinHeight){
		winleft =(screen.width - WinWidth) /2;
		wintop = (screen.height - WinHeight) /2;
		var win = window.open(UrlStr, WinTitle, "scrollbars=yes, width=" + WinWidth +", " +"height="+ WinHeight +", top=" +wintop
								+", left=" +winleft +", resizable=yes, status=yes");
		win.focus();
	}
	
	function CloseWindow(){
		window.opener.location.reload(true);
		window.close();
	}
	
	function SubmitMemberRegist(formRole){
		var uploadCheck = $('input[name="checkUpload"]').val();
		if(!(uploadCheck>0)){
			alert("업로드한 사진이 없습니다.");
			return;
		}
		
		if(!$('input[name="id"]').val()){
			alert("아이디를 입력하세요!");
			$('input[name="id"]').focus();
			return;
		}
		
		if($('input[name="id"]').val() != $('input[name="checkID"]').val()){
			alert("사용중인 아이디입니다.");
			$('input[name="id"]').focus();
			return;
		}
		
		if(!$('input[name="checkPWD"]').val()){
			alert("패스워드를 입력하세요!");
			$('input[name="checkPWD"').focus();
			return;
		}
		
		if($('input[name="checkPWD"]').val() != $('input[name="checkPWD"]').val()){
			alert("부적합한 패스워드입니다.!");
			$('#pwd_check').text("부적합");
			$('#pwd_check').css("color", "red");
			$('input[name="checkPWD"').focus();
			return;
		} 
		var form =$('form[role="form"]');
		form.submit();
	}
	
	function SubmitModify(form){
		var forms= $('form[role="form"]');
		forms.submit();
	}