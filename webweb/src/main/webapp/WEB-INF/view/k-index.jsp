<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<title>Welcome</title>
<meta charset="utf-8">
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
<noscript>
	<link rel="stylesheet" href="css/skel.css" />
	<link rel="stylesheet" href="css/style.css" />
</noscript>
<style>
#nav {
	margin-right: 70%;
}

input {
	width: 20%;
}
#login{
	margin : 0 auto;
	text-align : center;
	width : 30%;
}
#BtnLogin{
	margin : 0 auto;
	text-align : center;
}
img{
	height : 30%;
	width :  30%;
}
input[type="submit"],input[type="button"]{
	padding : 0;
	width : 100px;
}
</style>
</head>

<body class="homepage">

	<!-- Header Wrapper -->
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

	<!-- Section One -->
	<div class="wrapper style2">
		<section class="container">
				
					<div id="login">
						<h2>로그인</h2><br>
						<c:url value="/join" var="join"/>
						<c:url value="/login" var="login"/>
						<form method="post" action="${login }">
						<label>아이디</label><br>
						<input type="text" id="id" name="id"><br>
						<label>비밀번호</label><br>
						<input type="password" id="password" name="password"><br>
						<input type="submit" value="접속" id="BtnLogin">
						</form><br>
						<a href="${join}"><input type="button" value="회원가입"></a>
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

	<!-- Section Two -->
	<!-- Section Three -->
	<!-- Team -->
	
</body>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
	$("#drible")
			.on(
					"click",
					function() {
						<c:url value="/my" var="my"/>
						console.log($("#drible").val());
						window
								.open("${my}", "window",
										'height=400, Width=400, left=10, top=400, color=white, scrollbars=yes');
					});
	/* for(var i=0;i<3;i++){
	setInterval(function(){alert(i);}, 4000);
	}  */

	$("#name").on("focusout", function() {
		var name = $("#name").val();
		if (!(name.length >= 2 && name.length <= 4)) {
			alert("이름은 반드시 두 자리에서 네 자리까지 입력해야 합니다");
			$("#name").val("");
		}
	});

	$("#email")
			.on(
					"focusout",
					function() {
						var email = $("#email").val();
						var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
						if (regex.test(email) === false) {
							alert("잘못된 이메일 형식입니다. ex)abc@def.ghi");
							$("#email").val("");
						} else {
							// gogo  
						}
					});

	$("#phone").on("focusout", function() {
		var phone = $("#phone").val();
		var regex = /(01[0|1|6|9|7])[-](\d{3}|\d{4})[-](\d{4}$)/g;
		if (regex.test(phone) === false) {
			alert("휴대본 번호 형식이 맞지 않습니다. ex)000-000-0000");
			$("#phone").val("");
		}
	});

	$("#joinBtn").on("click", function() {
		var array = $("input").val();
		
	});
	//kmj0907@kitri.re.kr
	$("#calendar").on("click",function() {
						<c:url value="/calendar" var="calendar" />
						window.open("${calendar}", "캘린더",'height=500, Width=700, left=440, top=300, color=white');
					});

	$("#map").on("click",function() {
						<c:url value="/map" var="map" />
						window.open("${map}", "지도",'height=500, Width=700, left=440, top=300, color=white');
					});
</script>
</html>