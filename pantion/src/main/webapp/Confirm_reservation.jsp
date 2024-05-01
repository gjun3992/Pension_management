<%@page import="java.sql.*"%>
<%@page import="DBCON.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <title>사용자 예약 정보</title>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    
    <div class="page-heading header-text">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <span class="breadcrumb">예약정보 조회</span>
          <h3>예약 정보 </h3>
        </div>
      </div>
    </div>
  </div>
  
  
   <div class="contact-page section ">
    <div class="container ">
      <div class="row justify-content-center">
        <div class="col-lg-6">
		    <table class="table">
		    <thead>
		    	<tr>
					<th scope="col">방이름 </th>
					<th scope="col">회원 아이디</th>
					<th scope="col">체크인 날짜</th>
					<th scope="col">체크아웃 날짜</th>
					<th scope="col">인원수</th>
				</tr>
			 </thead>
    <%

    response.setContentType("text/html; charset=UTF-8");

    // 모든 파라미터가 유효하게 전달되었는지 확인
    String userId = (String) session.getAttribute("userID"); // 로그인 후 세션에 저장된 사용자 ID를 가정

    System.out.println(userId);
    if(userId == null ) {
    	out.println("<script type=\"text/javascript\">");
        out.println("alert('로그인후 이용해 주세요.');");
        out.println("location='reservation.jsp';");
        out.println("</script>");
    } else {
        // 파라미터 변환 및 검증
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

       try{
    	   
    	   conn = Util.getConnection();
    	   
                String sql = "SELECT rm.Room_Name,res.User_ID, res.Start_Date ,res.End_Date, res.Personnel, rm.Price "+   
                		"FROM Reservations res JOIN Rooms rm ON res.Room_ID = rm.Room_ID  "+
                		"where User_ID=? ";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, userId);
                rs = pstmt.executeQuery();

                while (rs.next()) {
	                	%>
	                	  <tbody class="table-group-divider">
	                		  <tr>
							      <td><%=rs.getString("Room_Name") %></td>
							      <td><%=rs.getString("User_ID") %></td>
							      <td>20<%=rs.getString("Start_Date").substring(2, 10) %></td>
							      <td>20<%=rs.getString("End_Date").substring(2, 10) %></td>
							      <td><%=rs.getString("Personnel") %></td>
							  </tr>
						  </tbody>
	                	<%
	                
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
    
   					 </table>
    			</div>
    		</div>
    	</div>
    </div>
</body>
</html>