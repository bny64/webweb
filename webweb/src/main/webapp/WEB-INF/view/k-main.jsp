<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.example.dto.*, java.util.*"%>
<html>
<head>
<meta charset="utf-8">
<title>메인 페이지</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.dropotron.min.js"></script>
<script src="<%=request.getContextPath()%>/js/skel.min.js"></script>
<script src="<%=request.getContextPath()%>/js/skel-layers.min.js"></script>
<script src="<%=request.getContextPath()%>/js/init.js"></script>
<script src="<%=request.getContextPath()%>/css/font-awesome.min.js"></script>
<script src="<%=request.getContextPath()%>/css/skel.js"></script>
<script src="<%=request.getContextPath()%>/css/style.js"></script>
<script src="<%=request.getContextPath()%>/css/style-mobile.js"></script>
<script src="<%=request.getContextPath()%>/css/style-narrow.js"></script>
<script src="<%=request.getContextPath()%>/css/style-narrower.js"></script>
<script src="<%=request.getContextPath()%>/css/style-normal.js"></script>
<script src="<%=request.getContextPath()%>/css/style-wide.js"></script>
<script src="<%=request.getContextPath()%>/img/banner.jpg"></script>
<script src="<%=request.getContextPath()%>/img/placeholder.png"></script>

<style>
h1 {
	margin: 0 auto;
	margin-top: 10%;
	font-size: 30px;
	margin-bottom: 5%;
}

label {
	color: black;
	padding: 0;
}

#join {
	margin: 0 auto;
	text-align: center;
	width: 30%;
}

select {
	margin-left: 10%;
	margin-bottom: 10%;
}

.wrapper style2 {
	text-align: center;
	margin: 0 auto;
}

#write {
	margin-top: 1%;
	margin-bottom: 1%;
}
table{
	border : 1px solid gray;
	margin-top : 1%;
}
.6u{
	overflow: scroll;
}
#all{
	margin-right : 2%;
	height : 10%;
}

</style>

</head>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>

	<div class="wrapper style2">
		<section class="container">
			<div class="row double">
				<div class="6u" id="leftDiv">
				<h3>게시글 목록</h3>
				<input id="all" type="button" value="전체보기">
					<input id="lanuage" type="button" value="내 언어만 보기"><br>
					<%-- <c:url value="/detailBoard" var="detailBoard" />
						<c:forEach var="lanuageBoard" items="${lanuageBoard}">
						<tr id="lanuageList">
						<td align="center"><a href="${detailBoard}?boardNo=${lanuageBoard.boardNo}">${lanuageBoard.boardTitle}</a></td>

						</c:forEach> --%>
				</div>
				<div class="6u" id="rightDiv">
					<h3>내 게시글 목록</h3>
				</div>
			</div>
		</section>
	</div>
	<div class="wrapper style1">
		<section class="container">
			<c:url value="/writeBoard" var="writeBoard" />
			<a href="${writeBoard }"><input type="button" value="게시물 작성"
				style="text-align: right" id="write"></a>
		</section>
	</div>
	<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
<script src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">

window.onload = function() { 
	lanuageBoard();
	myBoard();
	};

$("#lanuage").on("click",function(){
	$("#leftDiv>table").remove();
	lanuageBoard();
})
$("#all").on("click",function(){
	$("#leftDiv>table").remove();
	allBoard();
})
function allBoard(){
	<c:url value="/allBoard" var="allBoard"/>
		 $.ajax({
				type : "get",
				url : "${allBoard}",
				dataType : "json",
				data : {
				},
				success:function(res){	
					console.log(res);
					 $mainContents = $("#leftDiv");
					$(res).each(function(idx,data){
							<c:url value="/detailBoard" var="detailBoard" />
							console.log(data);
							$newOne = "<table id='table1'><tr><td align='center'><h3>제목</h3><tr><td align='center'><a href=${detailBoard}?boardNo="+data.boardNo+">"+data.boardTitle+"</a><br>작성언어 : "+data.lanuage+"</td></table>";		
							$mainContents.append($newOne);
						}
					) 
				},
				error:function(request,status,error){
					console.log("잘못된 접근 입니다");  
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
}
function lanuageBoard(){
	<c:url value="/lanuageBoard" var="lanuageBoard"/>
		 $.ajax({
				type : "get",
				url : "${lanuageBoard}",
				dataType : "json",
				data : {
				},
				success:function(res){	
					console.log(res);
					 $mainContents = $("#leftDiv");
					$(res).each(function(idx,data){
							<c:url value="/detailBoard" var="detailBoard" />
							console.log(data);
							$newOne = "<table id='table1'><tr><td align='center'><h3>제목</h3><tr><td align='center'><a href=${detailBoard}?boardNo="+data.boardNo+">"+data.boardTitle+"</a><br>작성언어 : "+data.lanuage+"</td></table>";		
							$mainContents.append($newOne);
						}
					) 
				},
				error:function(request,status,error){
					console.log("잘못된 접근 입니다");  
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
}

function myBoard(){
	<c:url value="/myBoard" var="myBoard"/>
		 $.ajax({
				type : "get",
				url : "${myBoard}",
				dataType : "json",
				data : {
				},
				success:function(res){	
					console.log(res);
					 $mainContents = $("#rightDiv");
					$(res).each(function(idx,data){
							<c:url value="/detailMyBoard" var="detailMyBoard" />
							console.log(data);
							$newOne = "<table><tr><td align='center'><h3>제목</h3><tr><td align='center'><a href=${detailMyBoard}?boardNo="+data.boardNo+">"+data.boardTitle+"</a><br>작성언어 : "+data.lanuage+"</td></table>";		
							$mainContents.append($newOne);
						}
					) 
				},
				error:function(request,status,error){
					console.log("잘못된 접근 입니다");  
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
}
</script>
</html>