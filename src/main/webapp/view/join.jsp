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
		width: 90%;
		margin-top: 5%;
		margin-bottom: 5%;
		text-align: center;
		margin-left: 5%;
		height: 350px;
	}
	input
	{
		margin-top: 1%;
	}
	#join
	{
		width: 10%;
		height: 30px;
	}
</style>
<script type="text/javascript">
	function id_test(f) 
	{
		document.getElementById("ptag").style.display="block";
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
			<form action="main.jsp">
				*아이디 : <input type="text" name="id" placeholder="아이디 입력" required>
				<input type="button" value="중복 확인" onclick="id_test(this.form)"><br>
				<p id="ptag" style="font-size: 3px; display: none;">사용 가능한 아이디 입니다.</p>
				*비밀번호 : <input type="password" name="pw" placeholder="비밀번호 입력" required><br>
				*비밀번호 재입력 : <input type="password" name="pw_test" placeholder="비밀번호 입력" required><br>
				*전화번호 : <input type="number" name="tel_num" placeholder="전화번호 입력" required><br>
				성별 : <input type="radio" name="gender" value="남자">남자
					<input type="radio" name="gender" value="여자">여자<br>
				*이메일 : <input type="email" name="email" placeholder="이메일 입력" required><br>
				사용자 : <input type="radio" name="user" value="영업주">영업주
					<input type="radio" name="user" value="일반 사용자">일반 사용자<br>
				<input type="submit" name="cmd" value="Join" id="join">
				
			</form>
		</fieldset>
	</div>
	<div>
		<footer>footer정보</footer>
	</div>
</body>
</html>