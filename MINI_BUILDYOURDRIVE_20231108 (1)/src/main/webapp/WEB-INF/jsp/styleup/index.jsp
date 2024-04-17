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
                <div class="visual"><img src="/asset/images/content/mini_suitup_visual.jpg" alt=""></div>
				<div class="txt_data">
					<div class="inner">
						<h3 class="headline">HAPPY FIRST DAY.</h3>
						<h3 class="sub_headline">MINI ORIGINAL CAR ACCESSORIES &amp; LIFESTYLE.</h3>
					</div>
				</div>
			</div>

			<section id="contents">

				<div class="sub_copy">
					<div class="sub_copy_cell">
						<div class="sub_copy_data">
							<div class="sub_txt_wrap">
								<div class="txt_data">
									<p class="sub_copy_txt">오직, 신차 구매 고객분들께만 제공되는 단 한 번의 파워풀한 혜택.<br>다양한 Car Accessories & Lifestyle 제품을  30% 할인된 가격으로 만나보실 수 있습니다.<br>신차 구매 후, 단 3개월만 제공되는 특별한 기회를 놓치지 마십시오.</p>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="default_cell">
					<h3 class="con_title">HAPPY FIRST DAY 혜택 안내.</h3>
					<div class="benefit_info">
						<ol>
							<li>
								<div class="info_cell">
									<p class="step">혜택 1</p>
									<p class="txt">MINI Original Car Accessories &amp; Lifestyle 30% 할인.</p>
								</div>
							</li>
							<li>
								<div class="info_cell">
									<p class="step">혜택 2</p>
									<p class="txt">150만원 이상 구매 시 5만원 할인 쿠폰 증정 (구매 당일 사용 가능).</p>
								</div>
							</li>
						</ol>
					</div>

					<ul class="dot_list_small">
						<li>HAPPY FIRST DAY, MINI 프로그램은 타 캠페인과 중복 할인이 적용되지 않습니다.</li>
						<li>HAPPY FIRST DAY, MINI 프로그램은 차량 등록일 기준 익월 1일부터 3개월간 사용 가능하며, 해당 VOUCHER는 MINI PLUS APP을 통해 확인 가능합니다.<br>(예시 : 2019년 10월 15일 등록한 차량 기준, 2019년 11월 1일부터 2020년 1월 31일까지 사용 가능합니다.)</li>
						<!--<li>차종별 장착 기능 아이템이 다를 수 있습니다. 상단의 QR 코드를 통하여 장착 가능 아이템이 확인 가능합니다.</li>-->
						<li>차종별 장착 기능 아이템이 다를 수 있습니다.</li>
						<li>자전거 및 일부 LIFESTYLE 상품은 할인 대상에서 제외됩니다.</li>
						<li>본 할인 혜택은 MINI 온라인 LIFESTYLE SHOP에서 구매하시는 경우 사용 불가합니다.</li>
						<li>상품가는 공임 미포함이며, 할인에서 제외됩니다.</li>
						<li>제품의 가격은 예고 없이 변동될 수 있으며 품절 또는 단종될 수 있습니다.</li>
						<li> 본 캠페인의 내용은 MINI KOREA의 사정으로 예고 없이 변경될 수 있으며, 자세한 사항은 MINI 공식 딜러 서비스 센터로 문의하시기 바랍니다.</li>
					</ul>

				</div>

				<div class="default_cell swiper_content" data-slider-index="0">
					<div class="tab">
						<div class="tab_item">
							<ul>
								<li><button type="button" class="tab_button"><span>MINI ORGINAL CAR ACCESSORIES.</span></button></li>
								<li><button type="button" class="tab_button"><span>MINI LIFESTYLE.</span></button></li>
							</ul>
						</div>
					</div>
					<div class="tab_slide_content">
						<div class="swiper-container">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="swiper-slider-visual"><p class="txt" style="color:#fff;">MINI ORGINAL CAR ACCESSORIES.</p><img src="/asset/images/content/suitup_slider_visual_01.jpg" alt=""></div>
								</div>	

								<div class="swiper-slide">
									<div class="swiper-slider-visual"><p class="txt">MINI LIFESTYLE.</p><img src="/asset/images/content/suitup_slider_visual_02.jpg" alt=""></div>
								</div>

							</div>
						</div>

						<div class="swiper-default-button-prev">이전</div>
						<div class="swiper-default-button-next">다음</div>

					</div>
				</div>

				<div class="default_cell swiper_content" data-slider-index="1">

					<div class="con_title none">SUIT UP SIMULATION.</div>
					<div class="con_title_info">달라질 차량의 모습을 확인하세요.</div>

					<div class="tab">
						<div class="tab_item">
							<ul>
								<li><button type="button" class="tab_button"><span>MINI Cooper.</span></button></li>
							</ul>
						</div>
					</div>
					<div class="tab_slide_content">
						<div class="swiper-container">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									
									<div class="hover_visual_content" data-index="0">
										<div class="visual">
											<p style="background-image:url(/asset/images/content/suit_over_0101.jpg);" class="actived"></p>
											<p style="background-image:url(/asset/images/content/suit_over_0102.jpg);" class=""></p>
										</div>

										<div class="pet"><img src="/asset/images/content/click.png" width="110" alt="">이미지를 클릭하세요.</div>

										<div class="btns-wrap">
											<ul>
												<li><a href="http://www.mini-buildyourdrive.co.kr/accessories/index.do" class="button01">내 차에 맞는 제품 보러가기</a></li>
												<li><a href="/asset/images/MINI_Lifestyle_Catalogue.PDF" target="_blank" class="button01">라이프스타일 카달로그 다운로드</a></li>
											</ul>
										</div>
									</div>

								</div>	

							</div>
						</div>

						<div class="swiper-default-button-prev">이전</div>
						<div class="swiper-default-button-next">다음</div>

					</div>
				</div>


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
