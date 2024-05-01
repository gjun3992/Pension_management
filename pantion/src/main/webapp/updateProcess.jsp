<%@page import="java.sql.*"%>
<%@page import="DBCON.Util"%>
<%@page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>업데이트 결과</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-3">
        <% 
            String type = request.getParameter("p");
            String id = request.getParameter("ID");
            Connection conn = null;
            PreparedStatement pstmt = null;
            boolean updateSuccess = false;
            String updateQuery = "";

            try {
                conn = Util.getConnection();

                switch (type) {
                    case "Pensions":
                        updateQuery = "UPDATE Pensions SET Pension_Name = ?, Location = ?, Description = ? WHERE Pension_ID = ?";
                        pstmt = conn.prepareStatement(updateQuery);
                        pstmt.setString(1, request.getParameter("name"));
                        pstmt.setString(2, request.getParameter("location"));
                        pstmt.setString(3, request.getParameter("description"));
                        pstmt.setString(4, id);
                        break;
                    case "Rooms":
                        updateQuery = "UPDATE Rooms SET Room_Name = ?, Room_Size = ?, MIN_Capacity = ?, MAX_Capacity = ?, Information = ?, Price = ? WHERE Room_ID = ?";
                        pstmt = conn.prepareStatement(updateQuery);
                        pstmt.setString(1, request.getParameter("room_name"));
                        pstmt.setString(2, request.getParameter("room_size"));
                        pstmt.setInt(3, Integer.parseInt(request.getParameter("min_capacity")));
                        pstmt.setInt(4, Integer.parseInt(request.getParameter("max_capacity")));
                        pstmt.setString(5, request.getParameter("information"));
                        pstmt.setInt(6, Integer.parseInt(request.getParameter("price")));
                        pstmt.setString(7, id);
                        break;
                    case "Reservations":
                        updateQuery = "UPDATE Reservations SET Start_Date = ?, End_Date = ?, Personnel = ? WHERE Reservation_ID = ?";
                        pstmt = conn.prepareStatement(updateQuery);
                        pstmt.setDate(1, Date.valueOf(request.getParameter("start_date")));
                        pstmt.setDate(2, Date.valueOf(request.getParameter("end_date")));
                        pstmt.setInt(3, Integer.parseInt(request.getParameter("personnel")));
                        pstmt.setString(4, id);
                        break;
                    case "Users":
                        updateQuery = "UPDATE Users SET Member_Name = ?, Email = ? WHERE ID = ?";
                        pstmt = conn.prepareStatement(updateQuery);
                        pstmt.setString(1, request.getParameter("member_name"));
                        pstmt.setString(2, request.getParameter("email"));
                        pstmt.setString(3, id);
                        break;
                }

                int result = pstmt.executeUpdate();
                updateSuccess = result > 0;
            } catch (SQLException e) {
                out.println("<div class='alert alert-danger' role='alert'>업데이트 실패: " + e.getMessage() + "</div>");
            } finally {
                if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
                if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
            }

            if (updateSuccess) {
            	response.sendRedirect("managerProcess.jsp?p=success");
            } else {
            	 response.sendRedirect("managerProcess.jsp?p=fail");
            }
        %>
    </div>
</body>
</html>
