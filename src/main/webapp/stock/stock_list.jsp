<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ page contentType = "text/html; charset=utf-8"%>
<%@ page import="java.sql.*,javax.sql.*, java.io.*"%>
<%@ page import = "java.util.Calendar" %>
<html>
<head>
<title>리스트</title>
</head>
<body>

<h3 align=center>(주)트와이스 재고 현황-전체현황</h3>
<table cellspacing=1 width=800 border=1 align=center>
<tr>
<td width=100><p align=center>번호</p></td>
<td width=500><p align=center>상품명</p></td>
<td width=150><p align=center>현재 재고수</p></td>
<td width=150><p align=center>재고파악일</p></td>
<td width=150><p align=center>상품등록일</p></td> 
</tr>

<%
	Class.forName("com.mysql.cj.jdbc.Driver"); 
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/kopoctc","root","kopo40");
	Statement stmt =conn.createStatement();//Statement 객체 생성
	ResultSet rset = stmt.executeQuery("select * from twiceStock order by id;");
	while(rset.next()){
		int id = rset.getInt(1);
%>

<tr text align=center>
<td><a href='stock_view.jsp?key=<%=id%>'><%=id%></a></td>
<td><a href='stock_view.jsp?key=<%=id%>'><%=rset.getString(2)%></a></td>
<td><%=rset.getInt(3) %></td>
<td><%=rset.getString(4) %></td>
<td><%=rset.getString(5) %></td>
</tr>
<%
	}
%>
</table><br>
<table align=center>
<tr><td width=600></td><td><input align=center type=submit OnClick=location.href='stock_insert.jsp' value=신규등록></input></td></tr>
</table>

<table cellspacing=3 cellpadding=20>

<%
rset.close();
stmt.close();
conn.close();
%>

</tr>
</table>
</html>
</head>
