<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	<script type="text/javascript" src="check.js"></script>

	<jsp:include page="header.jsp" />

	<section>
		<h2>게임회사 조회</h2>

		<form method="post" action="l_action.jsp" name="frm2"
			style="display: flex; align-items: center; justify-content: center">

			<table border="1">
				<tr>
					<td>회사이름을 입력하시오.</td>
					<td><input type="text" name="developer"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center">
					<input type="button" value="게임회사 조회" onclick="return search()"> &nbsp;&nbsp; 
					<input type="button" value="홈으로" onclick="home()">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
