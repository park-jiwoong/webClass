<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<title>두 정수의 사이의 합</title>
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
	<h1>두 정수의 사이의 합</h1>
	<form action="test01_result.jsp" method="get">
	<label for="num1">정수 1</label>
	<input type="number" id="num1" name="num1" required="required"> 
	~
	<label for="num2">정수 2</label>
	<input type="number" id="num2" name="num2" required="required"> 
	<button type="submit">실행</button>
	</form>
<div>
    <xmp class="code">
        1) 두 정수를 n, m을 입력하는 <input> 태그를 
            선언하고 실행버튼<button>을 클릭하면 
            서버 두 정수 사이의 합을 출력하는 코딩을 하세요
            ( test01.jsp )
    </xmp>
</div>
</body>
</html>