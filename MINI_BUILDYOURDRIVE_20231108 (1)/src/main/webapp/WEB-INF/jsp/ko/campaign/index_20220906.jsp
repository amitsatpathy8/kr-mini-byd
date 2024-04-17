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
		<link rel="stylesheet" href="/asset/css/promotion.css">
		<link href="/asset/css/swiper.min.css" rel="stylesheet" />
		 <script src="/asset/js/swiper.min.js"></script>
    </head>
    <body>
    <div id="wrapper">

		<%@ include file="/WEB-INF/jsp/cmmn/include/gnb.jspf" %>	
		<section id="container">

			<div class="main_large_teaser">
                <div class="visual" style="border-bottom-color:#7b7a76;"><img src="/asset/images/content/BYD-campaign_main.jpg" alt=""></div>
				<!--
				<div class="txt_data">
					<div class="inner">
						<h3 class="headline">HAPPY FIRST DAY.</h3>
						<h3 class="sub_headline">MINI ORIGINAL CAR ACCESSORIES &amp; LIFESTYLE.</h3>
					</div>
				</div>
				-->
			</div>

			<section id="contents">
				<div class="sub_copy sub_image_copy promotion_sub_copy">
					<div class="sub_copy_cell">
						<div class="sub_copy_data">
							<p class="sub_copy_txt">MINI BUILD YOUR DRIVE FESTA에 여러분을 초대합니다.<br>  
								MINI만의 스타일과 감성이 담긴 새로운 라이프스타일 컬렉션부터 주행 감각을 높여 주는 오리지널 타이어와 파츠<br>
								그리고 카 액세서리까지 다양한 혜택을 제공하는 MINI BUILD YOUR DRIVE FESTA와 함께하세요. </p>	
							<div class="txt_table">
								<ul> 
									<li><p class="title">기 간</p>2022년 9월 13일 – 10월 22일 (6주간)</li>
									<li><p class="title">대 상</p>MINI 전 고객 대상 (연식 무관)</li>
									<li><p class="title">장 소</p>전국 MINI 공식 딜러 서비스 센터</li>
									<li class="has-image-link"><p class="title">혜 택</p>1) MINI 오리지널 액세서리 & 라이프스타일 제품 및 공임 20% 할인<br/>
										2) MINI 오리지널 타이어 10% 할인, 공임 최대 50% 할인<br/>
										3) MINI 오리지널 타이어 "올 체인지" 패키지<br>
									</li>
									<li class="has-image-link"><p class="title">이벤트</p>1) MINI 오리지널 액세서리 & 라이프스타일 구매 금액별 사은품 증정<br/>
										2) 캠페인 입고 및 구매 고객 대상 사은품 증정
									</li>
								</ul>
							</div>
						</div>
						<div class="sub_copy_obj"><img src="/asset/images/content/BYD-campaign_sub.jpg" alt=""></div>
					</div>
				</div>				
			</section>

			<div class="promotion-wrap">
				<!-- <div class="promotion-title"><p>MINI 8월의 제품</p></div> -->
				<div class="container_small">
					<div class="default_cell lifestyle-month-2 type2">
						<!-- <h3 class="con_title"><strong>READY FOR ICONIC MINI.</strong></h3> -->
						<div class="default_cell swiper_content" data-slider-index="0">
							<!-- <div class="tab">
								<div class="tab_item">
									<ul>
										<li><button type="button" class="tab_button"><span>MINI ORGINAL ACCESSORIES.</span></button></li>
										<li><button type="button" class="tab_button"><span>MINI LIFESTYLE.</span></button></li>
									</ul>
								</div>
							</div> -->
							<div class="tab_slide_content">
								<div class="swiper-container">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<div class="swiper-slider-visual-1">
												<div class="item-info">
													<h3>READY FOR UNIQUE MINI.</h3>
													<p>MINI만의 감성을 담은 유니크한 라이프스타일 제품들을
														20% 할인된 가격으로 제공하는 특별한 혜택을 놓치지 마세요.
													</p>
													<div class="btn_more"><p><a href="/ko/lifestyle/index.do" class="button01">라이프스타일 페이지로 이동</a></p></div>
												</div>
												<P class="teaser"><img src="/asset/images/content/mini_campaign_mteaser_2.jpg" alt=""></P>
											</div>
										</div>	
										<div class="swiper-slide">
											<div class="swiper-slider-visual-1">
												<div class="item-info">
													<h3>READY FOR LUCKY MINI.</h3>
													<p>캠페인에 참여하신다면, 구매 고객에게 제공하는<br>
														특별한 캠핑용 사은품을 놓치지 마세요.
													</p>
													<div class="gift-2">
														<ul>
															<li>
																<img src="/asset/images/content/mini_campaign_gift_2.jpg" alt="">
																<p>50만원 이상 구매 시<br>
																	인디언 행거 증정
																</p>
															</li>
															<li>
																<img src="/asset/images/content/mini_campaign_gift_3.jpg" alt="">
																<p>100만원 이상 구매 시<br>
																	테이블, 랜턴, 의자 3종 증정
																</p>
															</li>
														</ul>
														<span class="dcl">* 연출된 이미지로 추가 구성품은 제공 되지 않습니다.</span>
													</div>
												</div>
												<P class="teaser"><img src="/asset/images/content/mini_campaign_mteaser_4.jpg" alt=""></P>
											</div>
										</div>
										<div class="swiper-slide">
											<div class="swiper-slider-visual-1">
												<div class="item-info">
													<h3>READY FOR ICONIC MINI.</h3>
													<p>MINI를 상징하는 유니언잭 테일 라이트를
														20% 할인된 가격으로 특별한 사은품과 함께 만나보세요.
													</p>
													<p class="img"><img src="/asset/images/content/mini-bag.jpg"></p>
													<span>MINI 더플 백을 선물로 드립니다.</span>
												</div>
												<P class="teaser"><img src="/asset/images/content/mini_campaign_mteaser_1.jpg" alt=""></P>
											</div>
										</div>	
										
										
										<div class="swiper-slide">
											<div class="swiper-slider-visual-1">
												<div class="item-info">
													<h3>READY FOR DRIVING MINI.</h3>
													<p>안정성과 효율성을 높여주는 MINI 오리지널 타이어로
														MINI만의 즐거운 드라이빙을 즐겨보세요.
													</p>
													<div class="gift-2">
														<ul>
															<li>
																<img src="/asset/images/content/mini_campaign_gift_2.jpg" alt="">
																<p>2본 구매 및 장착 시<br>
																	인디언 행거 증정
																</p>
															</li>
															<li>
																<img src="/asset/images/content/mini_campaign_gift_1.jpg" alt="">
																<p>4본 구매 및 장착 시<br>
																	MINI 웨건 증정
																</p>
															</li>
														</ul>
														<span class="dcl">* 연출된 이미지로 추가 구성품은 제공 되지 않습니다.</span>
													</div>
												</div>
												<P class="teaser"><img src="/asset/images/content/mini_campaign_mteaser_3.jpg" alt=""></P>
											</div>
										</div>	
											
									</div>
								</div>
								<div class="swiper-default-button-prev">이전</div>
								<div class="swiper-default-button-next">다음</div>
							</div>
						</div>
					</div>
					<div class="container_small">
						<ul class="dot_list_small">
							<li>본 사이트의 가격은 환율 변동에 따라 예고 없이 변동될 수 있으며, 품절이나 단종 될 수 있습니다.</li>
							<li>구매 금액 별 캠페인 사은품은 특별 사은품과 중복 제공되지 않습니다.</li>
							<li>본 사이트의 이미지는 실제 제품 색상과 차이가 있을 수 있습니다.</li>
							<li>본 사이트는 연출된 이미지를 포함하고 있습니다.</li>
							<li>구매 금액별 캠페인 사은품은 한 차대당 1개만 지급됩니다.</li>
							<li>사은품은 오리지널 MINI 액세서리 및 라이프 스타일 할인 후 공임을 제외한 금액을 합산하여 증정하며, 조기 소진 시 다른 제품으로 교체될 수 있습니다.</li>
							<li>증정된 사은품은 교환 및 환불 불가합니다.</li>
							<li>BUILD YOUR DRIVE 2021 캠페인은 타 캠페인, 쿠폰 사용 등 다른 이벤트와 중복 적용이 불가 합니다.</li>
							<li>사고수리(보험수리)는 BUILD YOUR DRIVE 2021 캠페인 대상에서 제외 됩니다.</li>
							<li>본 캠페인의 내용은 MINI Korea의 사정으로 예고 없이 변경될 수 있습니다.</li>
						</ul>
					</div>
					

					<!-- <div class="btn-lifestyle-download"><a href="/asset/images/MINI_Lifestyle_Catalogue.PDF" target="_blank" class="button01">라이프스타일 카달로그 다운로드</a></div> -->
				</div>				
			</div>				

			<div class="default_cell bottom_content">
				<div class="container_small">
					<p class="img"><img src="/asset/images/content/MINI-Campaign_app.jpg" alt=""></p>
					<div class="app-info">
						<h3><span>MINI Plus</span><br>애플리케이션 예약 이벤트</h3>
						<p>
							MINI Plus 어플리케이션 예약 및 입고 완료 시,<br> MINI 방향제 증정
						</p>
						<span class="btn_more"><a href="https://apps.apple.com/kr/app/mini-plus/id1383631400" target="_blank" class="button01">APPLE APP STORE</a></span>
						<span class="btn_more"><a href="https://play.google.com/store/apps/details?id=kr.co.bmwkorea.bmwmini&hl=ko" target="_blank" class="button01">GOOGLE PLAY STORE</a></span>
					</div>
				</div>
			</div>

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
								_parent.find('.tab_item li').each(function(){
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
				

				$('.tab_item').find('.tab_button').click(function(){

					var _parentIndex = $(this).parents('.default_cell').attr('data-slider-index');
					var _childIndex = $(this).parent().index();
					if(slider[_parentIndex])slider[_parentIndex].slideTo($(this).parent().index()+1);
					var _parentTab = $(this).parents('.tab_item');
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
				$('.tab_item').find('ul li').each(function(){
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
