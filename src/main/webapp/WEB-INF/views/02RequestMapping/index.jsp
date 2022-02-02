<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>♥손준영 바보♥</title>
<!-- 부트스트랩 CSS코어, JS코어 -->
<!--
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
-->
<link rel="stylesheet" href="/springlegacy/static/bootstrap5.1.3/css/bootstrap.css" />
<script src="/springlegacy/static/jquery/jquery-3.6.0.js"></script>
</head>
<body>
<div class="container">
	<h2>@RequestMapping 어노테이션</h2>
	
	<h3>GET방식으로 전송하기 [검색폼]</h3>
	<script>
	function searchCheck(f){
		if(!f.searchWord.value) {
			alert('검색어를 입력하세요');
			f.searchWord.focus();
			return false;
		}
	}
	</script>
	<form action="../requestMapping/getSearch.do"
		method="get" name="searchFrm"
		onsubmit="return searchCheck(this);">
		<select name="searchColumn">
			<option value="title">제목</option>
			<option value="name">작성자</option>
			<option value="content">내용</option>
		</select>
		
		<input type="text" name="searchWord" />
		
		<input type="submit" value="검색하기" />
	</form>
	
	
	<h3>POST방식으로 전송하기 [로그인폼]</h3>
	<%
	String ctxPath = request.getContextPath();
	%>
	<script>
	function loginCheck(fm){
		if(!fm.user_id.value) {
			alert('아이디를 입력하세요');
			fm.user_id.focus();
			return false;
		}
		if(!fm.user_pw.value) {
			alert('비밀번호를 입력하세요');
			fm.user_pw.focus();
			return false;
		}
	}
	</script>
	<form action="<%= ctxPath %>/requestMapping/postLogin.do"
		method="post"
		name="loginFrm"
		onsubmit="return loginCheck(this);">
	<table class="table table-bordered" style="width: 400px;">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="user_id" /></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><input type="text" name="user_pw" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="로그인" />
			</td>
		</tr>
	</table>
	</form>
</div>
</body>
</html>