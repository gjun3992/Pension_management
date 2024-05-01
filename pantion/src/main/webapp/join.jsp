	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<jsp:include page="header.jsp"></jsp:include>
  

  <div class="page-heading header-text">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <span class="breadcrumb">로그인 / 회원가입 </span>
          <h3>Sign up</h3>
        </div>
      </div>
    </div>
  </div>

  <div class="contact-page section ">
    <div class="container ">
      <div class="row justify-content-center">
        <div class="col-lg-6">
          <form id="contact-form" action="joinProcess.jsp" method="post">
            <div class="row">
              <div class="col-lg-12">
                  <fieldset>
                  <label for="name">이름</label>
                  <input type="text" name="name1" id="name" placeholder="Your Name..." autocomplete="on" required>
                </fieldset>
              </div>
              <div class="col-lg-12">
                  <fieldset>
                  <label for="name">ID</label>
                  <input type="text" name="id2" id="id" placeholder="ID..." autocomplete="on" required>
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <label for="pw">비밀번호</label>
                  <input type="password" name="pw1" id="pw1" placeholder="passwpord..." autocomplete="on" required>
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <label for="pw">비밀번호 확인</label>
                  <input type="password" name="pw2" id="pw2" placeholder="passwpord Check..." autocomplete="on"  required>
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <label for="email">Email Address</label>
                  <input type="text" name="email" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your E-mail..." required="">
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <button type="submit" id="form-submit" class="orange-button">회원가입 </button>
                </fieldset>
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
  if("Mismatch".equals(p)){
  %>
	  <script type="text/javascript">
			alert("비밀번호 불일치!");
	  </script>
  <% 
  }else if ("Failure".equals(p)){	  
  %>
	  <script type="text/javascript">
			alert("회원 가입 실패 !");
	  </script>
  <% 
  }else if ("Exists".equals(p)){	  
  %>
	  <script type="text/javascript">
			alert("이미 가입되셨습니다.");
	  </script>
  <% 
  }
  
  %>

  


  </body>
</html>