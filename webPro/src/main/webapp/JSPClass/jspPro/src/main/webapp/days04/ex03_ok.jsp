<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	// JDBC id/pwd 이 아이디가 존재하는지, DB 처리 X (지금은 고정값으로 처러)
	String location;
	String name = "";
	boolean auth; 
	if(id.equals("admin") && passwd.equals("1234")){
		name = "관리자";
		auth = true;
		location = "ex03.jsp?name="+URLEncoder.encode(name)+"&auth="+ auth; // 한글 들어가면 16진수로 변환 하는 작업이 필요함
		// 로그인 인증 정보가 어딘가에 상태가 유지되어야 함 그것이 끝나고 -> 리다이렉트가 진행되어야 함
		// 인증 정보를 쿠키, 세션, DB에 저장해서 페이지가 이동을 하더라도 상태 유지되도록 처리
	}else if(id.equals("hong")&& passwd.equals("1234")){
		name = "홍길동";
		auth = false;
		location = "ex03.jsp?name="+URLEncoder.encode(name)+"&auth="+ auth; 
	}else if(id.equals("kim")&& passwd.equals("1234")){
		name = "김도훈";
		auth = false;
		location = "ex03.jsp?name="+URLEncoder.encode(name)+"&auth="+ auth; 
	}else{
		location = "ex03.jsp?error"; // 서버에서 ex02.jsp 로그인 실패정보 들어가 있으면 로그인 실패값을 응답시켜야함 (쿠키, 세션 상시로 올릴 건지 -> DB에 넣어둘지)
	}	//					↑ ?error 파라미터 값을 줌 

		//[1] 리다이렉트
		response.sendRedirect(location); // 다시 방향을 돌려 줌 -> location으로 ex02.jsp에 돌아가서 alret의 메세지를 다시 뿌리러 되돌아감
		// 세븐 -> cu 스토리 기억
		
		//[2] 포워딩
		// Dispatcher 발송담당자, 급파하는 사람
		// 클라이언트에는 포워딩에 나온 정보를 확인 할 수가 없음
		/*
		RequestDispatcher dispatcher = request.getRequestDispatcher(location);
		dispatcher.forward(request, response);
		*/
%>