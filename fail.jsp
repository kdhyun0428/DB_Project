<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="UTF-8">
<title>fail</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2 style="text-align: center">게임 정보가 존재하지 않습니다.</h2>
		<p style="text-align: center">
			<input type="button" value="돌아가기"
				onclick="window.location='list.jsp'">
		</p>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
