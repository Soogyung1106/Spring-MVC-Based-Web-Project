<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>정보 수정</title>
	<link rel="stylesheet" href="../resources/member.css" type="text/css"></link>
</head>
<body>
	<div align=center>
		<header>스케줄 수정</header>
		<form name=form1 action="http://localhost:8080/myweb/schedule/modify/" method="post">
		<input type="hidden" name="schedule_idx" readonly value="${schedule.schedule_idx}" > 
		
		<table>
			
			<tr><th>제목</th><td><input type="text" name="schedule_subject" value="${schedule.schedule_subject}"></td></tr>
			<tr><th>설명</th><td><input type="text" name="schedule_desc" value="${schedule.schedule_desc}"></td></tr>
			<tr><th>날짜</th><td><input type="text" name="schedule_date" value="${schedule.schedule_date}"></td></tr>
		</table><br>
			<input type="submit" name="submit" value="완료">
			<input type="reset" name="reset" value="초기화">
		</form>
	</div>
</body>
</html>