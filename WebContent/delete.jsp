<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.PhoneDao" %>
<%@ page import = "com.javaex.vo.PersonVo" %>

<%
	PhoneDao phoneDao = new PhoneDao();
	//파라미터 꺼내기
	int personId = Integer.parseInt(request.getParameter("id"));
	
	//삭제하기
	phoneDao.delete(personId);
	
	//리스트 가져오기 - > 리다이렉트
	response.sendRedirect("./list.jsp");
	
	
	
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>