<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<title>forest 펜션예약</title>

  <head>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Villa Agency - Real Estate HTML5 Template</title>


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-villa-agency.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
<!--

TemplateMo 591 villa agency

https://templatemo.com/tm-591-villa-agency

-->

<style>
        /* Form Check Customizations */
        .form-check-input {
            width: 15px; !important
            height: 15px; !important
            margin-top: 2px; !important
            vertical-align: middle; !important
        }

        .form-check-label {
            font-size: 14px; !important
            vertical-align: middle; !important
            margin-left: 5px;!important
        }
    </style>
  </head>

<body>

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="index.jsp" class="logo">
                        <h1>forest</h1>
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                      <li><a href="index.jsp" class="active">Home</a></li>
                      <li><a href="properties.jsp">펜션 목록</a></li>
                      <li><a href="contact.jsp">문의하기</a></li>
                       	<% if (session != null && session.getAttribute("isLoggedIn") != null && (Boolean)session.getAttribute("isLoggedIn")) { %>
               				 <li><a href="logout.jsp">로그아웃</a></li>
            			<% } else { %>
               				 <li> <a href="login.jsp">로그인</a> </li>
               				 <li><a href="join.jsp">회원가입</a></li>
            			<% } %>
                      <li><a href="Confirm_reservation.jsp"><i class="fa fa-calendar"></i>예약정보 확인하기</a></li>
                  </ul>   
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->

</body>
</html>