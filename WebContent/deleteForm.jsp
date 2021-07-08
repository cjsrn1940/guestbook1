<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.util.List" %>
<%@ page import="com.javaex.dao.GuestbookDao"%>
<%@ page import="com.javaex.vo.GuestbookVo"%>

<%
	
	GuestbookDao guestDao = new GuestbookDao();
	List<GuestbookVo> guestList = guestDao.getGuestList();

	int noId = Integer.parseInt(request.getParameter("no"));
	System.out.println(noId);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./delete.jsp" method="post">
		
		비밀번호 <input type="text" name="password" value="">
		<button type="submit">확인</button>
		
		<input type="hidden" name="no" value="<%=noId%>">
		
		
	</form>
	
	<a href = "./addList.jsp">메인으로 돌아가기</a>
	

</body>
</html>