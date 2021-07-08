<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>    
<%@ page import="com.javaex.vo.PersonVo" %>    
<%@ page import="java.util.List" %>    
    
<% 
	//id 값으로 해당하는 personVo 호출
	int personId = Integer.parseInt(request.getParameter("id"));
	PhoneDao phoneDao = new PhoneDao();
	PersonVo personInfo = phoneDao.getPerson(personId);
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 수정</h1>
	<p>수정화면입니다. 아래 항목을 수정하시고, 수정 버튼을 클릭하세요</p>
	<form action = "./update.jsp" method = "get">
		이름 : <input type = "text" name = "name" value = "<%= personInfo.getName() %>"><br>
		핸드폰 : <input type = "text" name = "hp" value = "<%=personInfo.getHp() %>"><br>
		회사 : <input type = "text" name = "company" value = "<%=personInfo.getCompany() %>"><br>
		<input type = "hidden" name = "id" value = "<%=personInfo.getPersonId() %>"><br>
		<button type = "submit"> 수정 </button>
		
	</form>
	
</body>
</html>