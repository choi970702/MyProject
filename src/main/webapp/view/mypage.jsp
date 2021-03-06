<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	table, tr, td
	{
		border: 1px solid gray;
	}
	table
	{
		width: 30%;
		float: left;
		margin-left: 3%;
		height: 300px;
		margin-top: 3%;
		text-align: center;
	}
	th{background-color: darkgray;}
	td{background-color: #F6F6F6;}
</style>
<script type="text/javascript">
	function write1() 
	{
		location.href="write3.jsp";
	}
	function write2() 
	{
		location.href="write4.jsp";
	}
	function boardlist() 
	{
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
	<!-- 메뉴바 -->
	<div>
		<div id="menu_id">
			<div><a href="search.jsp">검색</a></div>
			<div><a href="food_restaurant.jsp">음식 및 음식점 추천</a></div>
			<div><a onclick="boardlist()">게시판</a></div>
			<div><a href="mypage.jsp">마이페이지</a></div>
		</div>
	</div>
	<div>
		<table>
			<thead>
				<tr>
					<th colspan="3">나의 문의</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty list}">
				 	  <tr><td colspan="4"><h2>원하시는 자료가 존재하지 않습니다</h2></td></tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="k" items="${list}" varStatus="vs">
							<tr>
								<td style="text-align: left;">
								<a href="${pageContext.request.contextPath}/MyController?cmd=onelist&idx=${k.idx}&cPage=${pvo.nowPage}">${k.title }</a>
								</td>
								<td><button>수정하기</button></td>
								<td><button>삭제</button></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				<tr>
					<td colspan="3">예시</td>
				</tr>
				<tr>
					<td style="width: 50%;"><a>문의1</a></td>
					<td><button onclick="write2()">수정하기</button></td>
					<td><button>삭제</button></td>
				</tr>
				<tr>
					<td colspan="4">
						<button onclick="write1()">작성</button>
					</td>
				</tr>
			</tbody>
			<tfoot>
				
			</tfoot>
		</table>
		
		<table>
			<thead>
				<tr>
					<th colspan="2">정보 수정</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="2">비밀번호 번경</td>
				</tr>
				<tr>
					<td><input type="text"></td>
					<td><input type="button" value="클릭"></td>
				</tr>
				<tr>
					<td colspan="2">연락처 번경</td>
				</tr>
				<tr>
					<td><input type="text"></td>
					<td><input type="button" value="클릭"></td>
				</tr>
			</tbody>
			<tfoot>
				
			</tfoot>
		</table>
		
		<table>
			<thead>
				<tr>
					<th colspan="2">좋아하는 음식점 리스트</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>가게 1</td>
					<td><button>삭제</button></td>
				</tr>
				<tr>
					<td>가게 2</td>
					<td><button>삭제</button></td>
				</tr>
			</tbody>
			<tfoot>
				
			</tfoot>
		</table>
	</div>
	<div>
		<footer>footer정보</footer>
	</div>
</body>
</html>