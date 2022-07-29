<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*,javax.sql.*, java.io.*"%>
<html>
<head>
</head>
<body>
	<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/kopoctc", "root", "kopo40");
	Statement stmt = conn.createStatement(); //Statement 객체생성
	String id = request.getParameter("key"); //key에 해당하는 데이터를 가져와 id에 문자열로 할당

	String sql = "delete from gongji where id= " + id + ";"; //해당 id의 데이터를 지우는 sql문을 sql이라는 변수에 할당
	stmt.executeUpdate(sql); //sql문 실행
	//사용했던 객체들을 메모리에서 해제(최근에 사용했던 객체부터 거꾸로 올라가며 해제)
	stmt.close();
	conn.close();
	response.sendRedirect("gongji_list.jsp");//특정페이지로의 이동(서버가 이동경로를 결정함)
	//->사용하는 이유: 페이지를 이동시키는 코드지만 밑에 다른 소스코드들도 실행됨
	%>
</body>
</html>

