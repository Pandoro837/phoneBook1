<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>    
<%@ page import="com.javaex.vo.PersonVo" %>    
<%@ page import='java.util.List' %>  
<%
	request.setCharacterEncoding("UTF-8");	//post일 때, 한글이 깨지는 문제 해결
	
	//파라미터 받기
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PhoneDao phoneDao = new PhoneDao();
	//vo로 묶기
	PersonVo personVo = new PersonVo(name, hp, company);
	
	//인서트 해주기
	phoneDao.insert(personVo);
	
	//리스트 가져오기
	//List<PersonVo> personList = phoneDao.getList();
	//출력해서 확인
	//phoneDao.printList(personList);
	/* System.out.println(name);
	System.out.println(hp);
	System.out.println(company); */ 
	
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
	<%-- <h1>전화번호 리스트-insert</h1>
	<p>입력한 정보 내역입니다</p>
	
	<% 
		for(int i = 0; i < personList.size(); i++){
	%>
	
		<table border = "1">
			<tr>
				<td>이름</td>
				<td><%= personList.get(i).getName() %></td>

			</tr>
			<tr>
				<td>핸드폰</td>
				<td><%= personList.get(i).getHp() %></td>
			</tr>
			<tr>
				<td>회사</td>
				<td><%= personList.get(i).getCompany() %></td>
			</tr>
		</table>
		<br>
		
	<%	
	}
	%>	 --%>
</body>
</html>