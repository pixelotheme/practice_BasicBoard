<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<title>일반 게시판 리스트</title>
<style type="text/css">
.dataRow:hover {
		background: #eee;
	cursor: pointer;
}
</style>
<script type="text/javascript">
$(function(){

	$(".dataRow").click(function(){
		var no = $(this).find(".no").text();
		location="view.do?no="+no+"&inc=1";
		});

	
});
</script>
</head>
<body>
<div class="container">
<h2>게시판 리스트</h2>
<table class="table">
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>조회수</th>
	</tr>
	<c:forEach items="${list }" var="vo">
	
	<tr class="dataRow">
		<td class="no">${vo.no }</td>
		<td>${vo.title }</td>
		<td>${vo.writer }</td>
		<td><fmt:formatDate value="${vo.writeDate }"/></td>
		<td>${vo.hit }</td>
	</tr>
	</c:forEach>
	
	<tr>
		<td colspan="2">
			<a href="write.do" class="btn btn-default">글쓰기</a>
		</td>
	</tr>
</table>
</div>

</body>
</html>