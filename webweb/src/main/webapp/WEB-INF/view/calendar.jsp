<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table, td {
	border: 1px groove black;
	border-collapse: collapse;
	text-align: "center";
}

tr {
	border: 1px solid black
}

.c1 {
	background-color: "#CEF279"
}
</style>
</head>
<body>
	<select id="y">
		<option value="">년도</option>
		<option value="2014">2014</option>
		<option value="2015">2015</option>
		<option value="2016">2016</option>
	</select>&nbsp;&nbsp;
	<select id="m">
		<option value="">월</option>
		<option value="0">1월</option>
		<option value="1">2월</option>
		<option value="2">3월</option>
		<option value="3">4월</option>
		<option value="4">5월</option>
		<option value="5">6월</option>
		<option value="6">7월</option>
		<option value="7">8월</option>
		<option value="8">9월</option>
		<option value="9">10월</option>
		<option value="10">11월</option>
		<option value="11">12월</option>
	</select>
	<input type="button" value="달력보기" onclick="showCal()">
	<br>
	<div id="cal"></div>
</body>
<script type="text/javascript">
	function showCal() {
		var year = parseInt(document.all['y'].value);
		//var year = parseInt(document.getElementById("y").value);더 많이 쓰는 방식
		var mon = parseInt(document.all['m'].value);
		cal = new Date(year, mon, 1); //선택한 달의 첫째 날
		cal2 = new Date(year, (mon + 1), 1);//선택한 다음날의 달의 첫째 날
		cal2.setTime(cal2.getTime() - (1000 * 60 * 60 * 24));
		dd = cal.getDay();//첫째날의 요일
		a = 0;//일자로 쓸 예정
		cc = "<table width=500 height=300 ";
cc +=" cellspacing=0 cellpadding=0 border=1>";
		cc += "<tr bgcolor='yellow'>";
		cc += "<th>일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th></tr>";//테이블의 헤터부분
		for (i = 0; i < 6; i++) {
			cc += "<tr>";
			for (j = 0; j < 7; j++) {//요일에 해당하는 for문
				cc += "<td align=center><b>";
				if (j == 0)
					cc += "<font color=red>";//일요일인 경우에는 빨강으로
				if (j == 6)
					cc += "<font color=blue>";//토요일인 경우에는 파란색으로
				if (i == 0) { //평일
					if (j >= dd)
						cc += ++a;
					else
						cc += "&nbsp;";
				} else {
					if (a < cal2.getDate()) {
						cc += ++a;
					} else {
						cc += "&nbsp;";
					}
				}
				if (j == 0 || j == 6)
					cc += "</font>";
				cc += "</b></td>";
			}
			cc += "</tr>";
			if (a >= cal2.getDate())
				break; //날짜를 다 삽입했을 때 for문 종료
		}
		cc += "</table>";
		document.getElementById("cal").innerHTML = cc;

	}
</script>

</html>