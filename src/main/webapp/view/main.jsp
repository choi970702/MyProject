<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#top_addr
	{
		width: 60%;
		margin-left: 2%;
		height: 2%;
		text-align: left;
		float: left;
		border: 2px solid black;
	}
	.btn
	{
		text-align: center;
		height: 2%;
		border: 2px solid black;
	}
	#top_btn
	{
		float: left;
	}
	.a_div
	{
		float: right;
		width: 30%;
		text-align: right;
	}
	#menu_id
	{
		width: 80%;
		text-align: center;
		margin-top: 3%;
		margin-left: 10%;
	}
	
	#menu_id > div
	{
		width: 23%;
		height: 40px;
		display: inline-block;
		text-align: center;
		cursor: pointer;
		line-height: 40px;
		margin: auto;	
		background-color: gray;
	}
	#menu_id > div > a
	{
		display: block;
	}
	a
	{
		text-decoration: none;
		color: black;
	}
	.div_in
	{
		float: left;
		width: 50%;
		text-align: center;
		margin-top: 2%;
		margin-bottom: 2%;
	}
	.in
	{
		border: 2px solid black;
		width: 50%;
	}
	img
	{
		width: 40%;
		height: 50%;
	}
	fieldset
	{
		width: 45%;
		float: left;
		margin-left: 1%;
		margin-right: 1%;
	}
	textarea 
	{
		height: 80px;
		width: 50%;
		text-align: center;
	}
	footer
	{
		background-color: gray;
		width: 100%;
		height: 60px;
		font-size: 10px;
		margin-top: 40%;
		padding: 10px;
	}
	a:hover
	{
		color: silver;
		cursor: pointer;
	}
	#menu_id > div:hover
	{
		background-color: black;
	}
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div>
		<!-- 위치 검색, 로그인 회원가입 태그 -->
		<div>
			<form action="addr_search.jsp" method="post">
				<input type="text" id="top_addr" placeholder="위치를 쓰세요." name="addr_search" required>
				<input type="submit" id="top_btn" class="btn"  value="검색" >
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
	</div><br>
	<!-- 메뉴바 -->
	<div>
		<div id="menu_id">
			<div><a href="search.jsp">검색</a></div>
			<div><a href="food_restaurant.jsp">음식 및 음식점 추천</a></div>
			<div><a href="board.jsp">게시판</a></div>
			<div><a href="mypage.jsp">마이페이지</a></div>
		</div>
	</div>
	<div>
		<div class="div_in">
			<form action="food_search.jsp">
				<!-- 음식으로 검색하기 -->
				<input class="in" type="text" placeholder="음식이름" name="food_search" required>
				<input class="btn" type="submit" value="검색">
			</form>
		</div>
		<div class="div_in">
			<form action="restaurant_search.jsp">
				<!-- 음식점으로 검색하기 -->
				<input class="in" type="text" placeholder="가게이름" name="restaurant_search" required>
				<input class="btn" type="submit" value="검색">
			</form>
		</div>
		<div>
			<fieldset>
				<legend>음식으로 검색</legend>
				<div>
					<img alt="" src="../image/pic1.jpg">
					<textarea>~~~~~~~~~~~</textarea>
				</div>
				<div>
					<img alt="" src="../image/pic1.jpg">
					<textarea>~~~~~~~~~~~</textarea>
				</div>
			</fieldset>
		</div>
		<div>
			<fieldset>
				<legend>가게로 검색</legend>
				<div>
					<img alt="" src="../image/pic1.jpg">
					<textarea>~~~~~~~~~~~</textarea>
				</div>
				<div>
					<img alt="" src="../image/pic1.jpg">
					<textarea>~~~~~~~~~~~</textarea>
				</div>
			</fieldset>
		</div>
	</div>
	<div>
		<footer>footer정보</footer>
	</div>
	
</body>
</html>