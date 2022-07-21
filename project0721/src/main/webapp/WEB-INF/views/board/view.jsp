<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>일반 게시판 보기</title>
<style type="text/css">
</style>
</head>
<body>
<div class="container">
<h2>게시판 보기</h2>
<table class="table">
	<tr>
		<th>글번호</th>
		<td>${vo.no }</td>
	<tr>
	<tr>
		<th>제목</th>
		<td>${vo.title }</td>
	<tr>
	<tr>
		<th>내용</th>
		<td>${vo.content }</td>
	<tr>
	<tr>
		<th>작성자</th>
		<td>${vo.writer }</td>
	<tr>
	<tr>
		<th>작성일</th>
		<td><fmt:formatDate value="${vo.writeDate }"/></td>
	<tr>
	<tr>
		<th>조회수</th>
		<td>${vo.hit }</td>
	</tr>
	<tr>
		<td colspan="2">
		<a href="update.do?no=${vo.no }&inc=0" class="btn btn-default"> 수정</a>
		<a href="delete.do?no=${vo.no }" class="btn btn-default">삭제</a>
		<a href="list.do" class="btn btn-default">리스트</a>
		</td>
	</tr>
</table>

</div>
</body>
</html>