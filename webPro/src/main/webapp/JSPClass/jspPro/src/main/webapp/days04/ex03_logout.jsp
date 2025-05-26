<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%


		// 인증X, 권한X 초기화 작업들을 하고 난 후 ~ 메인 페이지로 이동...
		
		//[1] 리다이렉트
		String location = "ex03.jsp";
		response.sendRedirect(location); // 다시 방향을 돌려 줌 -> location으로 ex02.jsp에 돌아가서 alret의 메세지를 다시 뿌리러 되돌아감
		
%>