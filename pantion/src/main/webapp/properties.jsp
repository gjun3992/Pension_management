 <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
 <!DOCTYPE html>
 <html lang="UTF-8">
<jsp:include page="header.jsp"></jsp:include>
   
<body>
    
      <div class="page-heading header-text">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <span class="breadcrumb"><a href="#">Home</a> / Properties</span>
              <h3>Properties</h3>
            </div>
          </div>
        </div>
      </div>
   
      <div class="section properties">
        <div class="container">
          <ul class="properties-filter">
            <li>
              <a class="is_active" href="#!" data-filter="*">Show All</a>
            </li>
            <li>
              <a href="#!" data-filter=".adv">해변가</a>
            </li>
            <li>
              <a href="#!" data-filter=".str">숲속</a>
            </li>
            <li>
              <a href="#!" data-filter=".rac">풀빌라</a>
            </li>
          </ul>
          <div class="row properties-box">
            <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 adv">
              <div class="item">
                <a href="property-details.jsp"><img src="assets/images/H4_6_hope.jpg"></a>
                <span class="category">여수</span>
                <h6>100,000 원</h6>
                <h4><a href="property-details.jsp">해리펜션 (소망방)</a></h4>
                <ul>
                  <li><span>4~6인실</span></li>
                  <li><span>오션뷰 / 개별테라스 </span></li>
                  <li>면적: <span>16평형 (약 53m²)</span></li>
                  <li>방형태 : <span>거실분리형, 침대룸, 화장실</span></li>
                  <li>구비시설 : <span>TV, 침대, 에어컨, 냉장고, 식탁, 전자레인지, 주방기구일체, 식기류일체, 소형소파, Wi-Fi</span></li>
                </ul>
                <div class="main-button">
                  <a href="property-details.jsp">예약하러가기</a>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 str">
              <div class="item">
                <a href="property-details.jsp"><img src="assets/images/laon_101.jpg" alt=""></a>
                <span class="category">가평</span>
                <h6>인당 50000 원</h6>
                <h4><a href="property-details.jsp">빌라 라온</a></h4>
                <ul>
                  <li><span>2~4인실</span></li>
                  <li><span>기준인원 초과시 성인 50000원, 아동•유아 30000원
                    </span></li>
                  <li>방형태 : <span>독체<br>
                    1층- 침실, 거실, 욕실, 샤워부스, 화장실, 실내수영장, 테라스<br>
                    2층- 루프탑 테라스, 루프탑 BBQ (개별)<br>
                    수영장 크기 : 3.2m * 5.6m<br>
                  </span></li>
                  <li>구비시설 : <span> <br>
                    미니바 (캡슐, 전기주전자, tea, 와인잔, 와인오프너)
                    개별 냉난방 시스템, 냉장고, 전자레인지, 하이라이트, 각종 조리도구 및 식기, 참숯 원적외선 로스타<br>
                    냉난방 시스템,무선인터넷 (wi-fi)

                  </span></li>
                </ul>
                <div class="main-button">
                  <a href="property-details.jsp">예약하러가기</a>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 adv rac">
              <div class="item">
                <a href="property-details.jsp"><img src="assets/images/beach_whale.jpg" alt=""></a>
                <span class="category">포항</span>
                <h6>평일 : 99,000 원 <br>
                    주말 : 329,000 원
               	</h6>
                <h4><a href="property-details.jsp">비치드 웨일 (6월의 산책)</a></h4>
                <ul>
                  <li><span>2~4인실</span></li>
                  <li><span>2명 초과시 추가요금 발생  <br>
                    오션뷰 / 테라스 바베큐 가능 야외 수영장 (하절기만 운영)</span></li>
                  <li>면적: <span>22평형 (약 73m²)</span></li>
                  <li>방형태 : <span>거실분리형, 침대룸, 화장실</span></li>
                  <li>구비시설 : <span>TV,핫플레이트,침대,식탁,에어컨,인터넷,냉장고,객실샤워실,욕실용품,드라이기,취사도구,전자레인지,전기밥솥,비데,정수기</span></li>
                </ul>
                <div class="main-button">
                  <a href="property-details.jsp">예약하러가기</a>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 str">
              <div class="item">
                <a href="property-details.jsp"><img src="assets/images/sugerfree.jpg" alt=""></a>
                <span class="category">양양</span>
                <h6>97,900 원 (1박)</h6>
                <h4><a href="property-details.jsp">슈가프리</a></h4>
                <ul>
                  <li><span>2~4인실</span></li>
                  <li><span>2명 초과시 추가요금 발생( 인당 22,000원 추가)  <br>
                    수영장, 텃밭, 개별 바비큐장, 산책로 <br>
                    최소 3박부터 이용가능</span></li>
                  <li>면적: <span>독체 (46.199999999999996m2)</span></li>
                  <li>방형태 : <span>복층, 침대룸, 화장실</span></li>
                  <li>구비시설 : <span>TV,침대,식탁,에어컨,인터넷,냉장고,객실샤워실,욕실용품,드라이기,취사도구,전자레인지,전기밥솥</span></li>
                </ul>
                <div class="main-button">
                  <a href="property-details.jsp">예약하러가기</a>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 rac str">
              <div class="item">
                <a href="property-details.jsp"><img src="assets/images/goyo_love.jpg" alt=""></a>
                <span class="category">가평</span>
                <h6>평일 : 55,000원  <br>
                주말: 115,000 원 
                </h6>
                <h4><a href="property-details.jsp">가평 아침고요펜션 (사랑하나)</a></h4>
                <li><span>2인실</span></li>
                  <li><span>초과인원 불가 </span></li>
                  <li>면적: <span>10평(약33㎡)</span></li>
                  <li>방형태 : <span>침대룸A(더블1) + 화장실1</span></li>
                  <li>구비시설 : <span>TV,침대,식탁,에어컨,냉장고,드라이기,취사도구,전기밥솥,전자레인지,핫플레이트,욕실용품,객실샤워실,난방,소화기,일산화탄소 경보기,인터넷</span></li>
                </ul>
                <div class="main-button">
                  <a href="property-details.jsp">예약하러가기</a>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 rac adv">
              <div class="item">
                <a href="property-details.jsp"><img src="assets/images/beach_whale_2.jpg" alt=""></a>
                <span class="category">포항</span>
                <h6>평일 : 159,000 원 <br>
                    주말 : 459,000 원
               	</h6>
                <h4><a href="property-details.jsp">비치드 웨일 (9월의 청혼)</a></h4>
                <ul>
                  <li><span>2~4인실</span></li>
                  <li><span>2명 초과시 추가요금 발생  <br>
                    루프탑수영장 - 7M x 4M x 1M <br>
                    미온수 이용시 사전예약필수 / 현장결제(미신청 시 차가운 물 입니다.)<br>
                    미온수(1박당)100,000원</span></li>
                  <li>면적: <span>30평(약99㎡)</span></li>
                  <li>방형태 : <span>침대룸A(킹1,소파1)+화장실</span></li>
                  <li>구비시설 : <span>TV,핫플레이트,침대,식탁,에어컨,인터넷,냉장고,객실샤워실,욕실용품,드라이기,취사도구,전자레인지,전기밥솥,비데,정수기</span></li>
                </ul>
                <div class="main-button">
                  <a href="property-details.jsp">예약하러가기</a>
                </div>
              </div>
            </div>
        
            <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 rac adv">
              <div class="item">
                <a href="property-details.jsp"><img src="assets/images/beach_whale_4.jpg" alt=""></a>
                <span class="category">포항</span>
                <h6>평일 : 139,000 원 <br>
                    주말 : 399,000 원
               	</h6>
                <h4><a href="property-details.jsp">비치드 웨일(7월의 푸른날)</a></h4>
                <ul>
                  <li><span>2~4인실</span></li>
                  <li><span>2명 초과시 추가요금 발생  <br>
                    복층,테라스바베큐가능,풀빌라<br>
                    실내수영장 - 8M x 3.5M x 1M<br>
                    미온수 이용시 사전예약필수 / 현장결제(미신청 시 차가운 물 입니다.)<br>
                    미온수(1박당)70,000원</span></li>
                  <li>면적: <span>40평(약132㎡)</span></li>
                  <li>방형태 : <span>침대룸A(킹1)+화장실2+화장실2+거실1</span></li>
                  <li>구비시설 : <span>TV,핫플레이트,침대,식탁,에어컨,인터넷,냉장고,객실샤워실,욕실용품,드라이기,취사도구,전자레인지,전기밥솥,비데,정수기</span></li>
                </ul>
                <div class="main-button">
                  <a href="property-details.jsp">예약하러가기</a>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 align-self-center mb-30 properties-items col-md-6 rac adv">
              <div class="item">
                <a href="property-details.jsp"><img src="assets/images/beach_whale_5.jpg" alt=""></a>
                <span class="category">Luxury Villa</span>
                <h6>평일 : 139,000 원 <br>
                    주말 : 399,000 원
               	</h6>
                <h4><a href="property-details.jsp">비치드 웨일(4월의 고백)</a></h4>
                <ul>
                  <li><span>2~4인실</span></li>
                  <li><span>2명 초과시 추가요금 발생  <br>
                    테라스바베큐가능,풀빌라<br>
                    실내수영장 - 7M x 4M x 1M<br>
                    미온수 이용시 사전예약필수 / 현장결제(미신청 시 차가운 물 입니다.)<br>
                    미온수(1박당)70,000원</span></li>
                  <li>면적: <span>30평(약99㎡)</span></li>
                  <li>방형태 : <span>침대룸A(킹1,소파1)+화장실1+거실1</span></li>
                  <li>구비시설 : <span>TV,핫플레이트,침대,식탁,에어컨,인터넷,냉장고,객실샤워실,욕실용품,드라이기,취사도구,전자레인지,전기밥솥,비데,정수기</span></li>
                </ul>
                <div class="main-button">
                  <a href="property-details.jsp">예약하러가기</a>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-12">
              <ul class="pagination">
                <li><a href="#">1</a></li>
                <li><a class="is_active" href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">>></a></li>
              </ul>
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
   
      </body>
    </html>