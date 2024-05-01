<%@page import="java.sql.*"%>
<%@page import="DBCON.Util"%>
<%@page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>수정 페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-3">
        <% 
            String type = request.getParameter("p");
            String id = request.getParameter("ID");
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            String query = "";

            try {
                conn = Util.getConnection();
                switch (type) {
                    case "Pensions":
                        query = "SELECT * FROM Pensions WHERE Pension_ID = ?";
                        break;
                    case "Rooms":
                        query = "SELECT * FROM Rooms WHERE Room_ID = ?";
                        break;
                    case "Reservations":
                        query = "SELECT * FROM Reservations WHERE Reservation_ID = ?";
                        break;
                    case "Users":
                        query = "SELECT * FROM Users WHERE ID = ?";
                        break;
                }

                pstmt = conn.prepareStatement(query);
                pstmt.setString(1, id);
                rs = pstmt.executeQuery();

                if (rs.next()) {
        %>
         <div class="contact-page section ">
		    <div class="container ">
		      <div class="row justify-content-center">
		        <div class="col-lg-6">
        <form action="updateProcess.jsp" method="post">
            <input type="hidden" name="p" value="<%= type %>">
            <input type="hidden" name="ID" value="<%= id %>">
            <% 
                if ("Pensions".equals(type)) { 
            %>
                <div class="mb-3">
                    <label for="name" class="form-label">펜션 이름</label>
                    <input type="text" class="form-control" id="name" name="name" value="<%= rs.getString("Pension_Name") %>">
                </div>
                <div class="mb-3">
                    <label for="location" class="form-label">위치</label>
                    <input type="text" class="form-control" id="location" name="location" value="<%= rs.getString("Location") %>">
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">설명</label>
                    <textarea class="form-control" id="description" name="description"><%= rs.getString("Description") %></textarea>
                </div>
            <% 
                } else if ("Rooms".equals(type)) {
            %>
                <div class="mb-3">
                    <label for="room_name" class="form-label">방 이름</label>
                    <input type="text" class="form-control" id="room_name" name="room_name" value="<%= rs.getString("Room_Name") %>">
                </div>
                <div class="mb-3">
                    <label for="room_size" class="form-label">방 크기</label>
                    <input type="text" class="form-control" id="room_size" name="room_size" value="<%= rs.getString("Room_size") %>">
                </div>
                <div class="mb-3">
                    <label for="min_capacity" class="form-label">최소 수용 인원</label>
                    <input type="number" class="form-control" id="min_capacity" name="min_capacity" value="<%= rs.getInt("MIN_Capacity") %>">
                </div>
                <div class="mb-3">
                    <label for="max_capacity" class="form-label">최대 수용 인원</label>
                    <input type="number" class="form-control" id="max_capacity" name="max_capacity" value="<%= rs.getInt("MAX_Capacity") %>">
                </div>
                <div class="mb-3">
                    <label for="information" class="form-label">특이사항</label>
                    <input type="text" class="form-control" id="information" name="information" value="<%= rs.getString("information") %>">
                </div>
                <div class="mb-3">
                    <label for="price" class="form-label">가격</label>
                    <input type="number" class="form-control" id="price" name="price" value="<%= rs.getInt("Price") %>">
                </div>
            <% 
                } else if ("Reservations".equals(type)) {
            %>
                <div class="mb-3">
                    <label for="start_date" class="form-label">체크인 날짜</label>
                    <input type="date" class="form-control" id="start_date" name="start_date" value="<%= rs.getDate("Start_Date").toString() %>">
                </div>
                <div class="mb-3">
                    <label for="end_date" class="form-label">체크아웃 날짜</label>
                    <input type="date" class="form-control" id="end_date" name="end_date" value="<%= rs.getDate("End_Date").toString() %>">
                </div>
                <div class="mb-3">
                    <label for="personnel" class="form-label">인원</label>
                    <input type="number" class="form-control" id="personnel" name="personnel" value="<%= rs.getInt("Personnel") %>">
                </div>
            <% 
                } else if ("Users".equals(type)) {
            %>
                <div class="mb-3">
                    <label for="member_name" class="form-label">회원 이름</label>
                    <input type="text" class="form-control" id="member_name" name="member_name" value="<%= rs.getString("Member_Name") %>">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" value="<%= rs.getString("Email") %>">
                </div>
            <% 
                }
            %>
            <button type="submit" class="btn btn-primary">수정</button>
        </form>
        <% 
                }
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            }
        %>
    </div>
    </div>
    </div>
    </div>
</body>
</html>
