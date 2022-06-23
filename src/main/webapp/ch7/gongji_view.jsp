<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ page contentType = "text/html; charset=utf-8"%>
<%@ page import="java.sql.*,javax.sql.*, java.io.*"%>
<%@ page import = "java.util.Calendar" %>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/kopoctc", "root", "kopo40");
	Statement stmt = conn.createStatement(); //객체생성
	String id_gongji = request.getParameter("key");
	
	Integer id = 0;
	
	id = Integer.parseInt(id_gongji);
	
	ResultSet rset = stmt.executeQuery("select * from gongji where id = " +id+ ";");
	rset.next();
	Integer id_gongji2 = rset.getInt(1);//번호
	String title = rset.getString(2); //제목
	String today = new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
	String content = rset.getString(4); //내용
%>

<html>
<head>
<title>글 보기</title>
<SCRIPT LANGUAGE="JavaScript">

function submitForm(mode){
	if(mode == 'write'){
		fm.sction = "gongji_write.jsp";
	}else if(mode == "delete"){
		fm.action = "gongji_delete.jsp";
	}
	fm.submit();
}

</SCRIPT>
</head>
<body>

<table  border=1 cellspacing=0 cellpadding=5>

<tr>
<td><b>번호</b></td>
<td width=480 colspan=3 align=left><input type='hidden' name="id" value=<%=id%>><%=id%></td>
</tr>

<tr>
<td><b>제목</b></td>
<td width=480 colspan=3 align=left><input type='hidden' name="title" value=<%=title%>><%=title%></td>
</tr>

<tr>
<td><b>일자</b></td>
<td width=480 colspan=3 align=left><input type='hidden' name="today" value=<%=today%>><%=today%></td>
</tr>

<tr>
<td><b>내용</b></td>
<td width=480 colspan=3 align=left><input type='hidden' name="content" value=<%=content%>><%=content%></td>
</tr>
<%	
rset.close();
stmt.close();
conn.close();
%>

</table>
<table width=560>

<tr>
		<td width=500></td>
		<td><input type=button value="목록" OnClick="location.href='gongji_list.jsp'"></td>
		<td><input type=button value="수정" OnClick="location.href='gongji_update.jsp?key=<%=id%>'"></td>
		<td><input type=button value="삭제" OnClick="location.href='gongji_delete.jsp?key=<%=id%>'"></td>
</tr>
</table>

</body>
</html>
