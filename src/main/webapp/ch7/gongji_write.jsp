<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write</title>
</head>
<body>
	<%
	  Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/kopoctc","root","kopo40");
		Statement stmt = conn.createStatement();
		
		request.setCharacterEncoding("UTF-8"); // 한글 처리
		
		stmt.execute("INSERT INTO gongji (title, date, content) values('" +
		request.getParameter("title") + "', date(now()), '" +
		request.getParameter("content") + "');");
	  
		stmt.close();
		conn.close();
		response.sendRedirect("gongji_list.jsp");
		%>
</body>
</html>