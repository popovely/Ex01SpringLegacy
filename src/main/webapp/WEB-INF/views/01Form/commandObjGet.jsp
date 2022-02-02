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
	<h2>Form값 받기</h2>
	
	<h3>커맨드객체를 이용하여 폼값 한번에 받기</h3>
	
	<ul>
		<li>이름 : ${ memberDTO.name }</li>
		<li>아이디 : ${ memberDTO.id }</li>
		<li>패스워드 : ${ memberDTO.pw }</li>
		<li>이메일 : ${ memberDTO.email }</li>
	</ul>
</div>
</body>
</html>