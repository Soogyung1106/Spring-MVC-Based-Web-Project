
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%

Calendar cal = Calendar.getInstance();

 

String strYear = request.getParameter("year");
String strMonth = request.getParameter("month");

 

int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH);
int date = cal.get(Calendar.DATE);

 

if(strYear != null)

{

  year = Integer.parseInt(strYear);
  month = Integer.parseInt(strMonth);
 
}else{

 

}

//년도/월 셋팅

cal.set(year, month, 1);

 

int startDay = cal.getMinimum(java.util.Calendar.DATE);
int endDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
int start = cal.get(java.util.Calendar.DAY_OF_WEEK);
int newLine = 0;

 

//오늘 날짜 저장.

Calendar todayCal = Calendar.getInstance();
SimpleDateFormat sdf = new SimpleDateFormat("yyyMMdd");

int intToday = Integer.parseInt(sdf.format(todayCal.getTime()));


%>

<html lang="ko">

<HEAD>

       <TITLE>스케줄 </TITLE>

       <meta http-equiv="content-type" content="text/html; charset=utf-8">
       <script type="text/javaScript" language="javascript"> 

       </script>

       <style TYPE="text/css">
	
             body {
			 background-color: #090823;
			 
             scrollbar-face-color: #F6F6F6;

             scrollbar-highlight-color: #bbbbbb;

             scrollbar-3dlight-color: #FFFFFF;

             scrollbar-shadow-color: #bbbbbb;

             scrollbar-darkshadow-color: #FFFFFF;

             scrollbar-track-color: #FFFFFF;

             scrollbar-arrow-color: #bbbbbb;

             margin-left:"0px"; margin-right:"0px"; margin-top:"0px"; margin-bottom:"0px";

             }


             td {font-family: "Times New Roman"; font-size: 9pt; color:#FFFFFF; font-weight: bolder}

             th {font-family: "Times New Roman"; font-size: 9pt; color:#000000; font-weight: bolder}

             select {font-family: "Times New Roman"; font-size: 9pt; color:#595959; font-weight: bolder}


             .divDotText {

             overflow:hidden;

             text-overflow:ellipsis;

             }

 
            A:link { font-size:9pt; font-family:"Times New Roman";color:#1EA5FF; text-decoration:none; font-weight: bolder}

            A:visited { font-size:9pt; font-family:"Times New Roman";color:#1EA5FF; text-decoration:none; font-weight: bolder}

            A:active { font-size:9pt; font-family:"Times New Roman";color:red; text-decoration:none; font-weight: bold}

            A:hover { font-size:9pt; font-family:"Times New Roman";color:red;text-decoration:none; font-weight: bolder}

 

       </style>

</HEAD>

<BODY>

<form name="calendarFrm" id="calendarFrm" action="" method="post">

<DIV id="content" style="width:712px;">

 

<table width="100%" border="0" cellspacing="1" cellpadding="1">

<tr>

       <td align ="right">
		
			<c:url value="/schedule/register" var="url"  /><a href="${url}" style = "font-weight: bolder">일정 등록</a>
     
       </td>



</tr>

</table>

<!--날짜 네비게이션  -->

<table width="100%" border="0" cellspacing="1" cellpadding="1" id="KOO" bgcolor="#193349" style="border:1px solid #193349; font-weight: bold" >

 

<tr>

<td height="60">

 

       <table width="100%" border="0" cellspacing="0" cellpadding="0">

       <tr>
             <td height="10">

             </td>
       </tr>



       <tr>
             <td align="center" >

                    <a href="<c:url value='/CalendarExam2.jsp' />?year=<%=year-1%>&amp;month=<%=month%>" target="_self" style="color: white; font-weight: bolder">

                           <b>&lt;&lt;</b><!-- 이전해 -->

                    </a>

                    <%if(month > 0 ){ %>

                    <a href="<c:url value='/CalendarExam2.jsp' />?year=<%=year%>&amp;month=<%=month-1%>" target="_self" style="color: white; font-weight: bolder">

                           <b>&lt;</b><!-- 이전달 -->

                    </a>

                    <%} else {%>

                           <b>&lt;</b>

                    <%} %>

                    &nbsp;&nbsp;

                    <%=year%>년

                   

                    <%=month+1%>월

                    &nbsp;&nbsp;

                    <%if(month < 11 ){ %>

                    <a href="<c:url value='/CalendarExam2.jsp' />?year=<%=year%>&amp;month=<%=month+1%>" target="_self" style="color: white; font-weight: bolder">

                           <!-- 다음달 --><b>&gt;</b>

                    </a>

                    <%}else{%>

                           <b>&gt;</b>

                    <%} %>

                    <a href="<c:url value='/CalendarExam2.jsp' />?year=<%=year+1%>&amp;month=<%=month%>" target="_self" style="color: white; font-weight: bolder">

                           <!-- 다음해 --><b>&gt;&gt;</b>

                    </a>

             </td>

       </tr>

       </table>

 

</td>

</tr>

</table>

<br>

<table border="0" cellspacing="1" cellpadding="1" bgcolor="090823">

<THEAD>

<TR bgcolor="#003246">

       <TD width='100px'>

       <DIV align="center"><font color="red">일</font></DIV>

       </TD>

       <TD width='100px'>

       <DIV align="center">월</DIV>

       </TD>

       <TD width='100px'>

       <DIV align="center">화</DIV>

       </TD>

       <TD width='100px'>

       <DIV align="center">수</DIV>

       </TD>

       <TD width='100px'>

       <DIV align="center">목</DIV>

       </TD>

       <TD width='100px'>

       <DIV align="center">금</DIV>

       </TD>

       <TD width='100px'>

       <DIV align="center"><font color="#529dbc">토</font></DIV>

       </TD>

</TR>

</THEAD>

<TBODY>

<TR>

<%!



%>

<% 

//처음 빈공란 표시

for(int index = 1; index < start ; index++ )

{

  out.println("<TD >&nbsp;</TD>");

  newLine++;

}

 

for(int index = 1; index <= endDay; index++)

{

       String color = "";


       if(newLine == 0){          color = "RED";

       }else if(newLine == 6){    color = "#529dbc";

       }else{                     color = "#FFFFFF"; };

 

       String sUseDate = Integer.toString(year); 
       sUseDate += Integer.toString(month+1).length() == 1 ? "0" + Integer.toString(month+1) : Integer.toString(month+1);
       sUseDate += Integer.toString(index).length() == 1 ? "0" + Integer.toString(index) : Integer.toString(index);

 
       int iUseDate = Integer.parseInt(sUseDate);


       String backColor = "#00283C";

       if(iUseDate == intToday ) {

             backColor = "#576E77";

       }

       out.println("<TD valign='top' align='left' height='92px' bgcolor='"+backColor+"' nowrap>");

       %>

       <font color='<%=color%>'>

             <%=index %>

       </font>

 		

       <%
       
       
	   //20200609 포맷임
       String compare_date = Integer.toString(iUseDate);
       
       //2020-06-09 포맷으로 만들기(db date 타입 데이터와 비교하기 위해)
       compare_date = compare_date.substring(0, 4) + "-"+compare_date.substring(4,6)+ "-"+compare_date.substring(6, 8);
       
       
       pageContext.setAttribute("compare_date", compare_date);
       
       out.println("<BR>");
       
       
        %>
       
       <c:set var="date" value= "${compare_date}" /> 
       <BR>
       <c:forEach var="schedule" items="${schedules}" >
       		
			<c:if test="${date == schedule.schedule_date}"> <!-- 만약에 db에 일정이 등록되어 있다면 차례대로 출력 -->
			  	
			 	<c:url value="/schedule/read?schedule_idx=${schedule.schedule_idx}" var="url"/><a href="${url}"><c:out value="${schedule.schedule_subject}"/></a>
			 	
			 	<BR>
			</c:if>
			 
		</c:forEach> 
         
       
       <%
       out.println("<BR>");
 

       //기능 제거 

       out.println("</TD>");
       newLine++;

       
       if(newLine == 7){

         out.println("</TR>");

         if(index <= endDay)
           out.println("<TR>");
         
         newLine=0;
       
       }

}

//마지막 공란 LOOP

while(newLine > 0 && newLine < 7)

{
  out.println("<TD>&nbsp;</TD>");
  newLine++;

}

%>

</TR>

 

</TBODY>

</TABLE>

</DIV>

</form>

</BODY>

</HTML>
