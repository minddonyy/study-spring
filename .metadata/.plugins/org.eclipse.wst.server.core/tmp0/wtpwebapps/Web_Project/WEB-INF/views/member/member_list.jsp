<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ�� ���</title>
<!-- <%@ include file="../include/member_header.jsp" %>-->
</head>
<body>
<!-- <%@ include file="../include/member_menu.jsp" %>-->
<h2>ȸ�� ���</h2>
<table border="1" width="700px">
	<tr>
		<th>���̵�</th>
		<th>�̸�</th>
		<th>�̸���</th>
		<th>ȸ�� ���� ����</th>
	</tr>
	<c:forEach var="row" items="${list }">
	<tr>
		<td> ${row.userid }</td>
		<td> ${row.username }</td>
		<td> ${row.email }</td>
		<td> ${row.regdate }</td>
	</tr>
	</c:forEach>
</table>


</body>
</html>