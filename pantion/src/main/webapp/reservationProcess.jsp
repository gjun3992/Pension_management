<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="DBCON.*"%> <!-- DB 유틸리티 클래스의 경로를 조정하세요 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 처리</title>
</head>
<body>
<%
    response.setContentType("text/html; charset=UTF-8");

    // 모든 파라미터가 유효하게 전달되었는지 확인
    String roomId = request.getParameter("room_id");
    String userId = (String) session.getAttribute("userID"); // 로그인 후 세션에 저장된 사용자 ID를 가정
    String startDateStr = request.getParameter("s_date");
    String endDateStr = request.getParameter("e_date");
    String personnelStr = request.getParameter("personnel");

    
    
    System.out.println(roomId);
    System.out.println(userId);
    System.out.println(startDateStr);
    System.out.println(endDateStr);
    System.out.println(personnelStr);
    if(userId == null ) {
    	out.println("<script type=\"text/javascript\">");
        out.println("alert('로그인후 이용해 주세요.');");
        out.println("location='reservation.jsp';");
        out.println("</script>");
    } else {
        // 파라미터 변환 및 검증
        java.sql.Date startDate = java.sql.Date.valueOf(startDateStr);
        java.sql.Date endDate = java.sql.Date.valueOf(endDateStr);
        int personnel = Integer.parseInt(personnelStr);

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

       try{
    	   
    	   conn = Util.getConnection();
    	   
                String sql = "INSERT INTO Reservations (Reservation_ID, room_id, user_id, start_date, end_date, personnel) VALUES (Reservation_ID.NEXTVAL, ?, ?,TO_DATE(?, 'YYYY-MM-DD'), TO_DATE(?, 'YYYY-MM-DD'), ?)";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, roomId);
                pstmt.setString(2, userId);
                pstmt.setDate(3, startDate);
                pstmt.setDate(4, endDate);
                pstmt.setInt(5, personnel);


                int result = pstmt.executeUpdate();
                if (result > 0) {
                	out.println("<script type=\"text/javascript\">");
                    out.println("alert('예약 되었습니다.');");
                    out.println("location='Confirm_reservation.jsp';");
                    out.println("</script>");
                } else {
                	out.println("<script type=\"text/javascript\">");
                    out.println("alert('예약 등록에 실패했습니다. 다시 시도해주세요.'");
                    out.println("location='reservation.jsp';");
                    out.println("</script>");
                }
            
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('데이터베이스 오류:  " + e.getMessage() + "  '");
            out.println("location='reservation.jsp';");
            out.println("</script>");
        }
    }
%>
</body>
</html>