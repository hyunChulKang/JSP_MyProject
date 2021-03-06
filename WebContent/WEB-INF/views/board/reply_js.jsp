<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.6/handlebars.js" ></script>
<script type="text/x-handlebars-template" id="reply-list-template">
{{#each .}}
<div class="replyLi" data-rno={{rno}}>
	<i class="fas fa-comments bg-yellow"></i>
 	<div class="timeline-item" >
  		<span class="time">
    		<i class="fa fa-clock"></i>{{regdate}}
	 		<a class="btn btn-primary btn-xs" id="modifyReplyBtn"
	    		data-replyer={{replyer}} data-toggle="modal" data-target="#modifyModal">Modify</a>
  		</span>
	
  		<h3 class="timeline-header"><strong style="display:none;">{{rno}}</strong>{{replyer}}</h3>
  		<div class="timeline-body">{{replytext}} </div>
	</div>
</div>
{{/each}}
</script>
<script>
Handlebars.registerHeler("prettifyDate",function(timeValue){
	var dateObj =new Date(timeValue);
	var year=dateObj.getFullYear();
	var month=dateObj.getMonth()+1
	var date=dateObj.getDate();
	return year+"/"+month+"/"+date;
});


	var replyPage=1;
	getPage("<%=request.getContextPath()%>/replies/list.do?bno=${board.bno}&page="+replyPage);
	
	<%--스크립트 자체도 태그이기때문에  handlebars-template의 id값을 가져온다.--%>
	var printData= function(replyArr,target,templateObject){
		var template=Handlebars.compile(templateObject.html());
		var html =template(replyArr);
		$('.replyLi').remove();
		target.after(html); 
	}
	//reply list
	function getPage(pageInfo){
		$.getJSON(pageInfo,function(data){
			printData(data.replyList,$('#repliesDiv'),$('#reply-list-template'));
			printPage
		});
	}
	
	var printPaging=function(pageMaker,target){
		var str="";
		if(pageMaker.prev){
			str+="<li class='page-item'><a class='page-link' href'"+(pageMaker.startPage-1)+"'><i class='fas fa-angle-left'/></a></li>";
		}
		for(var i=pageMaker.startPage; i<=pageMaker.endPage; i++){
			var strClass = pageMaker.cri.page==i?'active':'';
			str+="<li class='page-item "+strClass+"'><a class='page-link' href='"+i+"'>"+i+"</a></li>";
		}
		if(pageMaker.next){
			str+="<li class='page-item'><a class='page-link' href='"+(pageMaker.endPage+1)+"'> <i class='fas fa-angle-right'/></a></li>";
		}
		target.html(str);
	}
	
	$('.pagination').on('click','li a',function(event){
		event.preventDefault();
		 replyPage=$(this).attr("href");
		 getPage("<%=request.getContextPath()%>/replies/list.do?bno=${board.bno}&page="+replyPage);
	});
	
</script>