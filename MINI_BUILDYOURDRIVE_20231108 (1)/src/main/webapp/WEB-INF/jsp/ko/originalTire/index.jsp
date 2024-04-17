<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/cmmn/include/declare.jspf"%>
<%
  /**
  * @Class Name : index.jsp
  * @Description : TIPS & GUIDE
  * @Modification Information
  * 
  *   수정일         수정자                   수정내용
  *  -------    --------    ---------------------------
  *  2016.10.14            최초 생성
  *
  * author jjiman
  * since 2016.10.14
  *  
  
  */
%>
<!DOCTYPE html>
<html lang="ko">
	    <head>
		<%@ include file="/WEB-INF/jsp/cmmn/include/doc_head.jspf" %>	
		<link href="/asset/css/tire.css" rel="stylesheet" />
		<script type="text/javascript">
		// <![CDATA[       	  
		    $(document).ready(function(){
		    });	    
	     // ]]>
	     </script>  
    </head>
    <body>
    <div id="wrapper">

        <link href="/asset/css/swiper.min.css" rel="stylesheet" />
        <script src="/asset/js/swiper.min.js"></script>

		<%@ include file="/WEB-INF/jsp/cmmn/include/gnb.jspf" %>	
		<section id="container">

			<div class="main_large_teaser">
                <div class="visual"><img src="/asset/images/content/MINI-ORIGINAL-TIRE_main.jpg" alt=""></div>
			</div>

			<section id="contents">

				<div class="sub_copy sub_image_copy">
					<div class="sub_copy_cell">
						<div class="sub_copy_data">
							<p class="sub_copy_txt">MINI가 자랑하는 주행 시스템을 보다 완벽하게 느낄 수 있는<br class="pc"> MINI만의 스타마크 타이어를 만나보세요.</p>							
						</div>
					</div>
				</div>
                <!-- Original Tire의 장점 -->
                <div class="strenth">
                    <h3>MINI ORIGINAL TIRE의 장점.</h3>
                    <p>
                        MINI만의 스타마크 타이어를 사용해야하는 5가지 이유를 확인하세요.
                    </p>
                    <!-- <div class="strenth-items">
                        <div class="item">
                            <p>완벽한 적합성</p>
                        </div>
                        <div class="item">
                            <p>엄격한 테스트</p>
                        </div>
                        <div class="item">
                            <p>스포티한 성능</p>
                        </div>
                        <div class="item">
                            <p>탁월한 안전성</p>
                        </div>
                        <div class="item">
                            <p>효율높은 연비</p>
                        </div>
                    </div> -->
                </div>

				<!-- 타이어 장점 -->
				<div class="default_cell swiper_content" data-slider-index="0">
					<div class="tire-tab">
						<div class="tire-tab_item">
							<ul>
								<li><button type="button" class="tab_button">
									<span>엄격한 테스트</span></button>
								</li>
								<li><button type="button" class="tab_button">
									<span>완벽한 적합성</span></button>
								</li>
								<li><button type="button" class="tab_button">
									<span>스포티한 성능</span></button>
								</li>
								<li><button type="button" class="tab_button">
									<span>탁월한 안전성</span></button>
								</li>
								<li><button type="button" class="tab_button">
									<span>효율높은 연비</span></button>
								</li>
							</ul>
						</div>
					</div>
					<div class="tab_slide_content">
						<div class="swiper-container">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="swiper-slider-visual">
										<div class="txt-area">
											<h3>엄격한 테스트</h3>
											<p>
												모든 MINI 오리지널 타이어는<br>
												주행 시 오로지 운전의 즐거움만 누릴 수 있도록<br>
												최대 50가지의 엄격하고 철저한 테스트를 거칩니다.
											</p>
										</div>
										<img src="/asset/images/content/tire_slider_visual_01.jpg" alt="">
									</div>
									<!-- Mo -->
									<div class="txt-area-mo">
										<h3>엄격한 테스트</h3>
										<p>
											모든 MINI 오리지널 타이어는<br>
											주행 시 오로지 운전의 즐거움만 누릴 수 있도록<br>
											최대 50가지의 엄격하고 철저한 테스트를 거칩니다.
										</p>
									</div>
								</div>	

								<div class="swiper-slide">
									<div class="swiper-slider-visual">
										<div class="txt-area mo">
											<h3>완벽한 적합성</h3>
											<p>
												스타마크가 있는 모든 MINI 오리지널 타이어는<br> 
												차량의 특성에 맞게 제작 및 설계되어 가장 적합한 솔루션을
												제공합니다.
											</p>
											<span class="point">모델별 품질 기준</span>
											<ul>
												<li>- 접지력</li>
												<li>- 방향 안정성</li>
												<li>- 스티어링</li>
												<li>- 편안함 및 낮은 소음</li>
											</ul>
										</div>
										<img src="/asset/images/content/tire_slider_visual_02.jpg" alt="">
									</div>
									<!-- Mo -->
									<div class="txt-area-mo">
										<h3>완벽한 적합성</h3>
										<p>
											스타마크가 있는 모든 MINI 오리지널 타이어는<br> 
											차량의 특성에 맞게 제작 및 설계되어 가장 적합한 솔루션을
											제공합니다.
										</p>
										<span class="point">모델별 품질 기준</span>
										<ul>
											<li>- 접지력</li>
											<li>- 방향 안정성</li>
											<li>- 스티어링</li>
											<li>- 편안함 및 낮은 소음</li>
										</ul>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="swiper-slider-visual">
										<div class="txt-area mo">
											<h3>스포티한 성능</h3>
											<p>
												완벽한 주행 반응성을 위해서는 타이어, 휠,<br>
												서스펜션 컴포넌트, 전자 제어 시스템의<br>
												이상적인 조화가 매우 중요합니다.
											</p>
											<ul>
												<li>- 스포티한 주행을 위한 우수한 성능</li>
												<li>- 극한의 고속 주행에서 이루어지는 빠른 반응성</li>
												<li>- 스포티한 주행 스타일에 최적화된 스티어링 반응성</li>
											</ul>
										</div>
										<img src="/asset/images/content/tire_slider_visual_03.jpg" alt="">
									</div>
									<!-- Mo -->
									<div class="txt-area-mo">
										<h3>스포티한 성능</h3>
										<p>
											완벽한 주행 반응성을 위해서는 타이어, 휠,<br>
											서스펜션 컴포넌트, 전자 제어 시스템의<br>
											이상적인 조화가 매우 중요합니다.
										</p>
										<ul>
											<li>- 스포티한 주행을 위한 우수한 성능</li>
											<li>- 극한의 고속 주행에서 이루어지는 빠른 반응성</li>
											<li>- 스포티한 주행 스타일에 최적화된 스티어링 반응성</li>
										</ul>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="swiper-slider-visual">
										<div class="txt-area mo">
											<h3>탁월한 안전성</h3>
											<p>
												현재 MINI가 출시하는 모델에는<br class="pc">
												EU 타이어 라벨보다 엄격한 기준을 충족한<br class="pc">
												런플랫 기술이 적용된 타이어가 장착되어 있습니다.
											</p>
											<span class="point">런플랫 타이어의 장점</span>
											<ul>
												<li>- 갑작스러운 타이어 공기압 손실에도 안정적인 주행 성능 제공</li>
												<li>- 최고의 타이어 제조사와의 협력을 통해 제작</li>
												<li>- 지속적인 구름 저항력 개선</li>
												<li>- 편안한 승차감 제공</li>
											</ul>
										</div>
										<img src="/asset/images/content/tire_slider_visual_04.jpg" alt="">
									</div>
									<!-- Mo -->
									<div class="txt-area-mo">
										<h3>탁월한 안전성</h3>
										<p>
											현재 MINI가 출시하는 모델에는<br class="pc">
											EU 타이어 라벨보다 엄격한 기준을 충족한<br class="pc">
											런플랫 기술이 적용된 타이어가 장착되어 있습니다.
										</p>
										<span class="point">런플랫 타이어의 장점</span>
										<ul>
											<li>- 갑작스러운 타이어 공기압 손실에도 안정적인 주행 성능 제공</li>
											<li>- 최고의 타이어 제조사와의 협력을 통해 제작</li>
											<li>- 지속적인 구름 저항력 개선</li>
											<li>- 편안한 승차감 제공</li>
										</ul>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="swiper-slider-visual">
										<div class="txt-area mo">
											<h3>효율 높은 연비</h3>
											<p>
												모든 MINI 오리지널 타이어는<br>
												주행 시 오로지 운전의 즐거움만 누릴 수 있도록<br>
												최대 50가지의 엄격하고 철저한 테스트를 거칩니다.
											</p>
										</div>
										<img src="/asset/images/content/tire_slider_visual_05.jpg" alt="">
									</div>
									<!-- Mo -->
									<div class="txt-area-mo">
										<h3>효율 높은 연비</h3>
										<p>
											모든 MINI 오리지널 타이어는<br>
											주행 시 오로지 운전의 즐거움만 누릴 수 있도록<br>
											최대 50가지의 엄격하고 철저한 테스트를 거칩니다.
										</p>
									</div>
								</div>

							</div>
						</div>

						<div class="swiper-default-button-prev">이전</div>
						<div class="swiper-default-button-next">다음</div>

					</div>
				</div>
				
                <!-- 타이어 관리 요령 -->
				<div class="tire-check">
					<h3>타이어 관리 요령.</h3>
					<p class="check-info">
						안전한 주행을 위해서는 타이어 관리가 필요합니다.<br>
						장거리 주행 전이나 계절이 변했다면 타이어를 체크해보세요.
					</p>
					<div class="tire-check-1">
						<p class="img">
							<img src="/asset/images/content/mini_originalTire_mteaser_1.jpg" alt="">
						</p>
						<div class="check-1-info">
							<h4>1. 타이어 트레드 상태 체크하기</h4>
							<p class="txt">타이어 트레드는 차량제어, 노면 접지력, 배수성능 등을 책임집니다. 타이어 트레드의 상태가 나쁘다면, 노면과의 접촉이 불량하여 접지력이 제대로 생성되지 않기 때문에 주행 시 위험할 수 있습니다.</p>
							<span class="point">How to check</span>
							<ul>
								<li>
									1. 타이어 트레드 홈의 깊이는 타이어 마모한계선으로 확인 가능합니다. 마모한계선과 트레드의 높이가 같아진다면 교환을 권장합니다.
								</li>
								<li>
									2. 100원짜리 동전을 타이어 트레드 홈에 거꾸로 집어 넣은 후,<br> 동전에 있는 이순신 장군의 사모가 보인다면 타이어 교체가 필요합니다.
								</li>
							</ul>
						</div>
					</div>
					<div class="tire-check-1 mt30">
						<!-- <p class="img-mo">
							<img src="/asset/images/content/mini_originalTire_mteaser_2.jpg" alt="">
						</p> -->
						<div class="check-2-info">
							<h4>2. 적정 공기압 유지</h4>
							<p class="txt">타이어의 공기압이 지나치게 높거나, 낮을 경우에는위험할 수 있으며, 과도한 트레드 마모를 일으킬 수 있기에
								MINI가 권장하는 적정 공기압 유지를 권장합니다.</p>
							<span class="point">How to check</span>
							<ul>
								<li>
									1. 계기판 경고등에 점등이 될 경우
									MINI 공식 딜러 서비스 센터를 방문하여 체크하세요.
								</li>
							</ul>
						</div>
						<p class="img">
							<img src="/asset/images/content/mini_originalTire_mteaser_2.jpg" alt="">
						</p>
					</div>
					<div class="tire-check-1 mt30">
						<p class="img">
							<img src="/asset/images/content/mini_originalTire_mteaser_3.jpg" alt="">
						</p>
						<div class="check-1-info">
							<h4>3. 주행 중 타이어의 공기압 손실 시 조치 방법</h4>
							<p class="txt">타이어 공기압 경고등 점등 시<br>
								런플랫 타이어 - 최대 80km 주행 가능 하며 가까운 공식 서비스 센터에서 조치를 받아야 합니다.
								일반 타이어 - 안전한 곳에 임시 정차 후 MINI 긴급출동 서비스 이용하여 조치를 받아야 합니다.<br><br>
								타이어 파손 혹은 과도한 공기압 손실 발생 시
								안전한 장소에 임시 정차 후 MINI 긴급출동 서비스이용하여 조치를 받아야 합니다.<br>* 급제동이나 스티어링 휠을 급격히 꺾는 행동은 위험 할 수 있습니다.</p>
						</div>
					</div>
				</div>

				<!-- <div class="default_cell">
					<ul class="dot_list_small">
						<li>할인 품목은 MINI JCW GO-KART와 MINI TRICYCLE 제품에 한정합니다.</li>
						<li>할인 혜택은 5월 한 달간 부가세 포함 적용되며, 다른 프로모션과 중복 적용 불가합니다.</li>
						<li>본 캠페인은 MINI Korea의 사정으로 예고 없이 변경될 수 있으며, 자세한 내용은 공식 딜러 서비스 센터로 문의하시기 바랍니다.</li>
					</ul>
				</div> -->

			</section>



		</section>	


        <p id="btn_top_scroll"><a href="javascript:gnb.goTop();"><img src="/asset/images/common/btn_top.gif" alt="top" width="48"/></a></p>
        
		<%@ include file="/WEB-INF/jsp/cmmn/include/footer.jspf" %>

     </div>
	 <script src="/asset/js/common.js"></script>      
	 <script>
		 var slider = [];
		 var hoverIndex = [];
		 $(function(){
			 
			 /*
			 $('.hover_visual_content').find('.visual').click(function(){
				 if($(this).hasClass('actived')){
					 $(this).removeClass('actived');
				 }else{
					 $(this).addClass('actived');
				 }
			 });
			 */

			 $(document).on('click' , '.hover_visual_content .visual , .hover_visual_content .pet' , function(){
				 

				 if($('.hover_visual_content').find('.visual').hasClass('actived')){
					 $('.hover_visual_content').find('.visual').removeClass('actived');
				 }else{
					 $('.hover_visual_content').find('.visual').addClass('actived');
				 }

			 });


			 $('.swiper_content').each(function(){
				 if($(this).find('.swiper-slide').length > 1){
					 var _slide = new Swiper($(this).find('.swiper-container')[0], {
						 slideToClickedSlide:true,
						 centeredSlides: true,
						 paginationClickable: true,
						 autoHeight:true,
						 loop:true,
						 simulateTouch:false,
						 nextButton:$(this).find('.swiper-default-button-next')[0],
						 prevButton:$(this).find('.swiper-default-button-prev')[0],
						 onSlideChangeEnd:function(swiper){
							 var _i = (swiper.activeIndex - 1) % (swiper.slides.length - 2);
							 if(_i < 0) _i = swiper.slides.length-3;
							 var _parent = $(swiper.container[0]).parents('.swiper_content');
							 _parent.find('.tire-tab_item li').each(function(){
								 if($(this).index() == _i){
									 $(this).addClass('actived');
								 }else{
									 $(this).removeClass('actived');
								 }
							 });
						 },
						 breakpoints:{
							 320 : {
								 simulateTouch:true
							 },
							 769 : {
								 simulateTouch:false
							 }
						 }
					 });

					 slider.push(_slide);
				 }else{
					 $(this).addClass('swiper_hidden');
				 }
			 });
			 

			 $('.tire-tab_item').find('.tab_button').click(function(){

				 var _parentIndex = $(this).parents('.default_cell').attr('data-slider-index');
				 var _childIndex = $(this).parent().index();
				 if(slider[_parentIndex])slider[_parentIndex].slideTo($(this).parent().index()+1);
				 var _parentTab = $(this).parents('.tire-tab_item');
				 _parentTab.find('li').each(function(){
					 if($(this).index() == _childIndex){
						 $(this).addClass('actived');
					 }else{
						 $(this).removeClass('actived');
					 }
				 });
			 });				

			 thumbSort(0);
		 });
		 
		 function thumbSort(_i){
			 $('.tire-tab_item').find('ul li').each(function(){
				 if($(this).index() == _i){
					 $(this).addClass('actived');
				 }else{
					 $(this).removeClass('actived');
				 }
			 });
		 }


		 </script>     		
    </body>
</html>
