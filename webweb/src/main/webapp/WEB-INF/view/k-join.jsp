<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>
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
img{
	height : 30%;
	width :  30%;
}
	h1{
		margin:0 auto;
		margin-top: 10%;
		font-size: 30px;
		margin-bottom: 5%;
	}
	label{
		color : black;
		padding : 0;
	}
	#join{
	margin : 0 auto;
	text-align : center;
	width : 30%;
	}
	select{
	margin-left : 10%;
	margin-bottom : 10%;
	}
</style>
</head>
<body>
<div class="wrapper style1">
			<!-- Banner -->
			<div id="banner">
				<section class="container">
					<h2>WEB PROGRAMMING</h2>
					<span>tel : 012-345-6789</span>
					<p>우리와 같이 외국어를 배워요.</p>
				</section>
			</div>

		</div>

<div class="wrapper style2">
		<section class="container">
		<div id="join">
		<c:url value="/join2" var="join2"/>
		<form method="post" action="${join2 }">
			<h1>회원 가입</h1>
				<label>이름</label><br>
				<input type="text" id="name" name="name"><br>
				<label>ID</label><br>
				<input type="text" id="id" name="id"><br>
				<label>패스워드</label><br>
				<input type="password" id="password" name="password"><br>
				<label>이메일</label><br>
				<input type="email" id="email" name="email"><br>
				<label>모국어</label>
				<select id="lanuage" name="lanuage">
				<option value="korean">한국어</option>
				<option value="japanese">일본어</option>
				<option value="chinese">중국어</option>
				<option value="english">영어</option>
				</select><br>
				<h6>처음 가입시 10포인트가 적립됩니다</h6><br>
				
				<input type="submit" value="가입">
				</form><br>
				<c:url value="/back" var="back"/>
				<a href="${back }"><input type="button" value="돌아가기"></a>
				</div>
		</section>
	</div>
	<div class="wrapper style5">
		<section id="team" class="container">
			<header class="major">
				<h2>다양한 언어로 접속할 수 있습니다</h2>
			</header>
			<div class="row">
				<div class="3u">
					<a href="k-index" class="image"><img src="<%=request.getContextPath()%>/img/korea.png"	alt=""></a>
					<h3>한국어</h3>
					<p>한국어 페이지로 이동하시려면 버튼을 눌러주세요.</p><br>
					<P>해당 언어로 접속할 경우 로그아웃과 함께 메인 페이지로 이동합니다</P>
				</div>
				<div class="3u">
					<a href="j-index" class="image"><img src="<%=request.getContextPath()%>/img/japan.jpg"	alt=""></a>
					<h3>日本語</h3>
					<p>日本語のページを移動するためにはボータンを押して下さい</p><br>
					<p>この言語で接続する場合ログアウトとともにメインページに移動します</p>
				</div>
				<div class="3u">
					<a href="c-index" class="image"><img src="<%=request.getContextPath()%>/img/china.jpg"	alt=""></a>
					<h3>汉语</h3>
					<p>想要打开中文网站请点击这里</p>
					<p>如果您打开汉语网站，先退出然后打开</p>
				</div>
				<div class="3u">
					<a href="e-index" class="image"><img src="<%=request.getContextPath()%>/img/america.jpg"	alt=""></a>
					<h3>english</h3>
					<p>if you want to change this page what is written by english, please push this button</p>
					<p>if you click another lanuage, this page is changed main page with logout</p>
				</div>
			</div>
		</section>
	</div>

	<!-- Footer -->
	<div id="footer">
		<section class="container">
			<header class="major">
				<h2>Connect with us</h2>
				<span class="byline">관리자 정보 보기</span>
			</header>
			<ul class="icons">
				<li><a href="#" class="fa fa-dribbble" id="drible"><span>Pinterest</span></a></li>
			</ul>
			<hr />
		</section>

		<!-- Copyright -->
		<div id="copyright">
			Design: <a href="http://templated.co">TEMPLATED</a> Images: <a
				href="http://unsplash.com">Unsplash</a> (<a
				href="http://unsplash.com/cc0">CC0</a>)
		</div>
	</div>
</body>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
	$("#password").on("focusout",function(){
		var reg = /^[0-9a-zA-Z]{6,10}$/g;
		var password = $("#password").val();
		if((reg.test(password) === false)){
			alert("비밀번호는 6~10자리 사이 영문과 숫자로 입력해 주세요");
			$("#password").val("");
		}
	})
</script>
</html>
