<%@page import="java.sql.*"%>
<%@page import="DBCON.Util"%>
<%@page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit/Delete Operation</title>
</head>
<body>
    <%
        String action = request.getParameter("e_d"); // 'edit' or 'delete'
        String category = request.getParameter("p"); // 'Pensions', 'Rooms', etc.
        String id = null;
        String redirectPage = "managerProcess.jsp?p=" + category;

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = Util.getConnection();
            switch (category) {
                case "Pensions":
                    id = request.getParameter("Pension_ID");
                    if ("delete".equals(action)) {
                        String sql = "DELETE FROM Pensions WHERE Pension_ID = ?";
                        pstmt = conn.prepareStatement(sql);
                        pstmt.setString(1, id);
                        pstmt.executeUpdate();
                    } 
                    break;
                case "Rooms":
                    id = request.getParameter("Room_ID");
                    if ("delete".equals(action)) {
                        String sql = "DELETE FROM Rooms WHERE Room_ID = ?";
                        pstmt = conn.prepareStatement(sql);
                        pstmt.setString(1, id);
                        pstmt.executeUpdate();
                    }
                    // Edit logic for Rooms
                    break;
                case "Reservations":
                    id = request.getParameter("Reservation_ID");
                    if ("delete".equals(action)) {
                        String sql = "DELETE FROM Reservations WHERE Reservation_ID = ?";
                        pstmt = conn.prepareStatement(sql);
                        pstmt.setString(1, id);
                        pstmt.executeUpdate();
                    }
                    // Edit logic for Reservations
                    break;
                case "Users":
                    id = request.getParameter("User_ID");
                    if ("delete".equals(action)) {
                        String sql = "DELETE FROM Users WHERE ID = ?";
                        pstmt = conn.prepareStatement(sql);
                        pstmt.setString(1, id);
                        pstmt.executeUpdate();
                    }
                    // Edit logic for Users
                    break;
            }
            response.sendRedirect(redirectPage);
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    %>
</body>
</html>
