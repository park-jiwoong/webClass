<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<title>2025. 5. 23. 오후 4:18:37</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://localhost/jspPro/resources/cdn-main/example.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }   
</style>
</head>
<body>
<header>
  <h1 class="main"><a href="#" style="position: absolute;top:30px;">kEnik HOme</a></h1>
  <ul>
    <li><a href="#">로그인</a></li>
    <li><a href="#">회원가입</a></li>
  </ul>
</header>
<div>
  <xmp class="code"> 
      [JSP 구성 요소]
      1. jsp 스크립트
      2. jsp 기본 내장 객체 (9가지)
         1) request 객체 p74
  </xmp>
  
  [암기]<br>
  
 *** 1.  contextPath(컨텍스트 루트) : <%= request.getContextPath() %><br>
 *** 2. 클라이언트 IP 주소 : <%= request.getRemoteAddr() %><br>
 *** 3. 요청 전송 방식 : <%= request.getMethod() %><br>
 *** 4. 요청 URL : <%= request.getRequestURL() %><br>
 *** 5. 요청 URI : <%= request.getRequestURI()  %><br>     
  
</div>
</body>
</html>







