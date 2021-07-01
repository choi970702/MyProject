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
	table, tr, td
	{
		border: 1px solid black;
		text-align: center;
		margin: auto;
	}
	table
	{
		width: 90%;
		height: 90%;
		background-color: silver;
	}
	fieldset
	{
		width: 90%;
		margin: auto;
		height: 400px;
		margin-bottom: 5%;
	}
	tr
	{
		background-color: #F6F6F6;
	}
	td > input
	{
		width: 80%;
	}
</style>
<script type="text/javascript">
	function writeok() 
	{
		alert("저장");
		location.href="${pageContext.request.contextPath}/MyController?cmd=boardlist&cPage=${cPage}";
	}
	function writeno() 
	{
		alert("취소");
		location.href="${pageContext.request.contextPath}/MyController?cmd=boardlist&cPage=${cPage}";
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
		<fieldset>
			<table>
				<thead>
					<tr>
						<th></th><th></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%; height: 5%;">작성자</td>
						<td><input type="text" name="id" value="ID" readonly="readonly"></td>
					</tr>
					<tr>
						<td style="height: 5%;">제목</td>
						<td><input type="text" name="title" placeholder="제목입력" required></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><input type="text" name="content" placeholder="내용입력" required></td>
					</tr>
					<tr>
						<td>답글</td>
						<td><input type="text" name="content" placeholder="답글 내용" readonly></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<button value="" onclick="writeok()">저장</button>
							<button value="" onclick="writeno()">취소</button>
						</td>
					</tr>
				</tfoot>
			</table>
		</fieldset>
	</div>
	<div>
		<footer>footer정보</footer>
	</div>
</body>
</html>