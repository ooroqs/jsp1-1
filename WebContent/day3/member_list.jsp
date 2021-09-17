<%@page import="java.util.List"%>
<%@page import="day3.dao.CustomerDao"%>
<%@page import="day3.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day3[4]- db 회원 리스트</title>
<style>
	ul{
		display:flex;
		list-style: none;
	}
	ul #name{
		padding : 5px  20px;
		margin : 5px 0px;
		background-color: tomato;
		color:white;
	}
	li {
		padding : 5px  20px;
		margin : 5px 0px;
		border: 1px solid gray;
		border-radius: 3px;
	}
	</style>
</head>
<body>
<%
	CustomerDao dao = CustomerDao.getInstance();
	List<Customer> list = dao.selectAll();
	out.print(list);
%>
<h3> 고객 리스트 WELCOME!!!</h3>
<ul>
	<li id="name">홍길동 님</li>
	<li>email</li>
	<li>나이 세 <%-- (<%= (gender.equals("male")? "남":"여") %>) --%> </li>
	<li>지역</li>
	<li>취미</li>
</ul>
</body>
</html>