<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<title>회원목록</title>
</head>
<body>
<div class="content_wrapper" >
		<!-- Content Header (Page header) -->
		  <section class="content-header col-sm-12">
		  	<div class="container-fluid">
		  		<div class="row md-2">
		  			<div class="col-sm-6">
		  				<h4 style="padding-left: 7.5px;">회원리스트</h4>
		  			</div>
		  			<div class="col-sm-6">
		  				<ol class="breadcrumb float-sm-right">
					        <li class="breadcrumb-item">
					        	<a href="lis">
						        	<i class="fa fa-dashboard"></i> 회원관리
						        </a>
					        </li>
					        <li class="breadcrumb-item active">
					        	회원리스트
					        </li>		        
    	  				</ol>
  					</div>
  				</div>
  			</div>
  		</section>
  		
       <!-- Main content -->
    	<section class="content" style="padding: 0 .5rem;">
    	  <div class="card">    
    	  	<div class="card-header with-border">
    	  		<div class="col-sm-6 float-sm-left">
    	  		<c:if test="${loginUser.authority eq 'ROLE_ADMIN' }" >
    	  			<button type="button" class="btn btn-primary insertbtn" 
    	  			onclick="OpenWindow('registForm.do ','회원등록',448,739);" >회원등록</button>
    	  		</c:if>
    	  		</div>
    	  		<div class="col-sm-6 float-sm-left ">
    	  		<div id="keyword" textbox="seachtext" class="card-tools searchtext" >
				  <div class="input-group row">		
				  <!-- search bar -->	  										
					<select class="form-control col-md-4" name="searchType" id="searchType">
						<option value=""  ${pageMaker.cri.searchType eq '' ? 'selected':''}>검색구분</option>
						<option value="i"  ${pageMaker.cri.searchType eq 'i' ? 'selected':''}>아이디</option>
						<option value="p"  ${pageMaker.cri.searchType eq 'p' ? 'selected':''}>전화번호</option>
						<option value="e"  ${pageMaker.cri.searchType eq 'e' ? 'selected':''}>이메일</option>
					</select>			
					<input  class="form-control" type="text" name="keyword" 
					placeholder="검색어를 입력하세요." value="${param.keyword }"/>
					<span class="input-group-append">
						<button class="btn btn-primary" type="button" 
						id="searchBtn" data-card-widget="search" onclick="searchList_go(1);">
							<i class="fa fa-fw fa-search"></i>
						</button>
					</span>
					<!-- end : search bar -->
				  </div>
				 </div>
				 </div>  	  		
    	  	</div>	  
    		<div class="card-body" style="text-align:center;">
    		  <div class="row">
	             <div class="col-sm-12">
	             <div class="table-responsive">	
		    		<table class="table table-small-font table-bordered table-striped"> 
	             		<tr>	
	             			<th>아이디</th>
	             			<th>이  름</th>
	             			<th class="clears">패스워드</th>
	             			<th class="clears">이메일</th>
	             			<th class="clears">전화번호</th>
	             		</tr>

		            	<c:if test="${!empty memberList }">
		             		<c:forEach var="member" items="${memberList }">
		             			<tr>
		             				<td><a href="javascript:OpenWindow('detailForm.do?id=${member.id}','회원상세보기','583','805');">${member.id}</a></td>
		             				<td>${member.name}</td>
		             				<td class="clears">${member.pwd}</td>
		             				<td class="clears">${member.email}</td>
		             				<td class="clears">${member.phone}</td>
		             			</tr>
		             		</c:forEach>
		             	</c:if>
		             	<c:if test="${empty memberList }">
		             			<tr>
		             				<td colspan="5">해당 항목이 없습니다.</td>
		             			</tr>
		             	</c:if>
				 	</table>
				 	</div>	
            	</div>
           	</div>            
       	  </div>   
		  <div class="card-footer">
		  	<%@ include file="/WEB-INF/views/pagination/pagination.jsp" %>
		  </div> <!-- card-footer -->
        </div> <!-- card  -->
      </section>	
    </div>
</body>
