<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" href="/springlegacy/static/bootstrap5.1.3/css/bootstrap.css" />
<script src="/springlegacy/static/jquery/jquery-3.6.0.js"></script>
</head>
<body>
<div class="container">
	<!-- 
		1. 컨트롤러 제작을 위해 제일먼저 요청명을 결정한다.
	 -->
	<h3>첫번째 컨트롤러 만들기</h3>
	<li>
		<a href="./home/helloSpring" target="_blank">첫번째 컨트롤러</a>
	</li>
	
	
	<!-- 컨트롤러 : FormController.java -->	
	<h3>form값 처리하기</h3>
	<li>
		<a href="./form/servletRequest?id=kosmo&pw=1234" target="_blank">
			HttpServletRequest로 폼값받기
		</a>
	</li>
	
	<li>
		<a href="./form/commandObjGet.do?id=kosmo&pw=1234&name=홍길동&email=hong@gildong.com" tartget="_blank">
			커맨드(Command)객체로 한번에 폼값받기
		</a>
	</li>
	
	<!-- 컨트롤러 : RequestMappingController.java -->
	<h3>@RequestMapping 어노테이션 활용</h3>
	<li>
		<a href="./requestMapping/index.do" target="_blank">
			requestMapping시작페이지 바로가기
		</a>
	</li>
</div>
</body>
</html>
