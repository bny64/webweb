<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta charset="utf-8">
<title>Welcome</title>
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
</head>
<style>
#nav {
	margin-right: 70%;
}
input{
	width: 20%;
}
</style>
<body class="homepage">

	<!-- Header Wrapper -->
	<div class="wrapper style1">

		<!-- Header -->
		<div id="header">
			<div class="container">

				<!-- Logo -->
				<h1>
					<a href="#" id="logo">Solarize</a>
				</h1>

				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li class="active"><a href="index.html"></a></li>
						<li><a href="">공주대학교</a>
							<ul>
								<li><a href="http://www.kongju.ac.kr/">Main homepage</a></li>
								<li><a href="http://portal.kongju.ac.kr/">portal site</a></li>
								<li><a href="https://library.kongju.ac.kr/">Library</a></li>
								<li><a href="http://career.kongju.ac.kr/">career</a></li>
							</ul></li>
					</ul>
				</nav>

			</div>
		</div>

		<!-- Banner -->
		<div id="banner">
			<section class="container">
				<h2>WEB PROGRAMMING</h2>
				<span>201001533</span>
				<p>저희 홈페이지에 오신 것을 환영합니다</p>
			</section>
		</div>

	</div>

	<!-- Section One -->
	<div class="wrapper style2">
		<section class="container">
			<div class="row double">
				<div class="6u">
					<header class="major">
						<h2>회원 가입</h2>
						<span class="byline"> 
						<label>이름</label> 
						<input type="text" id="name" name="name" /> 
						<label>아이디</label> 
						<input type="text" id="id" name="id" /> 
						<label>패스워드</label> 
						<input type="text" id="password" name="password" /> 
						<label>이메일</label> 
						<input type="text" id="email" name="email" />
						<label>연락처</label>
						<input type="text" id="phone" name="phone">
						</span>
					</header>
				</div>
				<div class="6u">
					<h2>우리 사이트의 회원이 되어주세요.</h2>
					<br>
					<h3>*다양한 서비스를 제공받으실 수 있습니다</h3>
					<br>
					<h4>왼쪽에 정보를 입력하고 회원 가입 버튼을 눌러주세요</h4>
					<h4></h4>
					<br> <br>
					<c:url value="/join" var="join" />
					<a href="${join }">회원 가입</a>
				</div>
			</div>
		</section>
	</div>

	<!-- Section Two -->
	<div class="wrapper style3">
		<section class="container">
			<header class="major">
				<h2>당신은 하나님을 믿습니까?</h2>
			</header>
			<p>기도문에는 좋은 말이 담겨져 있습니다.</p>
			<p>버튼을 클릭하면 기도문을 보실 수 있습니다</p>
			<c:url value="/gidomoon" var="gidomoon" />
			<a href="${gidomoon }" class="button alt" id="gido">기도문 읽기</a>
		</section>
	</div>

	<!-- Section Three -->
	<div class="wrapper style4">
		<section class="container">
			<header class="major">
				<h2>Cras vitae metus aliNuam</h2>
				<span class="byline">pulvinar mollis. Vestibulum sem magna,
					elementum vestibulum arcu.</span>
			</header>
			<div class="row flush">
				<div class="4u">
					<ul class="special-icons">
						<li><span class="fa fa-cogs"></span>
							<h3>Nulla luctus eleifend</h3>
							<p>In posuere eleifend odio. Quisque semper augue mattis
								wisi. Maecenas ligula pellentesque.</p></li>
						<li><span class="fa fa-wrench"></span>
							<h3>Etiam posuere augue</h3>
							<p>Maecenas ligula. Pellentesque viverra vulputate enim.
								Aliquam erat volutpat liguala.</p></li>
						<li><span class="fa fa-leaf"></span>
							<h3>Fusce ultrices fringilla</h3>
							<p>Maecenas pede nisl, elementum eu, ornare ac, malesuada at,
								erat. Proin gravida orci porttitor.</p></li>
					</ul>
				</div>
				<div class="4u">
					<ul class="special-icons">
						<li><span class="fa fa-cogs"></span>
							<h3>Nulla luctus eleifend</h3>
							<p>In posuere eleifend odio. Quisque semper augue mattis
								wisi. Maecenas ligula pellentesque.</p></li>
						<li><span class="fa fa-wrench"></span>
							<h3>Etiam posuere augue</h3>
							<p>Maecenas ligula. Pellentesque viverra vulputate enim.
								Aliquam erat volutpat liguala.</p></li>
						<li><span class="fa fa-leaf"></span>
							<h3>Fusce ultrices fringilla</h3>
							<p>Maecenas pede nisl, elementum eu, ornare ac, malesuada at,
								erat. Proin gravida orci porttitor.</p></li>
					</ul>
				</div>
				<div class="4u">
					<ul class="special-icons">
						<li><span class="fa fa-cogs"></span>
							<h3>Nulla luctus eleifend</h3>
							<p>In posuere eleifend odio. Quisque semper augue mattis
								wisi. Maecenas ligula pellentesque.</p></li>
						<li><span class="fa fa-wrench"></span>
							<h3>Etiam posuere augue</h3>
							<p>Maecenas ligula. Pellentesque viverra vulputate enim.
								Aliquam erat volutpat liguala.</p></li>
						<li><span class="fa fa-leaf"></span>
							<h3>Fusce ultrices fringilla</h3>
							<p>Maecenas pede nisl, elementum eu, ornare ac, malesuada at,
								erat. Proin gravida orci porttitor.</p></li>
					</ul>
				</div>
			</div>
		</section>
	</div>

	<!-- Team -->
	<div class="wrapper style5">
		<section id="team" class="container">
			<header class="major">
				<h2>Cras vitae metus aliNuam</h2>
				<span class="byline">pulvinar mollis. Vestibulum sem magna,
					elementum vestibulum arcu</span>
			</header>
			<div class="row">
				<div class="3u">
					<a href="#" class="image"><img src="images/placeholder.png"
						alt=""></a>
					<h3>Molly Millions</h3>
					<p>In posuere eleifend odio quisque semper augue wisi ligula.</p>
				</div>
				<div class="3u">
					<a href="#" class="image"><img src="images/placeholder.png"
						alt=""></a>
					<h3>Henry Dorsett Case</h3>
					<p>In posuere eleifend odio quisque semper augue wisi ligula.</p>
				</div>
				<div class="3u">
					<a href="#" class="image"><img src="images/placeholder.png"
						alt=""></a>
					<h3>Willis Corto</h3>
					<p>In posuere eleifend odio quisque semper augue wisi ligula.</p>
				</div>
				<div class="3u">
					<a href="#" class="image"><img src="images/placeholder.png"
						alt=""></a>
					<h3>Linda Lee</h3>
					<p>In posuere eleifend odio quisque semper augue wisi ligula.</p>
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
		$("#drible").on("click", function(){
			console.log($("#drible").val());	
			showModalDialog("my","", "dialogHeight:200px;dialogWidth:200px");	
		});
		 /* for(var i=0;i<3;i++){
			setInterval(function(){alert(i);}, 4000);
		}  */
		
		$("#email").on("focusout",function(){
			var email = $("#email").val();
			console.log(email);
			function validateEmail(email) {
			    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			    return re.test(email);
			}
			
		});
		
		
</script>
</html>
