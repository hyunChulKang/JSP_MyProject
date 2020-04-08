<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<script>
	$('input#inputFile').on('change',function(event){
		$('input[name="checkUpload"]').val(0);	
		var fileFormat= this.value.substr(this.value.lastIndexOf(".")+1).toUpperCase();
		if(fileFormat!="JPG"){
			alert("이미지는 jpg 형식만 가능합니다.");
			return;
		}
		if(this.files[0].size>1024*1024*1){
			alert("사진 용량은 1MB 이하만 가능합니다.");
			return;
		};
		
		document.getElementById('inputFileName').value=this.files[0].name;
		
		if(this.files && this.files[0]){
			var reader = new FileReader();
			
			reader.onload = function(e){
				//이미지 미리보기
				$('div#pictureView'). css({'background-image':'url('+e.target.result+')',
					'background-position' :'center',
					'background-size':'cover',
					'background-repeat':'no-repeat'
				});
			}
			reader.readAsDataURL(this.files[0]);
		}
	});
</script>