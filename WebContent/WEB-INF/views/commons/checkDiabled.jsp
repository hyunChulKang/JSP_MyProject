<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<script>
	alert("접근제한!");
	if(window.opener){
		window.close();
	}else{
		histroy.go(-1);
	}
</script>