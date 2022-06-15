<%@page import="com.jukebox.domain.model.Product"%><!-- import해야 Product 클래스 내부 요소들을 활용할 수 있음 -->
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html><!-- 웹문서가 어떤 버전의 HTML 언어로 작성되었는지 결정: 문서간의 호환성을 높이기 위함-->

<html>

<head>
<meta charset="UTF-8"> <!-- 정상적으로 한글이 인코딩되게 함 -->
<title>상품 정보</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include><!-- jsp 파일을 다른 .jsp에서 include 하기 위함-->

	<div class="p-5 bg-primary text-white"><!-- 배경색, 패딩, 글자색 적용 -->
		<div class="container">
			<h1 class="display-3">상품 정보</h1><!-- display-3은 h1보다 크기가 큰 문자열을 표현 -->
		</div>
	</div>

	<div class="container mt-3"><!-- mt : margin top -->

		<form name="newProduct" action="processAddProduct.jsp" method="post"
			class="form-group">
			<div class="form-group row m-3">
				<label class="col-sm-2">상품 코드</label>
				<!-- 작은기기에서 반응형 -->
				<div class="col-sm-3">
					<input type="text" name="productId" class="form-control">
				</div>
			</div>
			<div class="form-group row m-3">
				<label class="col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row m-3">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" class="form-control">
				</div>
			</div>
			<div class="form-group row m-3">
				<label class="col-sm-2">상세정보</label>
				<div class="col-sm-3">
					<textarea type="text" colsname="description" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row m-3">
				<label class="col-sm-2">제조사</label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>
			<div class="form-group row m-3">
				<label class="col-sm-2">분류</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
			<div class="form-group row m-3">
				<label class="col-sm-2">재고 수</label>
				<div class="col-sm-3">
					<input type="text" name="unitInStock" class="form-control">
				</div>
			</div>
			<div class="form-group row m-3">
				<label class="col-sm-2">상태</label>
				<div class="col-sm-3">
					<input type="radio" name="condition" value="New" checked>신규
					제품 <input type="radio" name="condition" value="Old">중고 제품 <input
						type="radio" name="condition" value="Refurbished">재정비 제품
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>

		</form>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
