<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<script>
	$('input#inputFile').on('change',function(event){
		$('input[name="checkUpload"]').val(0);
		var fileFormat = this.value.substr(this.value.lastIndexOf(".")+1).toUpperCase();
		if(fileFormat!="JPG"){
			alert("이미지는 jpg 형식만 가능합니다.");
			return;
		}
		if(this.files[0].size>1024*1024*1){
			alert("사진용량은 1 MB 이하만 가능합니다");
			return
		};
		
		document.getElementById('inputFileName').value=this.files[0].name;
		
		if(this.files && this.files[0]){
			var reader = new FileReader();
			
			reader.onload = function(e){
				//이미지 미리보기
				$('div#pictureView').css({'background-image':'url('+e.target.result+')',
					'background-position' :'center',
					'background-size' : 'cover',
					'background-repeat' :'no-repeat'
				});
			}
			reader.readAsDataURL(this.files[0]);
		}
	});
			
	function upload_go(){
		//form 태그 양식을 객체화
		var form = new FormData($('form[role="imageForm"]')[0]);
		
		if($('input[name="pirctureFile"]').val()==""){
			alert("사진을 선택하세요");
			$('input[name="pirctureFile"]').click();
			return;
		};
		$.ajax({
			url: "<%=request.getContextPath()%>/member/picture.do",
			data:form,
			type:'post',
			processData:false,
			contentType:false,
			success:function(data){
				$('input#oldFile').val(data);
				$('form[role="form"]> input[name="picture"]').val(data);
				$('input[name="checkUpload"]').val(1);
				alert("사진을 업로드 했습니다.");
			},
			error:function(xhr,exception){
				alert("파일업로드를 실패 했습니다.");
			}
		});
}

</script>