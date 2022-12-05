<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="check.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	

	<jsp:include page="header.jsp" />

	<section>
		<h2>고객 조회</h2>

		<form method="post" action="l_action2.jsp" name="frm"
			style="display: flex; align-items: center; justify-content: center">

			<table border="1">
				<tr>
					<td>회원이름을 입력하시오.</td>
					<td><input type="text" name="cust_name"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center">
					<input type="button" value="회원이름 조회" onclick="return search2()"> &nbsp;&nbsp; 
					<input type="button" value="홈으로" onclick="home()">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
