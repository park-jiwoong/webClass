<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<title>2025. 5. 21. 오전 11:27:55</title>
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
  <form id="bookForm" action="ex02_el_ok.jsp">
    책 제목 : <input type="text" id="title" name="title" autofocus="autofocus"><br>
    저자 : <input type="text" id="author" name="author"><br>
    나이: <input type="text" id="age" name="age"><br>
    <button type="button" id="submitBtn">제출</button>
    <input type="reset">
  </form>

  <!-- 여기에 경고 메시지가 출력됨 -->
  <p class="validateTips">입력값을 확인하세요.</p>
</div>
<script>
 ageRegex = /^(?:\d|[1-9]\d|1[0-2]\d|130)$/,
 title = $( "#title" ),
 author = $( "#author" ),
 age = $( "#age" ),
 allFields = $( [] ).add( title ).add( author ).add( age )
 
 function checkLength( o, n , min, max  ) {
      if ( o.val().length > 0 ) {
        return true;
      } else {    	
    	alert(`\${n} 필수 입력!!!`);
    	o.focus();
        return false;
      }
    }
 
    function checkRegexp( o, regexp, n ) {
      if ( !( regexp.test( o.val() ) ) ) {
        alert( n );
        o.select();
        return false;
      } else {
        return true;
      }
    }
    
    $("#submitBtn").on("click", function (){
    	var valid = true;
   
        valid = valid && checkLength( title, "책 제목" );
        valid = valid && checkLength( author, "저자" );
        valid = valid && checkLength( age, "나이" );
           
        valid = valid && checkRegexp( age, ageRegex, "0~130살 유효!!" );
      
        if ( valid ) {
          $("form").submit();
        } 
    });
</script>

<script>
/* 김유미
$(function() {
  const tips = $(".validateTips");

  function updateTips(msg) {
    tips.text(msg).addClass("ui-state-highlight");
    setTimeout(() => {
      tips.removeClass("ui-state-highlight", 1500);
    }, 500);
  }

  function checkAge(o, min, max) {
    const val = o.val().trim();
    const num = parseInt(val, 10);

    if (!/^\d+$/.test(val) || num < min || num > max) {
      o.addClass("ui-state-error");
      updateTips("나이는 " + min + "살부터 " + max + "살까지 입력 가능합니다.");
      return false;
    } else {
      return true;
    }
  }

  $("#submitBtn").click(function() {
    $(".ui-state-error").removeClass("ui-state-error");

    const isValid = checkAge($("#age"), 1, 130);
    if (isValid) {
      $("#bookForm").submit();
    }
  });
});
*/
</script> 
<script>
/* 김현수
$(function() {
  $('#submitBtn').on('click', function() {
    var title = $('#title').val().trim();
    var author = $('#author').val().trim();
    var age = $('#age').val().trim();
    
    if (title === "") {
      alert('책 제목을 입력하세요.');
      $('#title').focus();
      return;
    }
    if (author === "") {
      alert('저자를 입력하세요.');
      $('#author').focus();
      return;
    }
    if (!/^\d+$/.test(age) || Number(age) < 1 || Number(age) > 130) {
      alert('나이는 1~130 사이의 숫자만 입력 가능합니다.');
      $('#age').focus();
      return;
    }
    
    $(this).closest('form')[0].submit();
  });
});
*/

</script>
<script>
/* 1조 안준호
function validate() {
    const titleVal = $("#title").val().trim();
    const authorVal = $("#author").val().trim();
    const ageVal = $("#age").val().trim();

    if (titleVal === "" || authorVal === "") {
        alert("제목또는 저자를 입력하세요.");
        event.preventDefault();
        return;
    }

    const ageNum = Number(ageVal);
    const regex = new RegExp("^(100|[1-9][0-9]?)$");
    if (!regex.test(ageNum)) {
        alert("나이는 1부터 100까지의 숫자만 입력 가능합니다.");
        event.preventDefault();
        return;
    }
}
*/
</script>

</body>
</html>











