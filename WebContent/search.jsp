<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>    
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="java.util.List" %>

<%
	PhoneDao phoneDao = new PhoneDao();
	String searchWord = request.getParameter("searchWord");
	List<PersonVo> personList = phoneDao.search(searchWord);
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>검색하신 결과입니다</h1>
	<% 
		if(personList.size() > 0){
			for(PersonVo personInfo : personList){
	%>
		<table border = "1">
			<tr>
				<td>이름</td>
				<td><%= personInfo.getName() %></td>
			</tr>
			<tr>
				<td>핸드폰</td>
				<td><%= personInfo.getHp() %></td>
			</tr>
			<tr>
				<td>회사</td>
				<td><%= personInfo.getCompany() %></td>
			</tr>
		</table>
	<%
			}
		} else {
	%> <p>검색어와 일치하는 내용이 없습니다.</p><%
		}
	%>
	<a href = "./list.jsp">리스트로 이동</a>
</body>
</html>