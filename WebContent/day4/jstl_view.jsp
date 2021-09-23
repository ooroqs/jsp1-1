<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day4[2] Jstl과 el로 list 가져오기</title>
</head>
<body>
<%-- ${list} --%>
<h3> 고객 리스트 WELCOME!!!</h3>
<c:forEach var="cus" items="${list}" varStatus="status">  
<!-- items 값은 컬렉션이어야 합니다. 컬렉션에  하나씩 데이터를 가져와서 var 변수로 참조합니다. -->
<ul> <!-- for의 상태를 갖고 있는 status 변수에서 반복 인덱스 가져오기 : 몇번째 for인지 알수 있다. -->
	<li id="name">${status.index}:         
	<a href="update.jsp?idx=${cus.idx}">
	<!-- cus는 Customer 타입 객체. idx,name,email....은 프로퍼티. getter 없으면 값을 가져오지 못하고 오류 -->
					${cus.name}</a> 님
					</li>
	<li id="email">${cus.email }</li>
	<li>${cus.age} 세 (${cus.gender eq 'male' ? '남성' : '여성'} ) </li>
	<!-- el 은 문자열 같은지 비교할때 eq 연산자 사용합니다.  -->
	<li>${cus.addr }</li>
	<li id="hobby">${cus.hobby }</li>
</ul>
</c:forEach>
</body>
</html>