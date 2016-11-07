<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery.js"></script>
<script>

	function addSong() {
		var btn = ' <button onclick="delete1">삭제</button>';
		
		var li = document.createElement("li");
		li.innerHTML += document.getElementById("songName").value;
//		li.innerHTML += btn;
		var ul = document.getElementById("playlist");
		ul.appendChild(li);
		
		var storage = document.getElementById("songName").value;
		
		localStorage.setItem('music',storage);
	}
	
	window.onload = function(){
		console.log(localStorage);
		for(var i=0; i<localStorage.length; i++){
			var key = localStorage.getItem('music');
			console.log(key);
			var ul = document.getElementById("playlist");
			var li = document.createElement("li");
			li.innerHTML += key;
			ul.appendChild(li);
		}
	};
	function reset(){
		localStorage.removeItem('music');
	}
</script>
</head>
<body>
	<form>
		<input type="text" id="songName" /> 
		<input type="button" value="노래추가"	onclick="addSong()" />
		<input type="button" value="초기화" onclick="reset()" />
	</form>
	<ul id="playlist">
		<li>사랑이었다-지코</li>
		<li>걱정말아요그대-이적</li>
		<li>나군대간다-이승기</li>
	</ul>
</body>
</html>