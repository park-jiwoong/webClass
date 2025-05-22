<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	/* 
	http://localhost/webPro/javascript/days04/
	ex04_ok.jsp
	?
	subject=mat
	 */
   // jsp  기본 제공되는 객체 : request 객체
   String subject = request.getParameter("subject");
%>

> 전송된 좋아하는 과목 : <%= subject %><br>
<br>
<br>
<br>
<a href="javascript:history.back();">뒤로 가기</a>
<a href="javascript:location.href='ex04.html'">뒤로 가기</a>
<br>
<!-- input[type=radio name=subject value]*4>lable -->
<input type="radio" name="subject" value="kor"><label for="">국어</label>
<input type="radio" name="subject" value="eng"><label for="">영어</label>
<input type="radio" name="subject" value="mat"><label for="">수학</label>
<input type="radio" name="subject" value="pe"><label for="">체육</label>
<br>  

<!-- JSP 문법에 EL(표현언어) 만약 이걸 script에 넣어버리면 우선 순위가 바뀌어서 오류가 발생함 ☆☆☆-->
<script>
let subject = '<%= subject %>';
document.querySelector(`input[type=radio][value=\${subject}]`).checked = true ;
  
</script>
</body>
</html>












