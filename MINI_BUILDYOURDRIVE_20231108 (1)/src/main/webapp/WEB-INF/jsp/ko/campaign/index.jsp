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
		<link rel="stylesheet" href="/asset/css/promotion.css?v=2023071201">
    </head>
    <body>
		<style>
			/* 23. 07. 12 add {*/
			.wcw_promo .grid-wrap {padding:50px 30px}
			.wcw_promo .grid-wrap .grid-data {display:flex; flex-wrap:wrap;margin:-11px;}
			.wcw_promo .grid-wrap .grid-data .grid-data-cell {position:relative; padding:11px; box-sizing:border-box;}
			.wcw_promo .grid-01 {width:100%;}
			.wcw_promo .grid-02 {width:50%;}
			.wcw_promo .grid-03 {width:33.33%;}
			.wcw_promo .grid-04 {width:25%;}
			.wcw_promo .grid-05 {width:20%;}
			.wcw_promo .grid-06 {width:16.66%;}
			.wcw_promo .grid-07 {width:14.28%;} 

			.wcw_promo .promotion-wrap {
				padding:40px 0;
			}
			.wcw_promo .txt_table li.has-image-link{
				overflow: hidden;
			}
			.wcw_promo .txt_table li.has-image-link .has-image-link-block{
				/* position: relative;
				top:auto;
				right:auto;
				margin:0;
				padding:0; */
				top:-10px;
				right:7%;
			}
			.wcw_promo .lifestyle-month-2.type2 {
				padding:20px 30px;
			}
			.wcw_promo .lifestyle-month-2 .grid-wrap {margin-top:35px;padding:0;}
			.wcw_promo .lifestyle-month-2 .grid-wrap .grid-data {
				margin:-10px -20px;
				display:flex;
				position: relative;
				float: none;
				flex: 0 0 auto;
				box-sizing: border-box;
			}
			.wcw_promo .lifestyle-month-2 .grid-wrap .grid-data .grid-data-cell {float:none;padding:10px 5px;flex:0 0 auto;width:50%;}
			.wcw_promo .lifestyle-month-2 .grid-wrap .grid-data .grid-data-cell {position:relative; padding:10px 20px;}
			.wcw_promo .con_title2 {
				font-weight: 700;
				font-size: 26px;
				line-height: 24px;
				margin-bottom: 10px;
				/* background: #fafafa; */
			}
			.wcw_promo .detail_title2 {
				font-weight: 400;
				font-size: 18px;
				line-height: 20px;
				margin-bottom: 20px;
				/* background: #fafafa; */
			}
			.wcw_promo .line-text-list  > li {display:flex; font-size:16px; line-height:28px;}
			.wcw_promo .line-text-list  > li:before {content:'-'; margin-right:4px;}
			.wcw_promo .line-text-list  > li > span {font-weight: bold; margin-right: 10px;}

			.wcw_promo .line-text-list  + .grid-wrap {margin-top:20px;}


			.wcw_promo .lifestyle-month-2 .item-02 .thumb{position:relative;margin-top:-30px}
			.wcw_promo .lifestyle-month-2 .item-02 .thumb .title {position:absolute;bottom:0;left:0;display:block;box-sizing:border-box;width:100%;padding:24px;font-size:20px;line-height:26px;color:#fff;font-weight:700;}
			.wcw_promo .lifestyle-month-2 .item-02 .price-data {margin-top:12px;}
			.wcw_promo .lifestyle-month-2 .item-02 .price-data .price-value {font-size:16px;line-height:26px;font-weight:400;}


			.wcw_promo .week_table {width:50%;}
			.wcw_promo .week_table{max-width:100%;margin-top:25px}
			.week_table.full {width:100%;}
			.wcw_promo .week_table.week_table_title {font-size:18px; margin-bottom:15px;}
			.wcw_promo .week_table.reservation_complete_info {overflow:hidden; width:100%; border-top:1px solid #e7e7e7}
			.wcw_promo .week_table.reservation_complete_info:last-child {border-bottom:1px solid #e7e7e7}
			.wcw_promo .week_table.reservation_complete_info dt {float:left; width:20%; border-bottom:1px solid #e7e7e7}
			.wcw_promo .week_table.reservation_complete_info dd {float:right; width:80%;text-align:left}
			.wcw_promo .week_table.reservation_complete_info dt, 
			.wcw_promo .week_table.reservation_complete_info dd {border:none;font-size:15px;line-height:22px;padding:8px 0;}
			.wcw_promo .week_table.reservation_complete_info ul{}
			.wcw_promo .week_table.reservation_complete_info ul li{position:relative;padding-left:15px;}
			.wcw_promo .week_table.reservation_complete_info ul li em{position:absolute;top:0;left:0}
			.wcw_promo .week_table.bottom_txt{font-size:12px;line-height:21px;margin-top:10px;}
			.wcw_promo .week_table + .dot_list_small {margin-top:20px;}

			.wcw_promo .sub_copy.promotion_sub_copy .sub_copy_obj {
				padding-top:0;
			}

			@media screen and (max-width: 1080px) {
				.wcw_promo .txt_table li.has-image-link .has-image-link-block { 
					position: relative;
					top:-25px;
					right:5%;
					width:50%;
					margin:0;
					padding:0;
					max-width: 50%;
				}
				.wcw_promo .sub_copy.promotion_sub_copy .sub_copy_obj {
					padding-top: 8px;
				}

			}
			@media screen and (max-width: 768px) {
				.wcw_promo .lifestyle-month-2 .grid-wrap .grid-data .grid-data-cell {
					width:100%;
				}
				.wcw_promo .lifestyle-month-2 .item-02 .thumb {
					margin-top:0;
				}

				.wcw_promo .txt_table li.has-image-link .has-image-link-block {
					margin:0;
					padding:0;
					top:-25px;
					right:5%;
					width:50%;
				}
				.wcw_promo .sub_copy.promotion_sub_copy .sub_copy_obj {
					padding-top: 8px;
				}
			}
			/* 23. 07. 12 add }*/
		</style>
    <div id="wrapper">

		<%@ include file="/WEB-INF/jsp/cmmn/include/gnb.jspf" %>	
		<section id="container">

			<div class="main_large_teaser">
                <div class="visual" style="border-bottom-color:#7b7a76;"><img src="/asset/images/content/wcw_mini_key_visual230718.jpg?v=2023071801" alt=""></div>
				<!--
				<div class="txt_data">
					<div class="inner">
						<h3 class="headline">HAPPY FIRST DAY.</h3>
						<h3 class="sub_headline">MINI ORIGINAL CAR ACCESSORIES &amp; LIFESTYLE.</h3>
					</div>
				</div>
				-->
			</div>

			<section id="contents" class="wcw_promo">
				<div class="sub_copy sub_image_copy promotion_sub_copy">

					<div class="grid-wrap">
						<div class="sub_copy_cell">
							<h3 class="sub_copy_title">겨울철 MINI를 위한 특별한 선물.</h3>
							<p class="sub_copy_txt">겨울철 내 MINI를 더욱 프리미엄하게 이용하는 방법<br />
									Winter Complete Wheel & Tire Set.</p>
									<br />
							<div class="sub_copy_data">
								<br />
								<p class="sub_copy_txt">1. 기존 차량의 휠 & 타이어의 내구성 및 사용 기 간연장.</p>
								<p class="sub_copy_txt">2. 겨울마다 타이어 교체 시 발생 가능한 데미지 0%.</p>
								<p class="sub_copy_txt">3. 프리미엄 보관 서비스 이용으로 전국 공식 서비스센터 어디서나 교체.</p>
								<div class="txt_table">
									<ul> 
										<li><p class="title">기 간</p>2023년 7월 17일 - 2023년 8월 31일</li>
										<!-- <li><p class="title">장 소</p>전국 MINI 공식 딜러 서비스 센터</li>
										<li><p class="title">대 상</p>MINI 고객 (F바디 차량)</li> -->
										<li class="has-image-link">
											<p class="title">혜 택</p>WCW 25% 할인 제공<br/>
											WCW 장착 시,<br/>
											MINI Natural Air Starter Kit 제공<br/><br/>
											<a href="#" class="has-image-link-block"><img src="/asset/images/content/wcw_mini_natural_air_starter_kit.png" /></a>
										</li>
									</ul>
								</div>
							</div>
							<div class="sub_copy_obj"><img src="/asset/images/content/wcw_Campaign_sv_v2.jpg" alt=""></div>
						</div>
					</div>
				</div>				
			</section>

			<div class="promotion-wrap wcw_promo">
				<div class="container_small">
					<div class="default_cell lifestyle-month-2 type2">
						<div class="grid-wrap">
							<div class="grid-data">
								<div class="grid-data-cell item-01">
									<h3 class="con_title2"><strong>빙판길 타이어 제동성능 비교</strong></h3>
									<h4 class="detail_title2">(50km/h 주행 중 급제동 시 거리)</h4>
									<ul class="line-text-list">
										<li>일반 타이어의 경우 영상 7℃ 이하에서부터 고무 표면이 경직되어
											차량의 접지력, 조향성, 주행 응답성이 현저하게 저하됩니다.&nbsp;
											BMW 오리지널 윈터 타이어는 특수 실리카 화합물을 사용하여&nbsp;
											저온에서도 뛰어난 유연성으로 우수한 접지력과 추진력을 제공합니다.
										</li>
									</ul>
								</div>
								<div class="grid-data-cell item-02">
									<div class="thumb"><img src="/asset/images/content/wcw_ebp_tiretest.jpg" alt=""></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 빙판길 타이어 제동성능 비교 -->


				<!-- <div class="promotion-title"><p>MINI 8월의 제품</p></div> -->
				<div class="container_small">
					<div class="default_cell lifestyle-month-2 type2">
						<h3 class="con_title">
							<strong>MINI ORIGINAL WINTER COMPLETE<br> WHEEL & TIRE SET.</strong>
							<!-- span class="info">미래의 MINI 오너들에게 특별한 즐거움을 전하세요. <br />
								포근한 바람을 느끼며 달릴 수 있는 MINI 베이비 레이서부터 호기심을 자극하는 MINI 퍼즐카까지<br />
								다양한 MINI 라이프스타일 제품으로 MINI와 함께하는 행복을 우리 아이들에게 선물하세요.
							</span -->
						</h3>
						<div class="lifestyle-month-list-2">
							<div class="buy_get_one">
								<div class="buy_get_one_cell buy_one">
									<div class="buy_get_one_item">
										<div class="thumb"><img src="/asset/images/content/wcw_promo_wheel_mini_510_17.jpg" alt="" width=""/></div>
										<div class="price-data">	
											<div class="price-value sale">
												<div class="priveNum">
													<div class="numsale">￦ 1,792,560</div>
													<p>JCW DOUBLE SPOKE 510, 17"<br>36 11 2349710</p>
													<span>정상가 ￦ 2,390,080 (한대분)</span>
													<div class="discle">* MINI Hatch (F55/56/57)</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="buy_get_one_cell get_one">
									<div class="buy_get_one_item">
										<div class="thumb"><img src="/asset/images/content/wcw_promo_wheel_mini_505_17.jpg" alt="" width=""/></div>
										<div class="price-data">											
											<div class="price-value sale">
												<div class="priveNum">
													<div class="numsale">￦ 2,200,440</div>
													<p>JCW MULTI SPOKE 505, 17"<br>36 11 2461642</p>
													<span>정상가 ￦ 2,933,920 (한대분)</span>
													<div class="discle">* MINI Hatch (F55/56/57)</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="buy_get_one">
								<div class="buy_get_one_cell buy_one">
									<div class="buy_get_one_item">
										<div class="thumb"><img src="/asset/images/content/wcw_promo_wheel_mini_529_17.jpg" alt="" width=""/></div>
										<div class="price-data">										
											<div class="price-value sale">
												<div class="priveNum">
													<div class="numsale">￦ 3,204,630</div>
													<p>JCW BLACKT HRILL SPOKE529,18"<br>36 11 0048011</p>
													<span>정상가 ￦ 4,272,840 (한대분)</span>
													<div class="discle">* COUNTRYMAN (F60)</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- <div class="buy_get_one_cell get_one">
									<div class="buy_get_one_item">
										<div class="thumb"><img src="/asset/images/content/wcw_promo_wheel_mini_531_17.jpg" alt="" width=""/></div>
										<div class="price-data">											
											<div class="price-value sale">
												<div class="priveNum">
													<div class="numsale">￦ 2,729,760</div>
													<p>CHANNEL SPOKE 531, 17”<br>36 11 0048010</p>
													<span>정상가 ￦ 3,639,680 (한대분)</span>
													<div class="discle">*COUNTRYMAN (F60)</div>
												</div>
											</div>
										</div>
									</div>
								</div> -->
								<div class="buy_get_one_cell buy_one">
									<div class="buy_get_one_item">
										<div class="thumb"><img src="/asset/images/content/wcw_promo_wheel_mini_519_17.jpg" alt="" width=""/></div>
										<div class="price-data">										
											<div class="price-value sale">
												<div class="priveNum">
													<div class="numsale">￦ 2,290,530</div>
													<p>NET SPOKE 519, 17"<br>36 11 2409043</p>
													<span>정상가 ￦ 3,054,040 (한대분)</span>
													<div class="discle">* CLUBMAN (F54)</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="buy_get_one">
								<div class="buy_get_one_cell get_one">
									<div class="buy_get_one_item">
										<div class="thumb"><img src="/asset/images/content/wcw_promo_wheel_mini_815_18.jpg" alt="" width=""/></div>
										<div class="price-data">											
											<div class="price-value sale">
												<div class="priveNum">
													<div class="numsale">￦ 2,500,740</div>
													<p>JCW GRIP SPOKE 815, 18"<br>36 11 2471526</p>
													<span>정상가 ￦3,334,320 (한대분)</span>
													<div class="discle">* CLUBMAN (F54)</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- <div class="btn-lifestyle-download"><a href="/asset/images/MINI_Lifestyle_Catalogue.PDF" target="_blank" class="button01">라이프스타일 카달로그 다운로드</a></div> -->
				</div>
				
			</div>				

			<div class="default_cell bottom_content">
				<div class="container_small">
					<ul class="dot_list_small">
						<li>선별된 제품만 해당 캠페인 적용이 가능합니다.</li>
						<li>MINI Natural Air Starter Kit 사은품은 WCW 장착 시 함께 전달됩니다.</li>
						<li>내부 사정으로 사은품은 변경될 수 있습니다.</li>
						<li>WCW 제품은 브레이크 옵션에 따라 장착이 불가할 수 있습니다.</li>
						<li>인쇄된 이미지는 이해를 돕기 위한 것으로 실제 제품과 차이가 있을 수 있습니다.</li>
						<li>윈터 타이어는 체인을 완전히 대신할 수 없으며, 폭설 등 기상상황에 따라 함께 사용하여 안전운전하시기 바랍니다.</li>
						<li>본 캠페인은 MINI Korea의 사정으로 예고 없이 변경될 수 있습니다. 자세한 내용은 공식 딜러 서비스 센터에 문의 부탁드립니다.</li>
					</ul>
				</div>
			</div>

		</section>	


        <p id="btn_top_scroll"><a href="javascript:gnb.goTop();"><img src="/asset/images/common/btn_top.gif" alt="top" width="48"/></a></p>
        
		<%@ include file="/WEB-INF/jsp/cmmn/include/footer.jspf" %>

     </div>
        <script src="/asset/js/common.js"></script>      
		<script src="/asset/js/jquery.bxslider.min.js"></script>
    </body>
</html>
