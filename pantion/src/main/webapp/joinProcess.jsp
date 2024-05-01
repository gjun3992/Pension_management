<%@page import="java.sql.*"%>
<%@page import="DBCON.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register User</title>
</head>
<body>
  
<%
String userID = request.getParameter("id2");
String pw1 = request.getParameter("pw1");
String pw2 = request.getParameter("pw2");
String userName = request.getParameter("name1");
String userEmail = request.getParameter("email");

Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
    con = Util.getConnection();
    
    // 사용자 ID 중복 검사
    String checkUserSQL = "SELECT COUNT(*) FROM Users WHERE ID = ?";
    pstmt = con.prepareStatement(checkUserSQL);
    pstmt.setString(1, userID);
    rs = pstmt.executeQuery();
    
    if (rs.next() && rs.getInt(1) > 0) {
        // 이미 존재하는 userID
        response.sendRedirect("join.jsp?p=Exists");
    } else if (pw1 != null && pw1.equals(pw2)) {
        // 비밀번호 일치 및 사용자 ID 중복 없음, 데이터베이스에 사용자 등록
        String sql = "INSERT INTO Users VALUES (?, ?, ?, ?)";
        pstmt = con.prepareStatement(sql);
        pstmt.setString(1, userID);
        pstmt.setString(2, pw1); // 이 부분에 비밀번호 해시 적용 필요
        pstmt.setString(3, userName);
        pstmt.setString(4, userEmail);
        
        int result = pstmt.executeUpdate();
        
        if (result > 0) {
            response.sendRedirect("login.jsp");
        } else {
            response.sendRedirect("join.jsp?p=Failure");
        }
    } else {
        // 비밀번호 불일치
        response.sendRedirect("join.jsp?p=Mismatch");
    }
} catch (Exception e) {
    e.printStackTrace();
} 
%>
</body>
</html>
