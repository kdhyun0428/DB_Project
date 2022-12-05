<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String developer = request.getParameter("developer");
try {
	Connection conn = Util.getConnection();
	String sql = "SELECT * FROM Steam WHERE developer=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, developer);
	ResultSet rs = pstmt.executeQuery();
	if (rs.next()) {
		developer = rs.getString(1);
%>
<jsp:forward page="success.jsp"></jsp:forward>
<%
} else
%>
<jsp:forward page="fail.jsp"></jsp:forward>
<%
} catch (Exception e) {
e.printStackTrace();
}
%>
