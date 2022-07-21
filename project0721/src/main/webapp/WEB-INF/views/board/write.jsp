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

<form action="write.do" method="post">
<table class="table">
	<tr>
		<th>제목</th>
		<td><input name="title"></td>
	<tr>
	<tr>
		<th>내용</th>
		<td><textarea rows="7" cols="70" name="content"></textarea></td>
	<tr>
	<tr>
		<th>작성자</th>
		<td><input  name="writer"></td>
	<tr>
	<tr>
		<td colspan="2">
		<button class="btn btn-default">등록</button>
		<button type="reset" class="btn btn-default">새로고침</button>
		<button type="button" onclick="history.back()" class="btn btn-default">취소</button>
		</td>
	</tr>
</table>
</form>

</div>
</body>
</html>