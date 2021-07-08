<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>    
<%@ page import="com.javaex.vo.PersonVo" %>    
<%@ page import='java.util.List' %>  
<%
	//파라미터 받기
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PhoneDao phoneDao = new PhoneDao();
	//vo로 묶기
	PersonVo personVo = new PersonVo(id, name, hp, company);    
	//update
	phoneDao.update(personVo);
	//리다이렉트
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