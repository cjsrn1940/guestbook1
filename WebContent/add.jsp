<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.List" %>
<%@ page import = "com.javaex.dao.GuestbookDao" %> 
<%@ page import = "com.javaex.vo.GuestbookVo" %>

<%

	request.setCharacterEncoding("UTF-8");

	GuestbookDao guestDao = new GuestbookDao();
	
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	//System.out.println(name + ", " + password + ", " + content);
	
	GuestbookVo guestVo = new GuestbookVo(name, password, content);
	
	
	
	guestDao.guestInsert(guestVo);
	
	response.sendRedirect("./addList.jsp");
%>
<%--
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
--%>