<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="UTF-8">


<body>
<style>
.form-check-input {
    background-color: #fafafa !important;
}
.form-check-input:checked {
    background-color: #f35525 !important;
}
</style>


<jsp:include page="header.jsp"></jsp:include>

  <div class="page-heading header-text">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <span class="breadcrumb">로그인 / 회원가입 </span>
          <h3>Login</h3>
        </div>
      </div>
    </div>
  </div>

  <div class="contact-page section ">
    <div class="container ">
      <div class="row justify-content-center">
        <div class="col-lg-6">
          <form id="contact-form" action="loginProcess.jsp" method="post">
            <div class="row">
              <div class="col-lg-12">
                <fieldset>
                  <label for="name">ID</label>
                  <input type="text" name="id" id="id" placeholder="ID..." autocomplete="on"  required>
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <label for="pw">비밀번호</label>
                  <input type="password" name="pw" id="pw" placeholder="passwpord..." autocomplete="on" >
                </fieldset>
              </div>
             <div class="form-check">
			      <input class="form-check-input" type="checkbox" id="flexCheckChecked" checked>
			      <label class="form-check-label" for="flexCheckChecked">
			        아이디를 기억하시겠습니까?
			      </label>
			 </div>
            <div class="form-check">
			  <input class="form-check-input " type="checkbox" value="Admin" id="Admin" name="Admin" >
			  <label class="form-check-label " for="Admin">
			    관리자로 로그인 합니까?
			  </label>
			</div>
			  	  
						              
              <div class="col-lg-12">
                <fieldset>
                  <button type="submit" id="form-submit" class=" orange-button">로그인</button>
                </fieldset><br>
                <a>아이디찾기 </a>  &nbsp;  &#124;  &nbsp;
                <a>비밀번호 찾기</a> &nbsp;  &#124; &nbsp;
                <a href="join.jsp">회원가입 </a> 

              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>


  <footer>
    <div class="container">
      <div class="col-lg-12">
        <p>Copyright © 2048 Villa Agency Co., Ltd. All rights reserved. 
        
        Design: <a rel="nofollow" href="https://templatemo.com" target="_blank">TemplateMo</a> Distribution: <a href="https://themewagon.com">ThemeWagon</a></p>
      </div>
    </div>
  </footer>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/js/isotope.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/counter.js"></script>
  <script src="assets/js/custom.js"></script>
  
  <%
  String p= request.getParameter("p"); 
  if("error".equals(p)){
  %>
	  <script type="text/javascript">
			alert("아이디 혹은 비밀번호가 틀렸습니다.");
	  </script>
  <% 
  }
  %>
  

  </body>
</html>