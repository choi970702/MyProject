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
	a
	{
		text-decoration: none;
		color: black;
	}
	footer
	{
		background-color: gray;
		width: 100%;
		height: 60px;
		font-size: 10px;
		margin-bottom: 0px;
		padding: 10px;
	}
	a:hover
	{
		color: silver;
		cursor: pointer;
	}
	#field
	{
		margin-top: 8%;
		margin-left: 5%;
		margin-bottom: 8%;
		width: 90%;
		font-size: 20px;
		height: 300px;
	}
	#id_pw
	{
		width: 65%;
		text-align: right;
		float: left;
	}
	.inp
	{
		width: 60%;
		height: 30px;
		margin-top: 4%;
		margin-bottom: 2%;
		margin-left: 3%;
	}
	#log_btn
	{
		width: 15%;
		height: 100px;
		margin-left: 5%;
		margin-top: 4%;
		margin-bottom: 4%;
	}
	#log_div
	{
		text-align: center;
		margin: auto;
		padding-top: 10%;
	}
	.log_btn
	{
		width: 20%;
		height: 60px;
	}
</style>
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
	<div>
		<fieldset id="field">
			<form action="login.jsp" method="post">
				<div id="id_pw">
					*이메일 <input type="email" name="email" placeholder="이메일 입력" class="inp" required><br>
					*전화번호 <input type="number" name="tel_num" placeholder="전화번호 입력" class="inp" required><br>
					*PW <input type="password" name="pw" placeholder="비밀번호 입력" class="inp" required><br>
				</div>
				<div id="log_div">
					<input type="submit" value="아이디 찾기" class="log_btn">
					<input type="hidden" name="cmd" value="id_find">
				</div>
			</form>
		</fieldset>
	</div>
	<div>
		<footer>footer정보</footer>
	</div>
</body>
</html>