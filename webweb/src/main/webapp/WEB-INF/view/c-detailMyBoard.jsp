<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>我的句子</title>
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
	<jsp:include page="../layout/cheader.jsp"></jsp:include>
		<div class="wrapper style2">
		<section class="container">
			<h3>我的句子</h3>
			<c:url value="/cmyDetailBoardReturn" var="cmyDetailBoardReturn" />
				<form method="get" action="${cmyDetailBoardReturn}">
								<h2>标题</h2>
								<h3>${board.boardTitle}</h3>
								<label for="title">第一句子</label>
								<h3>${board.boardLine1}</h3>
								<h5>跟帖</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine1 }</h6>
								</c:forEach>
								<br>
								<label for="title">第二句子</label>
								<h3>${board.boardLine2 }</h3>
								<h5>跟帖</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine2 }</h6>
								</c:forEach>
								<br>
								<label for="title">第三句子</label>
								<h3>${board.boardLine3 }</h3>
								<h5>跟帖</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine3 }</h6>
								</c:forEach>
								<br>
								<label for="title">第四句字</label>
								<h3>${board.boardLine4 }</h3>
								<h5>跟帖</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine4 }</h6>
								</c:forEach>
								<br>
								<label for="title">第五句字</label>
								<h3>${board.boardLine5 }</h3>
								<h5>跟帖</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine5 }</h6>
								</c:forEach>
								<br>
								<label for="title">第六句字</label>
								<h3>${board.boardLine6 }</h3>
								<h5>跟帖</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine6 }</h6>
								</c:forEach>
								<br>
								<label for="title">第七句字</label>
								<h3>${board.boardLine7 }</h3>
								<h5>跟帖</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine7 }</h6>
								</c:forEach>
								<br>
								<label for="title">第八句子</label>
								<h3>${board.boardLine8 }</h3>
								<h5>跟帖</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine8 }</h6>
								</c:forEach>
								<br>
								<label for="title">第九句字</label>
								<h3>${board.boardLine9 }</h3>
								<h5>跟帖</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine9 }</h6>
								</c:forEach>
								<br>
								<label for="title">第十句字</label>
								<h3>${board.boardLine10 }</h3>
								<h5>跟帖</h5>
								<c:forEach var="reboards" items="${reboards }">
								<h6>${reboards.boardLine10 }</h6>
								</c:forEach>
								<br>
								<label for="title">作成言語 : </label>
								${board.lanuage}<br>
								<div id="hidden">
									<input type="text" id="boardNo"
									 value="${board.boardNo }" name="boardNo">
								</div><br>
							<input type="submit" value="删略"></input>
							<a href="c-main"><input id="back" type="button" value="回到"></a>
						</form>
		</section>
	</div>
	<jsp:include page="../layout/cfooter.jsp"></jsp:include>
</body>
</html>