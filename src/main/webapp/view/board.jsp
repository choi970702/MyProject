<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		margin-top: 45%;
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
	table,th,td
	{
		border: 1px solid gray;
		border-spacing: 0px;
		padding: 1%;
	}
	tr 
	{
		
	    text-align:center;
	    padding:4px 10px;
	    background-color: #F6F6F6;
	    margin: 0px;
	}
	
	th 
	{
		width:120px;
	    text-align:center;
	    padding:4px 10px;
	    background-color: silver;
	    margin: 0px;
	}
	table 
	{
		margin: auto;
		margin-top: 5%;
		width: 80%;
		height: 350px;
	}
	#t1
	{
		width: 50%;
		float: left;
	}
	#t2
	{
		width: 50%;
		float: left;
	}
	img
	{
		width: 30%;
	}
	textarea 
	{
		width: 80%;
		height: 80%;
	}
	fieldset 
	{
		height: 400px;
		margin-bottom: 5%;
		background-color: gray;
	}
</style>
<script type="text/javascript">
	function write1() 
	{
		location.href="view/write1.jsp";
	}
	function write2() 
	{
		location.href="view/write2.jsp";
	}
	function boardlist() 
	{
		location.href="${pageContext.request.contextPath}/MyController?cmd=boardlist&cPage=${cPage}";
	}
</script>
</head>
<body>
	<div>
		<!-- ?????? ??????, ????????? ???????????? ?????? -->
		<div>
			<form action="view/addr_search.jsp" method="post">
				<input type="text" id="top_addr" placeholder="????????? ?????????." name="addr_search" required>
				<input type="submit" id="top_btn" class="btn"  value="??????" >
			</form>
		</div>
		<div>
			<div class="a_div" style="margin-right: 2%;">
				<a href="view/main.jsp">home</a>
			</div>
			<div class="a_div">
				<a href="view/login.jsp">????????? </a> &nbsp;|&nbsp;
				<a href="view/join.jsp">????????????</a>
			</div>
		</div>
	</div><br>
	<!-- ????????? -->
	<div>
		<div id="menu_id">
			<div><a href="view/search.jsp">??????</a></div>
			<div><a href="view/food_restaurant.jsp">?????? ??? ????????? ??????</a></div>
			<div><a onclick="boardlist()">?????????</a></div>
			<div><a href="view/mypage.jsp">???????????????</a></div>
		</div>
	</div>
	<div id="t1">
		<fieldset>
			<legend>????????? ??? ??????</legend>
			<table>
				<thead>
					<tr>
						<th>??????</th>
						<th>?????????</th>
						<th>??????</th>
						<th>??????</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
					<c:when test="${empty list}">
				 	  <tr><td colspan="4"><h2>???????????? ????????? ???????????? ????????????</h2></td></tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="k" items="${list}" varStatus="vs">
							<tr>
								<td>${pvo.totalRecord-((pvo.nowPage-1)*pvo.numPerPage+vs.index)}</td>
								<td style="text-align: left;">
								<a href="${pageContext.request.contextPath}/MyController?cmd=onelist&idx=${k.idx}&cPage=${pvo.nowPage}">${k.title }</a>
								</td>
								<td>${k.writer }</td>
								<td>${k.regdate.substring(0,10)}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
					</c:choose>
					<tr>
						<td colspan="4">
							<button onclick="write1()">??????</button>
						</td>
					</tr>
				</tbody>
				<tfoot>
				<tr>
					<td colspan="4">
						
						<c:choose>
							<c:when test="${pvo.beginBlock <= pvo.pagePerBlock }">
								<span style="color: gray; padding: 5px; border: 1px solid gray">????????????</span>
							</c:when>
							<c:otherwise>
								<span style="color: tomato; padding: 5px; border: 1px solid tomato">
									<a href="${pageContext.request.contextPath}/MyController?cmd=boardlist&cPage=${pvo.beginBlock-pvo.pagePerBlock}">????????????</a>
								</span>
							</c:otherwise>
						</c:choose>
						&nbsp;&nbsp;
						
				  	 <c:forEach begin="${pvo.beginBlock }" end="${pvo.endBlock }" step="1" var="k">
						   	<c:choose>
									<c:when test="${k==pvo.nowPage}">
										<span style="background-color: tomato; padding: 5px;">${k}</span></c:when>
									<c:otherwise>
										<span style="color: tomato; padding: 5px;">
											<a href="${pageContext.request.contextPath}/MyController?cmd=boardlist&cPage=${k}">${k}</</a>
										</span>
									</c:otherwise>
								</c:choose>
					   </c:forEach>
						&nbsp;&nbsp;
						
						<c:choose>
							<c:when test="${pvo.endBlock >= pvo.totalPage }">
								<span style="color: gray; padding: 5px; border: 1px solid gray">????????????</span>
							</c:when>
							<c:otherwise>
								<span style="color: tomato; padding: 5px; border: 1px solid tomato">
									<a href="${pageContext.request.contextPath}/MyController?cmd=boardlist&cPage=${pvo.beginBlock+pvo.pagePerBlock}">????????????</a>
								</span>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</tfoot>
			</table>
		</fieldset>
	</div>
	<div id="t2">
		<fieldset>
			<legend>?????? ??? ??????</legend>
			<table>
				<thead>
				</thead>
				<tbody>
					<tr>
						<td style="width: 30%;"><img src="../image/dark.gif"></td>
						<td><textarea>~~~~~~~~~~~~</textarea></td>
					</tr>
					<tr>
						<td style="width: 30%;"><img src="../image/light.gif"></td>
						<td><textarea>~~~~~~~~~~~~</textarea></td>
					</tr>
					<tr>
						<td colspan="2">
							<button onclick="write2()">??????</button>
						</td>
					</tr>
				</tbody>
				<tfoot>
				<tr>
					<td colspan="4">
						
						<c:choose>
							<c:when test="${pvo.beginBlock <= pvo.pagePerBlock }">
								<span style="color: gray; padding: 5px; border: 1px solid gray">????????????</span>
							</c:when>
							<c:otherwise>
								<span style="color: tomato; padding: 5px; border: 1px solid tomato">
									<a href="${pageContext.request.contextPath}/MyController?cmd=boardlist&cPage=${pvo.beginBlock-pvo.pagePerBlock}">????????????</a>
								</span>
							</c:otherwise>
						</c:choose>
						&nbsp;&nbsp;
						
				  	 <c:forEach begin="${pvo.beginBlock }" end="${pvo.endBlock }" step="1" var="k">
						   	<c:choose>
									<c:when test="${k==pvo.nowPage}">
										<span style="background-color: tomato; padding: 5px;">${k}</span></c:when>
									<c:otherwise>
										<span style="color: tomato; padding: 5px;">
											<a href="${pageContext.request.contextPath}/MyController?cmd=boardlist&cPage=${k}">${k}</</a>
										</span>
									</c:otherwise>
								</c:choose>
					   </c:forEach>
						&nbsp;&nbsp;
						
						<c:choose>
							<c:when test="${pvo.endBlock >= pvo.totalPage }">
								<span style="color: gray; padding: 5px; border: 1px solid gray">????????????</span>
							</c:when>
							<c:otherwise>
								<span style="color: tomato; padding: 5px; border: 1px solid tomato">
									<a href="${pageContext.request.contextPath}/MyController?cmd=boardlist&cPage=${pvo.beginBlock+pvo.pagePerBlock}">????????????</a>
								</span>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</tfoot>
			</table>
		</fieldset>
	</div>
	<div>
		<footer>footer??????</footer>
	</div>
</body>
</html>