<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
img{
	height : 30%;
	width :  30%;
}
</style>
<div class="wrapper style5">
		<section id="team" class="container">
			<header class="major">
				<h2>다양한 언어로 접속할 수 있습니다</h2><br>
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
<script></script>