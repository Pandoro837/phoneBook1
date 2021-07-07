<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 삭제</h1>
	<form action ="./delete.jsp" method = "get">
		<p>삭제할 번호를 입력해주세요</p>
		번호 : <input type = "text" name = "personId" value="">
		
		<button type = "submit">삭제</button>
	
	</form>
	
	<a href = "./list.jsp">리스트 확인</a>
	
</body>
</html>