<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>스케줄 등록</title>
	<link rel="stylesheet" href="../resources/member.css" type="text/css"></link>
</head>
<body>
	<div align=center>
		<header>경기 일정 등록</header>
		<form name=form1 action="http://localhost:8080/myweb/schedule/register/" method="post">
		<table>	
			<tr><th>날짜</th><td><input type="text" name="schedule_date"  placeholder="YYYY-MM-DD "></td></tr>
			<tr><th>일정</th><td><input type="text" name="schedule_subject" autofocus placeholder="입력하세요"></td></tr>
			<tr><th>설명</th><td><input type="text" name="schedule_desc" placeholder="입력하세요"></td></tr>
			<!-- <tr><th>인덱스</th><td><input type="text" name="schedule_idx"  placeholder="YYYY-MM-DD "></td></tr>  -->
			<!--
			<tr><th>StudentNumber</th><td><input type="text" name="snum" placeholder="공백없이 입력하세요"></td></tr>
			<tr><th>Department</th><td><input type="text" name="depart" placeholder="예)컴퓨터공학부"></td></tr>
			<tr><th>MobileNumber</th><td><input type="text" name="mobile" placeholder="***-****-****"></td></tr>
			<tr><th>EmailAddress</th><td><input type="text" name="email" placeholder="****@****.***"></td></tr>
			 -->
		</table>
		<dl>
			<dd><input type="submit" name="submit" value="완료"></dd>
			<dd><input type="reset" name="reset" value="초기화"></dd>
		</dl>
		</form>
	</div>
</body>
</html>