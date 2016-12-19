<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>作文</title>
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
</style>
<body>
	<jsp:include page="../layout/cheader.jsp"></jsp:include>
		<div class="wrapper style2">
		<section class="container">
			<h3>作文</h3>
				<sform:form method="post" action="cwriteBoard" modelAttribute="board">
								<label for="title">标题</label>
								<sform:input path="boardTitle" placeholder="title"/><br>
								<label for="title">第一句子</label>
								<sform:input path="boardLine1"  placeholder="Line1"  /><br>
								<label for="title">第二句子</label>
								<sform:input path="boardLine2"  placeholder="Line2"  /><br>
								<label for="title">第三句子</label>
								<sform:input path="boardLine3"  placeholder="Line3"  /><br>
								<label for="title">第四句字</label>
								<sform:input path="boardLine4"  placeholder="Line4"  /><br>
								<label for="title">第五句字</label>
								<sform:input path="boardLine5"  placeholder="Line5"  /><br>
								<label for="title">第六句字</label>
								<sform:input path="boardLine6"  placeholder="Line6"  /><br>
								<label for="title">第七句字</label>
								<sform:input path="boardLine7"  placeholder="Line7"  /><br>
								<label for="title">第八句子</label>
								<sform:input path="boardLine8"  placeholder="Line8"  /><br>
								<label for="title">第九句字</label>
								<sform:input path="boardLine9"  placeholder="Line9"  /><br>
								<label for="title">第十句字</label>
								<sform:input path="boardLine10"  placeholder="Line10"  /><br>
								<label for="title">用的语言</label>
								<sform:select path="lanuage">
								<sform:option value="korean">韩语</sform:option>
								<sform:option value="japanese">日语</sform:option>
								<sform:option value="chinese">汉语</sform:option>
								<sform:option value="english">英语</sform:option>
								</sform:select><br>
								<div id="hidden">
									<sform:input path="boardNo" />
									<sform:input path="userNo" />
									<sform:input path="boardDate" />
								</div><br>
							<input type="submit" value="写句子"></input>
							<a href="c-main"><input type="button" value="回到" id="back"></a>
						</sform:form>
		</section>
	</div>
	<jsp:include page="../layout/cfooter.jsp"></jsp:include>
</body>
</html>