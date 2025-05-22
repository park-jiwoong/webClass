<%@page import="java.sql.SQLException"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
// ex06_ok.jsp?deptno=10
String pdeptno = request.getParameter("deptno");

String sql = "SELECT * "
		  + " FROM emp "
		  + " WHERE deptno = " + pdeptno;

int empno;              
String ename;           
String job;             
int mgr;                
LocalDateTime hiredate; 
double sal;             
double comm;            
int deptno;             

conn = DBConn.getConnection(); // 1, 2

// 3 CRUD
try {
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);  // select
	// int stmt.executeUpdate(sql);  insert, update, delete DML
	if (rs.next()) {		
		do {
			 empno = rs.getInt("empno");              
			 ename = rs.getString("ename");           
			 job = rs.getString("job");             
			 mgr = rs.getInt("mgr");    
			 // LocalDateTime 변환
			 hiredate = rs.getTimestamp("hiredate").toLocalDateTime(); 
			 sal = rs.getDouble("sal");             
			 comm = rs.getDouble("comm");              
			 deptno = rs.getInt("deptno");
			 
			 out.print(String.format("%d\t%s<br>", empno, ename));
			 			 
		} while (rs.next());
		
	} else{
		out.print(String.format("사원 존재 X <br>"));
	}
	
} catch (SQLException e) {
	e.printStackTrace();
} finally {
	try {
		if(rs != null )   rs.close();				
		if(stmt != null ) stmt.close();
		DBConn.close(); // 4
	} catch (SQLException e) { 
		e.printStackTrace();
	}
}

%>

</body>
</html>








