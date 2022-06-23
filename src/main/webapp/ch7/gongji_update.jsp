<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@ page contentType = "text/html; charset=utf-8"%>
<%@ page import="java.sql.*,javax.sql.*, java.io.*"%>

<%@ page import = "java.util.Calendar" %>
<html>
<head>
<title>글 수정</title>
<SCRIPT LANGUAGE="JavaScript">
<!--
function submitForm(mode){
	if(mode == 'write'){
		fm.sction = "gongji_write.jsp";
	}else if(mode == "delete"){
		fm.action = "gongji_delete.jsp";
	}
	fm.submit();
}
-->
</SCRIPT>
</head>
<%
	String today = new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
%>

<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/kopoctc", "root", "kopo40");
	Statement stmt = conn.createStatement(); //객체생성
	String id_gongji = request.getParameter("key");
	ResultSet rset = stmt.executeQuery("select * from gongji where id='"+id_gongji+"';");
	
	request.setCharacterEncoding("UTF-8"); // 한글 처리
	rset.next();
	int id = rset.getInt(1);
	String title = rset.getString(2);
	String content = rset.getString(4);
	rset.close();
	stmt.close();
	conn.close();
	
	//response.Redirection("gongji_list.jsp");
%>


</body>
</html>
