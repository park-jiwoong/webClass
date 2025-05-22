<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<title>2025. 5. 22. 오후 2:32:45</title>
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
     프로젝트 할 때 경로 
  </xmp>
  <!-- 상대경로 -->
  <img src="../images/img_chania.jpg" alt="" />
  <!-- 절대경로 -->
  <img src="http://localhost/jspPro/images/img_chania.jpg" alt="" />
  
  <%
     String contextPath = request.getContextPath();
  %>
  <!-- /jspPro -->
  contextPath = <%= contextPath %><br>
  
  <!-- http://localhost/jspPro/days02/img_chania.jpg -->
  <img src="img_chania.jpg" alt="A" />
  <!-- http://localhost/img_chania.jpg -->
  <img src="/img_chania.jpg" alt="B" />
  <hr>
  <img src="<%= contextPath %>/images/img_chania.jpg" alt="B" />
</div>
</body>
</html>

















