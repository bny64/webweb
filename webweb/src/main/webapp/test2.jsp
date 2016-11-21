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
	<%!double radius = 3.0; %>
	<%!
		public double calcArea(double r){
			return r*r*3.14;
		
	}
		public double calcArea2(double r){
			return r*2*3.14;
		}
	%>
	반지름<%=radius %>의 원 면적 : <%=calcArea(radius) %><br>
	반지름<%=radius %>의 원 둘레 : <%=calcArea2(radius) %>
	
</body>
</html>