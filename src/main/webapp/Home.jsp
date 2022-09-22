<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Home page</h1>
<%String msg=(String)request.getAttribute("result"); %>
<%if(msg!=null){ %>
<%=msg%>
<%}else{ %>
<a href="getloginjsp">Login</a>
<a href="getsignupjsp">Sign up</a>
<%} %>
</body>
</html>