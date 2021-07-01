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
	}
	#log_btn
	{
		width: 15%;
		height: 100px;
		margin-left: 5%;
		margin-top: 4%;
		margin-bottom: 4%;
	}
	.inp
	{
		margin-left: 3%;
	}
	#log_div
	{
		text-align: center;
		margin: auto;
	}
	.log_btn
	{
		width: 30%;
		height: 60px;
	}
	#find
	{
		font-size: 15px;
		text-align: center;
		margin-top: 3%;
	}
</style>
<script type="text/javascript">
	function master() 
	{
		location.href="${pageContext.request.contextPath}/MyController?cmd=master";
	}
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
	<div>
		<fieldset id="field">
			<form action="main.jsp" method="post">
				<div id="id_pw">
					ID <input type="text" name="id" placeholder="아이디 입력" class="inp"><br>
					PW <input type="text" name="id" placeholder="비밀번호 입력" class="inp"><br>
					<input type="radio" name="login" value="">영업주로 로그인
					<input type="radio" name="login" value="">일반 사용자로 로그인
				</div>
				<div>
					<input type="submit" value="로그인" id="log_btn">
					<input type="hidden" name="cmd" value="log">
				</div>
				<div id="log_div">
					<input type="button" value="카카오톡 아이디로 로그인" class="log_btn">
					<input type="button" value="관리자로 로그인" class="log_btn" onclick="master()">
				</div>
				<div id="find">
					<a href="idfind.jsp"> ID 찾기 </a> |
					<a href="pwfind.jsp"> PW 찾기 </a>
				</div>
			</form>
		</fieldset>
	</div>
	<div>
		<footer>footer정보</footer>
	</div>
</body>
</html>