<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<title>2025. 5. 23. 오후 12:11:23</title>
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
   http://localhost/jspPro/days03/ex01_02.jsp
   ?
   empno=7499
   &
   empno=7654
   &
   empno=7698
  </xmp>
  
  <p id="demo">
    <ul>
      <%
         String [] empnoArr =  request.getParameterValues("empno");
         for( int i=0; i< empnoArr.length ; i++ ){
        	 String empno = empnoArr[i];
      %><li><%= empno %></li><%  	 
         } // for
      %>
    </ul>
  </p>
  
</div>
</body>
</html>










