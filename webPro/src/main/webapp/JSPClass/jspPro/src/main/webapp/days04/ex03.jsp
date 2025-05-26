<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String error = request.getParameter("error"); // 예 로그인을 실패하면 (빈 문자열 " ")
	String logonName = request.getParameter("name"); 
	String auth = request.getParameter("auth");  // 권한 여부
%>
<!DOCTYPE html> <!-- 스클릿트릿은 무.조.건 서버에서 실행됨 ↑ -->
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<title>로그인 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://localhost/jspPro/resources/cdn-main/example.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
	<style>
 	span.material-symbols-outlined{
    vertical-align: text-bottom;
 	}
 	
 	#logon, #logout{
 		border: 1px solid gray;
 		width: 300px;
 		padding: 20px;
 		border-radius: 10px; 
 	}
 	
 	
	</style>
</head>
<body>
<header>
    <h1 class="main"><a href="#" style="position: absolute;top:30px;">Park Jiwoung</a></h1>
    <ul>
        <li><a href="#">로그인</a></li>
        <li><a href="#">회원가입</a></li>
    </ul>
</header>
<div>
    <xmp class="code">
    	로그인 페이지
    	아이디
    	비밀번호
    	[로그인]
    	
    	ex03.jsp 메인 페이지 + 로그인
    	
    	예)
    	설문조사		인증 O + 권환 O	admin 인증을 받으면 (login)
    	일정관리		인증 O
    	게시판		인증 X
    	
    </xmp>
    
    <div id="logon">
    <form action="ex03_ok.jsp" method="get">
    	아이디 : <input type="text" name="id" value="admin"> <br>
    	비밀번호 :  <input type="password" name="passwd" value="1234"><br>
    	<input type="submit"> <!-- 서브밋 하면 ex02_ok로 넘어감 -->
    	<input type="reset">
    </form>
    </div>
    
    <div id="logout" style="display: none">
    	[<%= logonName %>]님 로그인 하셨습니다.<br>
    	<button>로그아웃</button>
    </div>
    
    <br>
    <%
    	if(logonName != null){
    		if(auth.equals("true")){   	
	%>
    <a href="#">설문조사</a><br>			   			
	<%
    		}
    %>		
    		
    <a href="#">일정관리</a><br>  
    
   	<script>
		alert("로그인 성공!!!");
		$("#logon").hide();
		$("#logout").show();
	</script>
    <%
    	}
    %>
    
    <a href="#">게시판</a><br>
    
    
</div>

    <%
    	if(error != null && error.equals("")){ //빈 문자열 "" 이면 실패한 경우
    %>
	<script type="text/javascript">
		alert("로그인 실패 후 다시 ex02.jsp 리다이렉트 되었다...");
		/* 경고창 띄우기는 클라이언트 브라우져에서 띄워야 함 */
	</script>
	<%
		}
	%>
	
	<script>
		$("#logout button").on("click", function() {
			location.href = "ex03_logout.jsp";
		})
	</script>
</body>
</html>