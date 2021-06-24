<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form>
			<input id="top_addr" type="text" value="위치검색" name="addr_search" required>
			<input id="top_btn" class="btn" type="button" value="검색" onclick="addr_search(this.form)">
		</form>
	</div>
	<div>
		<div class="a_div" style="margin-right: 2%;">
			<a href="main.jsp">home</a>
		</div>
		<div class="a_div">
			<a href="login.jsp">로그인 </a> &nbsp;|&nbsp;
			<a href="join.jsp">회원가입</a>
		</div>
	</div>
	<!-- * 카카오맵 - 지도퍼가기 -->
	<!-- 1. 지도 노드 -->
	<div id="daumRoughmapContainer1624432839749" class="root_daum_roughmap root_daum_roughmap_landing"></div>

	<!--
		2. 설치 스크립트
		* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
	-->
	<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

	<!-- 3. 실행 스크립트 -->
	<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1624432839749",
		"key" : "26cht",
		"mapWidth" : "600",
		"mapHeight" : "300"
	}).render();
</script>
</body>
</html>