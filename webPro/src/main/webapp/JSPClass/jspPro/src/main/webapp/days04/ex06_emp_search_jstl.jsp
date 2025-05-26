<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<title>서블릿 되어야 함</title>
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
    <h1 class="main"><a href="#" style="position: absolute;top:30px;">Park Jiwoung</a></h1>
    <ul>
        <li><a href="/jspPro/days04/empSearch.htm">로그인</a></li>
        <li><a href="#">회원가입</a></li>
    </ul>
</header>
<div>
    <xmp class="code">
    ex06_emp_search_jstl.jsp
    </xmp>
    <%
    String contextPath = request.getContextPath();
    %>
    <form action="<%= contextPath %>/days04/empsearch.htm">
    	<fieldset>
    		<legend>부서 선택</legend>
    		<c:forEach items="${dlist}" var="vo">
    			<input type="checkbox" id="deptno-${vo.deptno }" name="deptno" value="${vo.deptno }"
    				<c:if test="${fn:contains( fn:join(paramValues['deptno'], ','), vo.deptno)}">checked</c:if>>
    			
    			<label for="deptno-${vo.deptno }">${vo.dname }</label>
    		</c:forEach>
    	</fieldset>
    	
    	<fieldset>
    		<legend>잡(job) 선택</legend>
    		<c:forEach items="${jlist}" var="job">
    			<input type="checkbox" id="job-${job}" name="job" value="${job}">
    			<label for="job-${job}">${job}</label>
    		</c:forEach>
    	</fieldset>
    	
    	<fieldset>
      		<legend>입사일자 선택</legend> 
	        <input type="datetime-local" id="hiredate_start" name="start"> 
	        ~
	        <input type="date" id="hiredate_end" name="end"> 
    	</fieldset>
    	
    	<input type="submit" value="search">
    	<input type="button" value="emp delete">
    	
    </form>
    
    <h2>emp search list</h2>
  <table>
    <thead>
     <tr>     
      <th>empno</th>
      <th>ename</th>
      <th>job</th>
      <th>mgr</th>
      <th>hiredate</th>
      <th>sal</th>
      <th>comm</th>
      <th>deptno</th>
     </tr>     
    </thead>
    <tbody>
    <c:if test="${empty elist}">
		<tr>
        <td colspan="8">사원이 존재 X</td>
      </tr>
    </c:if>
    <c:if test="${ not empty elist}"></c:if>
    <c:forEach items="${elist }" var="vo">
    	<tr>
		      <td>${vo.empno}</td>
		      <td>${vo.ename}</td>
		      <td>${vo.job}</td>
		      <td>${vo.mgr}</td>
		      <td>${vo.hiredate}</td>
		      <td>${vo.sal}</td>
		      <td>${vo.comm}</td>
		      <td>${vo.deptno}</td>    
       </tr>
    </c:forEach>
     
    </tbody>
    <tfoot>
      <tr>
        <td colspan="8">
          <span class="badge left red">
          <!-- el 삼항 연산자 사용 가능 -->
          ${empty elist ? 0 : elist.size() }명
          </span>
          <a href="javascript:history.back()">뒤로 가기</a>
        </td>
      </tr>
    </tfoot>
  </table>
    
</div>

	<script>
	//http://localhost/jspPro/days04/ex06_emp_search_jstl.jsp
	//?
		let url = location.href;
		//alert(url);
		$(":checkbox[name=job]").each(function (index, element) {
			let value = $(element).val();
			if(url.indexOf(`job=\${value}`) !=-1){
				$(element).prop("checked", true);
			}
		});
		
		
		
   		/* $(":checkbox[name=deptno]").each(function (index, element){
	      let v = $(element).val();
	      if(  url.indexOf(`deptno=\${v}`) != -1 ){
	         $(element).prop("checked", true);
	      }
	   	}); */
	</script>
</body>
</html>