<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="beantest" class="JSPTest.BeanTest" scope="page"/>
<jsp:setProperty name="beantest" property="name" param="name"/>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<b>자바빈 사용 예제</b>
<h3><%=beantest.getName() %></h3>
</body>
</html>