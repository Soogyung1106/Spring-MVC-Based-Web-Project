<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>일정 정보</title>
	<link rel="stylesheet" href="../resources/css/schedule.css" type="text/css"></link>
</head>
<body>
	<div align=center>
		<header>일정 정보</header><br>
		<table>
			
		    <tr><th> 제목 </th><td><c:out value="${schedule.schedule_subject}"/></td></tr>
			<tr><th style ="height:50px"> 설명 </th><td><c:out value="${schedule.schedule_desc}"/></td></tr>
			<tr><th> 날짜 </th><td><c:out value="${schedule.schedule_date}"/></td></tr>
			<tr><th> 조회수 </th><td><c:out value="${schedule.schedule_count}"/></td></tr>
		</table><br>
		
		<c:url value="/schedule/modify?schedule_idx=${schedule.schedule_idx}" var="url"/><a href="${url}"><button id="test_btn1">수정</button>
		<c:url value="/schedule/delete?schedule_idx=${schedule.schedule_idx}" var="url"/><a href="${url}"><button id="test_btn1">삭제</button>
		<c:url value="/schedule/list" var="url"/><a href="${url}"><button id="test_btn1">캘린더</button>
		
		
	</div>
</body>
</html>