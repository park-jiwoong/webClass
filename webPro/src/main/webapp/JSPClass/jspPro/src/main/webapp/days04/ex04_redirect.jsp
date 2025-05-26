<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
 // 리다이렉트
 
 	String name = request.getParameter("name");
 	String age = request.getParameter("age");
 	
	String location = String.format("ex04_finish.jsp?name=%s&age=%s", name, age);
	response.sendRedirect(location);
	
%>