<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.List" %>    
<%@ page import="com.javaex.dao.GuestbookDao"%>
<%@ page import = "com.javaex.vo.GuestbookVo" %>

<%
request.setCharacterEncoding("UTF-8");

	GuestbookDao guestDao = new GuestbookDao();
	List<GuestbookVo> guestList = guestDao.getGuestList();

	int no = Integer.parseInt(request.getParameter("no"));
	
	String password = request.getParameter("password");
	System.out.println(password);
	
	
	
	
	for(int i=0; i<guestList.size(); i++) {
		if(guestList.get(i).getNo() == no) {
			String realP = guestList.get(i).getPassword();
			System.out.println(realP);
			System.out.println(i);
			if(password.equals(realP)) {
				int count = guestDao.guestDelete(no);
			}
		}
	}

	
	
	//if(password.equals(realP)) {
	//	int count = guestDao.guestDelete(no);
	//}
	
	response.sendRedirect("./addList.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>