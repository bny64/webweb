<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>기도문</title>
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
	h1{
		margin:0 auto;
		margin-top: 10%;
		margin-left: 20%;
		font-size: 30px;
		margin-bottom: 5%;
	}
	label{
	margin-top:100%;
	color:white;
	margin-left: 20%;
	}
	input{
	width:30%;
	
	margin-left: 20%;
	}
	a{
		margin-left: 20%;
	}
	
</style>
</head>
<body>
<h1>회원 가입</h1>
	<label>이름</label><br>
	<input type="text" id="name" name="name"><br>
	<label>ID</label><br>
	<input type="text" id="id" name="id"><br>
	<label>패스워드</label><br>
	<input type="password" id="password" name="password"><br>
	<label>이메일</label><br>
	<input type="text" id="email" name="email"><br>
	<a href="#"><button>가입</button></a>
</body>
</html>