<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="wrapper style1">
	<!-- Banner -->
	<div id="banner">
		<section class="container">
			<h2>WEB PROGRAMMING</h2>
			<span>tel : 012-345-6789</span>
			<p>我们一起学习外语吧</p>
		</section>
		<c:url value="/clogout" var="clogout"/>
		<a href="${clogout }">推出</a>
	</div>

</div>
<script></script>