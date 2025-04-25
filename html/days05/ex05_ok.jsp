<!-- page 지시자 -->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>ex05_ok.jsp</h3>

<!-- jsp 스크립트 요소 3가지 : 스크립트릿, 표현식 -->
<%
  // 자바 코딩...
  // http://localhost/webPro/html/days05/ex05_ok.jsp
  // ?                		  QueryString
  // id=hong
  // &
  // passwd=1234
  // &
  // 파라미터명=파라미터값
  
  //                              id, passwd
  // jsp 기본 제공 내장 객체(9) : request (요청) 객체
  String id = request.getParameter("id");
  String passwd = request.getParameter("passwd");
%>

전송된 아이디 : <%= id %><br>
전송된 비밀번호 : <%= passwd %><br>

</body>
</html>












