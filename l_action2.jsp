<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String cust_name = request.getParameter("cust_name");
try {
	Connection conn = Util.getConnection();
	String sql = "SELECT * FROM Steam WHERE cust_name=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, cust_name);
	ResultSet rs = pstmt.executeQuery();
	if (rs.next()) {
		cust_name = rs.getString(1);
%>
<jsp:forward page="success2.jsp"></jsp:forward>
<%
} else
%>
<jsp:forward page="fail2.jsp"></jsp:forward>
<%
} catch (Exception e) {
e.printStackTrace();
}
%>
