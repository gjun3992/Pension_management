<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="DBCON.Util"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Process</title>
</head>
<body>

<%
String userID = request.getParameter("id");
String password = request.getParameter("pw");
String isAdmin = request.getParameter("Admin");


System.out.println(isAdmin);

Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

if ("Admin".equals(isAdmin)){
	System.out.println(1);
	try {
		con = Util.getConnection();
		String sql = "SELECT ID, PASSWORD FROM Admin WHERE ID = ?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, userID);
		
		rs = pstmt.executeQuery();
	
		if (rs.next()) {
	        session.setAttribute("isLoggedIn", true);
	        session.setAttribute("userID", userID);  // 사용자 이름을 세션에 저장
	        response.sendRedirect("manager_index.jsp");
	    } else {
	        response.sendRedirect("login.jsp?p=error");
	    }
		}catch (Exception e) {
	   	 e.printStackTrace();
		}
}else{
	
	try {
	    con = Util.getConnection();
	    String sql = "SELECT ID, PASSWORD, MEMBER_NAME FROM Users WHERE ID = ?";
	    pstmt = con.prepareStatement(sql);
	    pstmt.setString(1, userID);
	
	    rs = pstmt.executeQuery();
	
	    if (rs.next()) {
	        String username = rs.getString("MEMBER_NAME");
	        session.setAttribute("isLoggedIn", true);
	        session.setAttribute("userID", userID);  // 사용자 이름을 세션에 저장
	        response.sendRedirect("index.jsp");
	    } else {
	        response.sendRedirect("login.jsp?p=error");
	    }
		}catch (Exception e) {
	   	 e.printStackTrace();
	} 
}


%>
</body>
</html>