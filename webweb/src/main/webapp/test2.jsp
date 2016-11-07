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
		var btn = ' <button onclick="delete1">����</button>';
		
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
		<input type="button" value="�뷡�߰�"	onclick="addSong()" />
		<input type="button" value="�ʱ�ȭ" onclick="reset()" />
	</form>
	<ul id="playlist">
		<li>����̾���-����</li>
		<li>�������ƿ�״�-����</li>
		<li>�����밣��-�̽±�</li>
	</ul>
</body>
</html>