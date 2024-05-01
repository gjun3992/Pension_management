<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<jsp:include page="header.jsp"></jsp:include>
  <div class="main-banner">
    <div class="owl-carousel owl-banner">
      <div class="item item-1">
        <div class="header-text">
          <h2>Book Now!<br>Find Your Perfect Pension</h2>
        </div>
      </div>
      <div class="item item-2">
        <div class="header-text">
          <h2>Act Fast!<br>Uncover a Charming Pension</h2>
        </div>
      </div>
      <div class="item item-3">
        <div class="header-text">
		  <h2>Don't Miss Out!<br>Experience the Best Pension</h2>
        </div>
      </div>
    </div>
  </div>

  <div class="featured section">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <div class="left-image">
            <img src="assets/images/해리펜션__5.jpg" alt="">
            <a href="property-details.jsp"><img src="assets/images/featured-icon.png" alt="" style="max-width: 60px; padding: 0px;"></a>
          </div>
        </div>
        <div class="col-lg-5">
          <div class="section-heading">
            <h6>| Featured</h6>
            <h2>바다가 보이는 최고의 펜션 <br> 해리펜션
            </h2>
          </div>

        </div>
        <div class="col-lg-3">
          <div class="info-table">
            <ul>
              <li>
                <img src="assets/images/info-icon-01.png" alt="" style="max-width: 52px;">
                <h4>면적<br><span>13평형 (약 43m²)</span></h4>
              </li>
              <li>
                <img src="assets/images/info-icon-02.png" alt="" style="max-width: 52px;">
                <h4>구비시설<br><span>TV, 침대, 에어컨, 냉장고, 식탁, 전자레인지,<br> 주방기구일체, 식기류일체, 소형소파, Wi-Fi</span></h4>
              </li>
              <li>
                <img src="assets/images/info-icon-08.png" alt="" style="max-width: 52px;">
                <h4>기간안내<br>
                        <span>
                          • 주중 : 일요일~목요일<br>
                          금요일,공휴일 전날 : 요금 별도 표시 <br>
                          • 주말토요일,공휴일 전날 <br>
                          • 여름성수기2024-07-20 ~ 2024-08-15
                        </span>
                </h4>
              </li>
              <li>
                <img src="assets/images/info-icon-07.png" alt="" style="max-width: 52px;">
                <h4>인원<br><span>2명 / 최대인원 : 4명<br>
                  
                </span></h4>
              </li>
              <li>
                <img src="assets/images/info-icon-05.png" alt="" style="max-width: 52px;">
                <h4>금액<br><span>
                  기본금액 : 비수기 주말 150,000 원 <br>
                  기본금액 : 비수기 주중 100,000 원 <br>
                  <br>
                  초과금액 : 성인 10,000원 아동 10,000원 유아 10,000원
                </span></h4>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

  
  <div class="section best-deal">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <div class="section-heading">
            <h6>| Best Deal</h6>
            <h2>다른곳들도 확인해보세요!</h2>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="tabs-content">
            <div class="row">
              <div class="nav-wrapper ">
                <ul class="nav nav-tabs" role="tablist">
                  <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="appartment-tab" data-bs-toggle="tab" data-bs-target="#appartment" type="button" role="tab" aria-controls="appartment" aria-selected="true">해변가</button>
                  </li>
                  <li class="nav-item" role="presentation">
                    <button class="nav-link" id="villa-tab" data-bs-toggle="tab" data-bs-target="#villa" type="button" role="tab" aria-controls="villa" aria-selected="false">숲속</button>
                  </li>
                  <li class="nav-item" role="presentation">
                    <button class="nav-link" id="penthouse-tab" data-bs-toggle="tab" data-bs-target="#penthouse" type="button" role="tab" aria-controls="penthouse" aria-selected="false">풀빌라</button>
                  </li>
                </ul>
              </div>              
              <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="appartment" role="tabpanel" aria-labelledby="appartment-tab">
                  <div class="row">
                    <div class="col-lg-3">
                      <div class="info-table">
                        <ul>
                          <li>면적 <span>16평형 (약 53m²)</span></li>
                          <li>형태/유형 <span>거실분리형, 침대룸, 화장실 / 가족 </span></li>
                          <li>특이사항 <span>오션뷰, 개별테라스</span></li>
                          <li>구비시설 <span>TV,  소형소파, Wi-Fi</span></li>
                          <li>기준인원 <span>4명 / 최대인원 : 6명</span></li>
                        </ul>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <img src="assets/images/H4_6_Love.jpg" alt="">
                    </div>
                    <div class="col-lg-3">
                      <h4>Extra Info About Property</h4>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, do eiusmod tempor pack incididunt ut labore et dolore magna aliqua quised ipsum suspendisse. 
                      <br><br>When you need free CSS templates, you can simply type TemplateMo in any search engine website. In addition, you can type TemplateMo Portfolio, TemplateMo One Page Layouts, etc.</p>
                      <div class="icon-button">
                        <a href="property-details.jsp"><i class="fa fa-calendar"></i>예약하러가기</a>
                      </div>
                    </div>
                  </div>
                </div>
                
                
                <div class="tab-pane fade" id="villa" role="tabpanel" aria-labelledby="villa-tab">
                  <div class="row">
                    <div class="col-lg-3">
                      <div class="info-table">
                        <ul>
                          <li>면적 <span>16평형 (약 53m²)</span></li>
                          <li>유형 <span>거실분리형, 침대룸 2, 화장실 2</span></li>
                          <li>특이사항 <span>오션뷰, 개별테라스</span></li>
                          <li>구비시설 <span>TV, 식탁 또는 좌식테이블</span></li>
                          <li>기준인원 <span>8인 / 최대14인</span></li>
                        </ul>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <img src="assets/images/time_inner_2.jpg" alt="">
                    </div>
                    <div class="col-lg-3">
                      <h4>Detail Info About Villa</h4>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, do eiusmod tempor pack incididunt ut labore et dolore magna aliqua quised ipsum suspendisse. <br><br>Swag fanny pack lyft blog twee. JOMO ethical copper mug, succulents typewriter shaman DIY kitsch twee taiyaki fixie hella venmo after messenger poutine next level humblebrag swag franzen.</p>
                      <div class="icon-button">
                        <a href="property-details.jsp"><i class="fa fa-calendar"></i> Schedule a visit</a>
                      </div>
                    </div>
                  </div>
                </div>
                
                <div class="tab-pane fade" id="penthouse" role="tabpanel" aria-labelledby="penthouse-tab">
                  <div class="row">
                    <div class="col-lg-3">
                      <div class="info-table">
                        <ul>
                          <li>면적 <span>65.00평</span></li>
                          <li> 형태/유형 <span>독체형 /분리형/ 침실3/ 거실,주방/화장실2</span></li>
                          <li>특이사항 <span>리버뷰, 호텔시 어메니티,금연 </span></li>
                          <li>구비시설 <span>식시살균기 ,얼음정수기, 제트스파, 개별바베큐,개별수영장 </span></li>
                          <li>기준인원 <span>4명 / 최대인원 : 10명</span></li>
                        </ul>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <img src="assets/images/JH.jpg" alt="">
                    </div>
                    <div class="col-lg-3">
                      <h4>Extra Info About Penthouse</h4>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, do eiusmod tempor pack incididunt ut labore et dolore magna aliqua quised ipsum suspendisse. <br><br>Swag fanny pack lyft blog twee. JOMO ethical copper mug, succulents typewriter shaman DIY kitsch twee taiyaki fixie hella venmo after messenger poutine next level humblebrag swag franzen.</p>
                      <div class="icon-button">
                        <a href="property-details.jsp"><i class="fa fa-calendar"></i> Schedule a visit</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="properties section">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 offset-lg-4">
          <div class="section-heading text-center">
            <h6>| 금주의 추천 펜션</h6>
            <h2>여기는 어때요?  
            </h2>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-4 col-md-6">
          <div class="item">
            <a href="property-details.jsp"><img src="assets/images/H4_6_hope.jpg" alt=""></a>
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
        <div class="col-lg-4 col-md-6">
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
        <div class="col-lg-4 col-md-6">
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
        <div class="col-lg-4 col-md-6">
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
        <div class="col-lg-4 col-md-6">
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
        <div class="col-lg-4 col-md-6">
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
      </div>
    </div>
  </div>

  <div class="contact section">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 offset-lg-4">
          <div class="section-heading text-center">
            <h2>지금바로 예약해보세요</h2>
          </div>
        </div>
      </div>
    </div>
  </div>

  
  <footer>
    <div class="container">
      <div class="col-lg-8">
        <p>Copyright © 2048 Villa Agency Co., Ltd. All rights reserved. 
        
        Design: <a rel="nofollow" href="https://templatemo.com" target="_blank">TemplateMo</a> Distribution: <a href="https://themewagon.com">ThemeWagon</a></p>
        
        
        <div class="row">
        <div class="col-lg-8 col-md-8">
          <ul class="info">
            <li><i class="fa fa-envelope"></i> info@company.com</li>
            <li><i class="fa fa-map"></i> Sunny Isles Beach, FL 33160</li>
          </ul>
        </div>
        
      </div>


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