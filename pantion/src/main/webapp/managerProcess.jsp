<%@page import="java.sql.*"%>
<%@page import="DBCON.Util"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <title>Villa Agency - Real Estate</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-villa-agency.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    <style>
        .form-check-input {
            width: 15px !important;
            height: 15px !important;
            margin-top: 2px !important;
            vertical-align: middle !important;
        }
        .form-check-label {
            font-size: 14px !important;
            vertical-align: middle !important;
            margin-left: 5px !important;
        }
    </style>
</head>
<body>
    <!-- Header Area Start -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- Logo Start -->
                        <a href="#" class="logo">
                            <h1>forest</h1>
                        </a>
                        <!-- Logo End -->
                        <!-- Menu Start -->
                        <ul class="nav">
                            <li><a href="managerProcess.jsp?p=Pensions">펜션목록 관리</a></li>
                            <li><a href="managerProcess.jsp?p=Rooms">방정보 관리</a></li>
                            <li><a href="managerProcess.jsp?p=Reservations">예약관리</a></li>
                            <li><a href="managerProcess.jsp?p=Users">회원 관리</a></li>
                            <li><a href="logout.jsp"><i class="fa fa-sign-out-alt"></i>로그아웃</a></li>
                        </ul>   
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- Menu End -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->

    <div class="container mt-5">
        <div class="row">
            <div class="col-xs-12">
                <table class="table table-bordered table-hover dt-responsive mt-3">
                    <% 
                    String P = request.getParameter("p");
                    Connection conn = null;
                    Statement stmt = null;

                    switch (P) {
                        case "Pensions":
                            %><form action="add.jsp">
                                <button type="submit" class="btn btn-primary" name="category" value="Pensions">등록하기</button>
                              </form>
                                <thead>
                                    <tr>
                                        <th>펜션 ID</th>
                                        <th>펜션 이름</th>
                                        <th>위치</th>
                                        <th>설명</th>
                                    </tr>
                                </thead>
                                </form><%
                            try {
                                conn = Util.getConnection();
                                stmt = conn.createStatement();
                                ResultSet rs = stmt.executeQuery("SELECT * FROM Pensions");
                                while (rs.next()) {
                                    %><tbody>
                                        <tr>
                                            <td><%= rs.getString("Pension_ID") %></td>
                                            <td><%= rs.getString("Pension_Name") %></td>
                                            <td><%= rs.getString("Location") %></td>
                                            <td><%= rs.getString("Description") %></td>
                                            <td><a href="delete.jsp?p=Pensions&e_d=delete&Pension_ID=<%= rs.getString("Pension_ID") %>">삭제</a></td>
                                            <td><a href="edit.jsp?p=Pensions&e_d=edit&ID=<%= rs.getString("Pension_ID") %>">수정</a></td>
                                        </tr>
                                    </tbody><%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            
                            break;
                        case "Reservations":
                            %><thead>
                                <tr>
                                    <th>예약 번호 ID</th>
                                    <th>방 ID</th>
                                    <th>회원 ID</th>
                                    <th>체크인 날짜</th>
                                    <th>체크아웃 날짜</th>
                                    <th>인원</th>
                                </tr>
                            </thead><%
                            try {
                                conn = Util.getConnection();
                                stmt = conn.createStatement();
                                ResultSet rs = stmt.executeQuery("SELECT * FROM Reservations");
                                while (rs.next()) {
                                    %><tbody>
                                        <tr>
                                            <td><%= rs.getString("Reservation_ID") %></td>
                                            <td><%= rs.getString("Room_ID") %></td>
                                            <td><%= rs.getString("User_ID") %></td>
                                            <td><%= rs.getDate("Start_Date") %></td>
                                            <td><%= rs.getDate("End_Date") %></td>
                                            <td><%= rs.getString("Personnel") %></td>
                                            <td><a href="delete.jsp?p=Reservations&e_d=delete&Reservation_ID=<%= rs.getString("Reservation_ID") %>">삭제</a></td>
                                            <td><a href="edit.jsp?p=Reservations&e_d=edit&ID=<%= rs.getString("Reservation_ID") %>">수정</a></td>
                                        </tr>
                                    </tbody><%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            break;
                        case "Rooms":
                            %><form action="add.jsp">
                                <button type="submit" class="btn btn-primary" name="category" value="Rooms">등록하기</button>
                              </form>
                                <thead>
                                    <tr>
                                        <th>방 ID</th>
                                        <th>펜션 ID</th>
                                        <th>방 이름</th>
                                        <th>방 크기</th>
                                        <th>수용인원</th>
                                        <th>특이사항</th>
                                        <th>가격</th>
                                    </tr>
                                </thead>
								<%
                            try {
                                conn = Util.getConnection();
                                stmt = conn.createStatement();
                                ResultSet rs = stmt.executeQuery("SELECT * FROM Rooms");
                                while (rs.next()) {
                                    %><tbody>
                                        <tr>
                                            <td><%= rs.getString("Room_ID") %></td>
                                            <td><%= rs.getString("Pension_ID") %></td>
                                            <td><%= rs.getString("Room_Name") %></td>
                                            <td><%= rs.getString("Room_size") %></td>
                                            <td><%= rs.getString("MIN_Capacity") %> ~ <%= rs.getString("Max_Capacity") %> 명</td>
                                            <td><%= rs.getString("Information") %></td>
                                            <td><%= rs.getString("Price") %> 원</td>
                                            <td><a href="delete.jsp?p=Rooms&e_d=delete&Room_ID=<%= rs.getString("Room_ID") %>">삭제</a></td>
                                            <td><a href="edit.jsp?p=Rooms&e_d=edit&ID=<%= rs.getString("Room_ID") %>">수정</a></td>
                                        </tr>
                                    </tbody><%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            
                            break;
                        case "Users":
                            %><thead>
                                <tr>
                                    <th>ID</th>
                                    <th>비밀번호</th>
                                    <th>회원이름</th>
                                    <th>Email</th>
                                </tr>
                            </thead><%
                            try {
                                conn = Util.getConnection();
                                stmt = conn.createStatement();
                                ResultSet rs = stmt.executeQuery("SELECT * FROM Users");
                                while (rs.next()) {
                                    %><tbody>
                                        <tr>
                                            <td><%= rs.getString("ID") %></td>
                                            <td><%= rs.getString("Password") %></td>
                                            <td><%= rs.getString("Member_Name") %></td>
                                            <td><%= rs.getString("Email") %></td>
                                            <td><a href="delete.jsp?p=Users&e_d=delete&User_ID=<%= rs.getString("ID") %>">삭제</a></td>
                                            <td><a href="edit.jsp?p=Users&e_d=edit&ID=<%= rs.getString("ID") %>">수정</a></td>
                                        </tr>
                                    </tbody><%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            break;
                    }
                    %>
                </table>
            </div>
        </div>
    </div>
    
    
     <%
  String p= request.getParameter("p"); 
  if("fail".equals(p)){
  %>
	  <script type="text/javascript">
			alert("수정에 실패하였습니다.");
	  </script>
  <% 
  }
  if("success".equals(p)){
  %>
	  <script type="text/javascript">
			alert("수정에 성공하였습니다.");
	  </script>
  <% 
  }
  %>
  
  
  
  
</body>
</html>