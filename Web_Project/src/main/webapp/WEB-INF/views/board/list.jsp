<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시글 목록</title>
<%@ include file="../include/member_header.jsp" %>
<script>
	${document}.ready(function(){
		$("#btnWrite").click(function(){
			location.href="${path}/board/write.do";
		});
	});
	
</script>
</head>
<body>
<%@ include file="../include/member_menu.jsp" %>
<h2>게시글 목록</h2>
	<button type="button" id="btnWrite">글쓰기</button>
		<table border="1" width="600px">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>이름</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="row" items="${map.list}">
		<tr>
			<td>${row.bno }</td>
			<td>
			<a href="${path}/board/view.do>bno=${row.bno}">${row.title}</a>
			</td>
			<td>${row.writer }</td>
			<td>
			<!-- 원하는 날짜형식으로 출력하기 위해 fmt 태그 사용 -->
			<fmt:formatDate value="${row.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/>
			</td>
			<td>${row.viewcnt}</td>
		</tr>
		</c:forEach>
		</table>

</body>
</html>