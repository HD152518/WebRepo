<!-- 1. Directive tag(지시자) -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--2. comment tag(jsp 주석) --%>
	<%--3. Declaration tag --%>
	
	<%--4. Scriptlet tag (자바 그대로 작성) --%>
	<%! private static final String DEFAULT_NAME = "Guest"; %>
	
	<%
		//자바코드를 그대로 작성
		String name = request.getParameter("name");
		if(name == null) name = DEFAULT_NAME;
	%>
	
	<%--5. Expression tag(표현식) --%>
	<h1>Hello, <%=name %></h1>
	
	
</body>
</html>