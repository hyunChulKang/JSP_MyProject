<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<script>
	alert("로그인필터에 걸림");
	if(window.opener){
		alert("세션이 만료되었습니다.\n다시 로그인하시기 바랍니다.");
		window.close();
		window.opener.location.href="<%=request.getContextPath()%>/commons/login";
	}else{
		location.href="<%=request.getContextPath()%>/commons/login";
	}
</script>
</body>
</html>