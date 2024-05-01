<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<jsp:include page="header.jsp"></jsp:include>
<head>
    <meta charset="UTF-8">
    <title>예약 페이지</title>

</head>
<body>
    <div class="page-heading header-text">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <span class="breadcrumb"><a href="#">Home</a> / Properties</span>
                    <h3>예약하기</h3>
                </div>
            </div>
        </div>
    </div>         
    <div class="contact-page section ">
        <div class="container ">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <form id="contact-form" action="reservationProcess.jsp" method="post">
                        <div class="row">
                            <div class="col-lg-12">
                                <fieldset>
                                    <label for="room_id">방 번호</label>
                                    <input type="text" id="room_id" name="room_id" required>
                                </fieldset>
                            </div>
                            <div class="col-lg-12">
                                <fieldset>
                                    <label for="start_date">시작 날짜</label>
                                    <input type="date" id="start_date" name="s_date" required onchange="updateMinEndDate()">
                                </fieldset>
                            </div>
                            <div class="col-lg-12">
                                <fieldset>
                                    <label for="end_date">종료 날짜</label>
                                    <input type="date" id="end_date" name="e_date" required>
                                </fieldset>
                            </div>
                            <div class="col-lg-12">
                                <fieldset>
                                    <label for="personnel">인원 수</label>
                                    <input type="number" id="personnel" name="personnel" required min="1">
                                </fieldset>
                            </div>
                            <div class="col-lg-12">
                                <fieldset>
                                    <label for="personnel">가격</label>
                                    <input type="text" id="personnel" name="personnel" readonly  >
                                </fieldset>
                            </div>
                            <div class="col-lg-12">
                                <button type="submit" class="btn">예약</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script>
        // 현재 날짜를 YYYY-MM-DD 형식의 문자열로 반환하는 함수
        function getCurrentDate() {
            var today = new Date();
            var dd = String(today.getDate()).padStart(2, '0');
            var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
            var yyyy = today.getFullYear();
            return yyyy + '-' + mm + '-' + dd;
        }

        // 시작 날짜와 종료 날짜 입력란에 최소 날짜를 설정하는 함수
        function setMinDate() {
            var currentDate = getCurrentDate();
            var startDateInput = document.getElementById('start_date');
            var endDateInput = document.getElementById('end_date');
            startDateInput.setAttribute('min', currentDate);
            endDateInput.setAttribute('min', currentDate);
        }

        // 시작 날짜 변경시 종료 날짜의 최소값을 업데이트
        function updateMinEndDate() {
            var startDate = document.getElementById('start_date').value;
            document.getElementById('end_date').setAttribute('min', startDate);
        }

        // 페이지 로드 시 함수 호출
        window.onload = function() {
            setMinDate();
        };
        </script>
</body>
</html>