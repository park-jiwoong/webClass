<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/x-icon"
	href="http://localhost/jspPro/images/SiSt.ico">
<title>2025. 5. 22. 오전 1:33:58</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="http://localhost/jspPro/resources/cdn-main/example.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
span.material-symbols-outlined {
	vertical-align: text-bottom;
}
</style>
</head>
<body>
	<header>
		<h1 class="main">
			<a href="#" style="position: absolute; top: 30px;">Park Jiwoong</a>
		</h1>
		<ul>
			<li><a href="#">로그인</a></li>
			<li><a href="#">회원가입</a></li>
		</ul>
	</header>
	<div>
		<xmp class="code"> ex04_02.jsp 를 form 태그로 서브밋 수정. </xmp>
		<form action="ex04_02.jsp" method="get">
			정수 : <input type="text" id="num" name="num" autofocus="autofocus">
			<br>
			<p id="demo"></p>
			<button type="submit">계산</button>
		</form>
	</div>

	<script>
		$("#num").css("text-align", "center").val('${param.num}').on({
			"keydown" : function(e) {
				if (!((e.which >= 48 && e.which <= 57) // 숫자 0-9
						|| (e.which >= 96 && e.which <= 105) // 숫자 키패드 0-9
						|| e.which == 8 // Backspace
						|| e.which == 13 // Enter
				|| e.which == 229 
				)) {
					alert("숫자만 입력하세요.");
					e.preventDefault(); // 이벤트의 기본 동작을 막음 (여기서는 입력 방지)
				}
			}
		}).select();

		// 페이지 로딩 시 결과 표시
		$(document).ready(function() {
			let content = "";
			let sum = 0;
			let numParam = "${param.num}";

			if (numParam) {
				let num = parseInt(numParam);
				for (let i = 1; i <= num; i++) {
					content += i + "+";
					sum += i;
				}
				if (content.endsWith("+")) {
					content = content.slice(0, -1);
				}
				content += "=" + sum;
				$("#demo").text(content);
			}
		});
	</script>

</body>
</html>