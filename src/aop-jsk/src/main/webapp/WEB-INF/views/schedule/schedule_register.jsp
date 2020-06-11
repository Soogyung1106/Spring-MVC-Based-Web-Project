<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>스케줄 등록</title>
	<link rel="stylesheet" href="../resources/css/schedule.css" type="text/css"></link>
</head>
<body>
	<div align=center>
		<header>일정 등록</header>
		<form name=form1 action="http://localhost:8080/myweb/schedule/register/" method="post">
		<table>	
			<tr><th>날짜</th><td><input type="text" name="schedule_date"  placeholder="YYYY-MM-DD "></td></tr>
			<tr><th>일정</th><td><input type="text" name="schedule_subject" autofocus placeholder="입력하세요"></td></tr>
			<tr><th>설명</th><td><input type="text" name="schedule_desc" placeholder="입력하세요"  style ="height:50px" ></td></tr>
			
		</table><br>
		
			<input type="submit" name="submit" value="완료" ></dd>
			<input type="reset" name="reset" value="초기화" ></dd>
		
		</form>
	</div>
</body>
</html>