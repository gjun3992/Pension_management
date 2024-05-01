<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="DBCON.Util"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Entry</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2>Add New Entry</h2>
        <%
            String category = request.getParameter("category");
        
       
        %>
        <form action="add.jsp" method="post">
            <input type="hidden" name="category" value="<%= category %>">
            <% 
                switch (category) {
                    case "Pensions":
            %>
                        <div class="mb-3">
                            <label for="pensionName" class="form-label">펜션 이름</label>
                            <input type="text" class="form-control" id="pensionName" name="pensionName" required>
                        </div>
                        <div class="mb-3">
                            <label for="location" class="form-label">위치</label>
                            <input type="text" class="form-control" id="location" name="location" required>
                        </div>
                        <div class="mb-3">
                            <label for="description" class="form-label">정보</label>
                            <textarea class="form-control" id="description" name="description" required></textarea>
                        </div>
            <%      break;
                    case "Rooms":
            %>
                        <div class="mb-3">
                            <label for="pensionId" class="form-label">펜션 ID</label>
                            <input type="text" class="form-control" id="pensionId" name="pensionId" required>
                        </div>
                        <div class="mb-3">
                            <label for="roomName" class="form-label">방이름</label>
                            <input type="text" class="form-control" id="roomName" name="roomName" required>
                        </div>
                        <div class="mb-3">
                            <label for="roomSize" class="form-label">방크기</label>
                            <input type="text" class="form-control" id="roomSize" name="roomSize" required>
                        </div>
                        <div class="mb-3">
                            <label for="minCapacity" class="form-label">최소인원</label>
                            <input type="number" class="form-control" id="minCapacity" name="minCapacity" required>
                        </div>
                        <div class="mb-3">
                            <label for="maxCapacity" class="form-label">최대인원</label>
                            <input type="number" class="form-control" id="maxCapacity" name="maxCapacity" required>
                        </div>
                        <div class="mb-3">
                            <label for="information" class="form-label">특이사항</label>
                            <textarea class="form-control" id="information" name="information" required></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="price" class="form-label">가격</label>
                            <input type="number" class="form-control" id="price" name="price" required>
                        </div>
            <%      break;
                }
            %>
            <button type="submit" class="btn btn-primary">등록하기</button>
        </form>
    </div>
</body>
</html>
