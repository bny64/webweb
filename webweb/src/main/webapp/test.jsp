<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<label>num1 : </label>
	<input type="text" id="num1">
	<br>
	<label>num2 : </label>
	<input type="text" id="num2">
	<br>
	<button id="gcdBtn">GCD 구하기</button>
	<br>
	<label>GCD : </label>
	<input type="number" id="gcd">
	<br>
</body>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
	var num1 = document.getElementById('num1').value;
	var num2 = document.getElementById('num2').value;
	var num3 = $("#num1").val();
	var num4 = $("#num2").val();
	
	$("#gcdBtn").on("click",function(){
		
		console.log(num1);
		console.log(num2);
		console.log(num1 + num2);
	});
</script>


</html>