<%@page import="java.util.Date" %><%@page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <!-- nav>.container>.navbar-header>a.navbar-brand -->
    <nav class="navbar navbar-expand navbar-dark bg-dark">
        <div class="container">
            <div class="navbar-header">
                <a href="./welcom.jsp" class="navbar-brand">Home</a>
            </div>
           </div>
        </nav>
        <div class="p-5 bg-primary text-white"> 
            <!-- .container>h1.display-3 -->
            <div class="container">
                <h1 class="display-3">Welcome to Web Shopping Mall!</h1>
            </div>
          </div>

          <div class="container">
            <div class="text-center">
                <h3>Hello!!</h3>
             
                
                <%
				Date now = new Date();
				SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss");
                %>


            </div>
            </div>
<footer class="container">
    <p>&copy; Webmarket</p>
</footer>


</body>
</html>
