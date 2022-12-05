<%@page import="java.sql.*"%>
<%@page import="DBPKG.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="UTF-8">
<title>success</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<%
		request.setCharacterEncoding("UTF-8");
		String developer = request.getParameter("developer");
		%>
		<h2 style="text-align: center">
			<%=developer%>의 게임
		</h2>
		<form
			style="display: flex; align-items: center; justify-content: center; text-align: center">
			<table border="1">
				<tr>
					<td>게임이름</td>
					<td>출시일</td>
					<td>태그</td>
					<td>평균시간</td>
				</tr>
				<%
				try {
					Connection conn = Util.getConnection();
					String sql = "SELECT name, release_date,  steamspy_tags, average_playtime FROM Steam WHERE developer=?";
					PreparedStatement pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, developer);
					ResultSet rs = pstmt.executeQuery();
					while (rs.next()) {
						String resvdate = rs.getString(3);
						String date = resvdate.substring(0, 4) + "년" + resvdate.substring(4, 6) + "월" + resvdate.substring(6, 8) + "일";
				%>
				<tr>
					<td><%=rs.getString("name")%></td>
					<td><%=rs.getString("release_date")%></td>
					<td><%=rs.getString("steamspy_tags")%></td>
					<td><%=rs.getInt("average_playtime")%></td>
				</tr>
				<%
				}
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</table>
		</form>
		<p style="text-align: center">
			<input type="button" value="돌아가기"
				onclick="window.location='list.jsp'">
		</p>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
