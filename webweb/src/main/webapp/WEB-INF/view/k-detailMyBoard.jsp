<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>내 글</title>
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
</head>
<style>
#hidden {
	display: none;
}
#back{
	margin-left : 4%;
}
h5{
	color: red;
}
</style>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>
		<div class="wrapper style2">
		<section class="container">
			<h3>나의 글</h3>
			<c:url value="/myDetailBoardReturn" var="myDetailBoardReturn" />
				<form method="get" action="${myDetailBoardReturn}">
								<h2>제목</h2>
								<h3>${board.boardTitle}</h3>
								<label for="title">첫번째 글</label>
								<h3>${board.boardLine1}</h3>
								<h5>코멘트</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine1 }</h6>
								</c:forEach>
								<br>
								<label for="title">두번째 글</label>
								<h3>${board.boardLine2 }</h3>
								<h5>코멘트</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine2 }</h6>
								</c:forEach>
								<br>
								<label for="title">세번째 글</label>
								<h3>${board.boardLine3 }</h3>
								<h5>코멘트</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine3 }</h6>
								</c:forEach>
								<br>
								<label for="title">네번째 글</label>
								<h3>${board.boardLine4 }</h3>
								<h5>코멘트</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine4 }</h6>
								</c:forEach>
								<br>
								<label for="title">다섯번째 글</label>
								<h3>${board.boardLine5 }</h3>
								<h5>코멘트</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine5 }</h6>
								</c:forEach>
								<br>
								<label for="title">여섯번째 글</label>
								<h3>${board.boardLine6 }</h3>
								<h5>코멘트</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine6 }</h6>
								</c:forEach>
								<br>
								<label for="title">일곱번째 글</label>
								<h3>${board.boardLine7 }</h3>
								<h5>코멘트</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine7 }</h6>
								</c:forEach>
								<br>
								<label for="title">여덟번째 글</label>
								<h3>${board.boardLine8 }</h3>
								<h5>코멘트</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine8 }</h6>
								</c:forEach>
								<br>
								<label for="title">아홉째 글</label>
								<h3>${board.boardLine9 }</h3>
								<h5>코멘트</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine9 }</h6>
								</c:forEach>
								<br>
								<label for="title">열번째 글</label>
								<h3>${board.boardLine10 }</h3>
								<h5>코멘트</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine10 }</h6>
								</c:forEach>
								<br>
								<label for="title">작성 언어 : </label>
								${board.lanuage}<br>
								<div id="hidden">
									<input type="text" id="boardNo"
									 value="${board.boardNo }" name="boardNo">
								</div><br>
							<input type="submit" value="삭제"></input>
							<a href="k-main"><input id="back" type="button" value="돌아가기"></a>
						</form>
		</section>
	</div>
	<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
</html>