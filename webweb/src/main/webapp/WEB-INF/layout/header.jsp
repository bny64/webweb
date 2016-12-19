<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="wrapper style1">
	<!-- Banner -->
	<div id="banner">
		<section class="container">
			<h2>WEB PROGRAMMING</h2>
			<span>tel : 012-345-6789</span>
			<p>우리와 같이 외국어를 배워요.</p>
		</section>
		<c:url value="/logout" var="logout"/>
		<a href="${logout }">로그아웃</a>
	</div>

</div>
<script></script>