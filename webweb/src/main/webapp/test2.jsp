<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery.js"></script>
<script>

	function addSong() {
		var btn = ' <button onclick="delete1">삭제</button>';
		
		var li = document.createElement("li");
		li.innerHTML += songName.value;
		li.innerHTML += btn;
		var ul = document.getElementById("playlist");
		ul.appendChild(li);
		
	}
	function delete1(){
		var ul = document.getElementById("playlist");
		console.log(ul);
		var ul2 = $("li").val();
		var li = document.getElementById("li");
		ul.removeChild(li);
	}
</script>
</head>
<body>
	<form>
		<input type="text" id="songName" /> 
		<input type="button" value="노래추가"	onclick="addSong()" />
	</form>
	<ul id="playlist">
		<li>사랑이었다-지코</li>
		<li>걱정말아요그대-이적</li>
		<li>나군대간다-이승기</li>
	</ul>
</body>
</html>