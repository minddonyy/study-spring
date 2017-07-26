<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 목록</title>
 <%@ include file="../include/member_header.jsp" %>
</head>
<body>
<%@ include file="../include/member_menu.jsp" %>
<h2>회원 목록</h2>

<input type="button" value="회원등록" onclick="location.href='${path}/member/write.do'">
<table border="1" width="700px">
	<tr>
		<th>아이디</th>
		<th>이름</th>
		<th>이메일</th>
		<th>회원 가입 일자</th>
	</tr>
	<c:forEach var="row" items="${list }">
	<tr>
		<td> ${row.userId }</td>
		<!-- 회원정보를 보기 위해서 a태그를 추가해 보자. -->
		<td><a href="${path}/member/view.do?userId=${row.userId}">${row.userName}</a></td>
		<td> ${row.userEmail }</td>
		<td> ${row.userRegdate }</td>
	</tr>
	</c:forEach>
</table>


</body>
</html>