<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="wrapper style1">
	<!-- Banner -->
	<div id="banner">
		<section class="container">
			<h2>WEB PROGRAMMING</h2>
			<span>tel : 012-345-6789</span>
			<p>一緒に外国語を勉強しましょう</p>
		</section>
		<c:url value="/jlogout" var="jlogout"/>
		<a href="${jlogout }">ログアウト</a>
	</div>

</div>
<script></script>