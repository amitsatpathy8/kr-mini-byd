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

        <link href="/asset/css/swiper5.min.css" rel="stylesheet" />
        <script src="/asset/js/swiper5.min.js"></script>

		<%@ include file="/WEB-INF/jsp/cmmn/include/gnb.jspf" %>	
		<section id="container">

			<div class="main_large_teaser">
                <div class="visual" style="border-bottom-color:#c9242c;"><img src="/asset/images/content/MINI-lifestyle_main_20220906.jpg" alt=""></div>
			</div>

			<section id="contents" class="new-lifestyle">

				<div class="sub_copy sub_image_copy">
					<div class="sub_copy_cell">
						<div class="lifestyle_copy_data">
							<h3 class="sub_copy_title">MINI LIFESTYLE COLLECTION.</h3>
						</div>
					</div>
				</div>
				<div class="full-contents">
					<div class="product_con">
						<!-- Lifestyle Desk -->
						<div class="desk">
							<div class="detail-data">
								<div class="detail-menu">
									<ul>
										<li class="actived"><a href="#" onclick="sort_menu(0); return false;">BAGS & LUGGAGE.</a></li>
										<li><a href="#" onclick="sort_menu(1); return false;">ACCESSORIES.</a></li>
										<li><a href="#" onclick="sort_menu(2); return false;">MINIATURE.</a></li>
										<li><a href="#" onclick="sort_menu(3); return false;">MOBILITY.</a></li>
										<li><a href="#" onclick="sort_menu(4); return false;">TEXTILES.</a></li>
									</ul>
									<div class="btn-more"><a href="/asset/images/2022-2023 MINI Lifestyel collection.pdf" target="_BLANK" class="button01 auto">MINI LIFESTYLE COLLECTION 더 알아보기</a>
									</div>
								</div>
								<div class="detail-list contents-data">
									<!-- Bags & Luggage -->
									<div class="contents-data-cell">
										<ul class="thumb_list0">
											<li>
												<div class="list_item_inner">
													<div>
														<div class="default_thumb">
															<img src="/asset/images/lifestyle/mini_lifestyle_bag_new_1.jpg" alt="">
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI TOW-TONE LOGO TRAVELLER BAG</p>
																<p class="size_info">소재 : Polyester / polyester (recycled PET)</p>
																<p class="size_info">크기 : 45 × 25 × 27cm </p>
																<!-- <p class="size_info">안감 : 100% polyester</p>
																<p class="size_info">색상 : British Green</p> -->
																<p class="long_info">Sage/Black</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>242,000</strong></p>
																<p class="price"><span>할인가 : </span><strong>193,000</strong></p>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div>
														<div class="default_thumb">
															<img src="/asset/images/lifestyle/mini_lifestyle_bag_new_2.jpg" alt="">
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI GRAPHIC SHOPPER</p>
															<p class="size_info">소재 : Waxed cotton</p>
															<p class="size_info">크기 : 40 × 40 × 14cm</p>
															<p class="long_info">Sage / Multi-colored</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>73,700</strong></p>
																<p class="price"><span>할인가 : </span><strong>58,000</strong></p>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div>
														<div class="default_thumb">
															<img src="/asset/images/lifestyle/mini_lifestyle_bag_new_3.jpg" alt="">
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI GRAPHIC DUFFLE BAG</p>
															<p class="size_info">소재 : Waxed cotton, Polyester</p>
															<p class="size_info">크기 : 45 × 27 × 27cm</p>
															<!-- <p class="size_info">안감 : 100% polyester</p>
															<p class="size_info">색상 : British Green</p> -->
															<p class="long_info">Sage / Multi-coloured</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>187,000</strong></p>
																<p class="price"><span>할인가 : </span><strong>149,000</strong></p>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_new_4_1.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_new_4_2.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI TONAL COLOUR BLOCK BACKPACK</p>
															<p class="size_info">소재 : Waxed cotton, Polyester</p>
															<p class="size_info">크기 : 23 × 16 × 35cm</p>
															<p class="long_info">Chili Red<br>Black</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>110,000</strong></p>
																<p class="price"><span>할인가 : </span><strong>88,000</strong></p>
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																	<a data-slide-index="0" href="" class="color-red active">Chili Red</a>
																	<a data-slide-index="1" href="" class="color-black">Black</a>
																</div>
																<!-- <span>White/Black</span> -->
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_new_5_1.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_new_5_2.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">JCW SAILOR BAG</p>
															<p class="size_info">소재 : Waxed cotton</p>
															<p class="size_info">크기 : 30 × 30 × 75cm</p>
															<p class="long_info">Black<br>Racing Green</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>240,000</strong></p>
																<p class="price"><span>할인가 : </span><strong>192,000</strong></p>
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																	<a data-slide-index="0" href="" class="color-black active"> Black</a>
																	<a data-slide-index="1" href="" class="color-green">Racing Green</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_new_6_1.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_new_6_2.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI TROLLEY</p>
															<p class="size_info">Wing logo : debossed</p>
															<p class="size_info">소재 : Polycarbonate, Polyester</p>
															<p class="size_info">크기 : 71 x 48.5 x 27.5cm</p>
															<p class="long_info">Chili Red<br>Black</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>260,000</strong></p>
																<p class="price"><span>할인가 : </span><strong>208,000</strong></p>
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																	<a data-slide-index="0" href="" class="color-red active">Chili Red</a>
																	<a data-slide-index="1" href="" class="color-black">Black</a>
																</div>
																<!-- <span>White/Black</span> -->
															</div>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<!-- Accessories -->
									<div class="contents-data-cell">
										<ul class="thumb_list0">
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_new_1_1.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_new_1_2.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI COLOURED BOTTLE OPENER KEYRING</p>
															<p class="size_info">소재 : Zinc alloy, electroplated</p>
															<p class="size_info">크기 : 7.6 × 4.8 × 0.5cm</p>
															<p class="long_info">Energetic Yellow<br>Grey</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>35,200</strong></p>
																<p class="price"><span>할인가 : </span><strong>28,000</strong></p>
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																	<a data-slide-index="0" href="" class="color-yellow active">Energetic Yellow</a>
																	<a data-slide-index="1" href="" class="color-gray">Grey</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_new_2_1.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_new_2_2.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI CONTRAST EDGE NOTEBOOK</p>
															<p class="size_info">소재 : Cloth-bound, Bookbinder fibreboard, Stone paper</p>
															<p class="size_info">크기 : 22 × 15.5 × 1.7cm</p>
															<p class="long_info">Chili Red / Island<br>Black / British Green</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>45,000</strong></p>
																<p class="price"><span>할인가 : </span><strong>36,000</strong></p>
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																	<a data-slide-index="0" href="" class="color-red-island active">Chili Red / Island</a>
																	<a data-slide-index="1" href="" class="color-black-green">Black / British Green</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="">
														<div class="default_thumb">
															<img src="/asset/images/lifestyle/mini_lifestyle_acc_new_3.jpg" alt="">
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI CAR CHARM</p>
															<p class="size_info">소재 : Leather (recycled)</p>
															<p class="size_info">크기 : 10 × 3.8cm</p>
															<p class="long_info">Black</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>67,100</strong></p>
																<p class="price"><span>할인가 : </span><strong>53,000</strong></p>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="">
														<div class="default_thumb">
															<img src="/asset/images/lifestyle/mini_lifestyle_acc_new_4.jpg" alt="">
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI BULLDOG CHARM</p>
															<p class="size_info">소재 : Leather (recycled)</p>
															<p class="size_info">크기 : 8 × 5.9cm </p>
															<p class="long_info">Black</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>67,100</strong></p>
																<p class="price"><span>할인가 : </span><strong>53,000</strong></p>
															</div>
														</div>
													</div>
												</div>
											</li>											
											<li>
												<div class="list_item_inner">
													<div class="">
														<div class="default_thumb">
															<img src="/asset/images/lifestyle/mini_lifestyle_acc_new_5.jpg" alt="">
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI GRAPHIC FOLDABLE UMBRELLA</p>
															<p class="size_info">소재 : Polyester (Recycled PET)</p>
															<p class="size_info">크기 : Folded : 27 x 6cm</p> 
															<p class="size_info">크기 : Diameter : 98cm</p>
															<p class="size_info">크기 : Handle : 5 x 4cm </p>
															<p class="long_info">Sage / Multi-coloured  </p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>67,100</strong></p>
																<p class="price"><span>할인가 : </span><strong>53,000</strong></p>
															</div>
														</div>
													</div>
												</div>
											</li>											
											<li>
												<div class="list_item_inner">
													<div class="">
														<div class="default_thumb">
															<img src="/asset/images/lifestyle/mini_lifestyle_acc_new_6.jpg" alt="">
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI GRAPHIC WALKING STICK UMBRELLA </p>
															<p class="size_info">소재 : Polyester (Recycled PET)</p>
															<p class="size_info">크기 : Length : 82.2cm</p>
															<p class="size_info">크기 : Diameter : 99.5cm</p>
															<p class="size_info">크기 : Handle : 13.5 x 3.3cm</p>   
															<p class="long_info">Sage / Multi-coloured</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>67,100</strong></p>
																<p class="price"><span>할인가 : </span><strong>53,000</strong></p>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_new_7_1.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_new_7_2.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI GRADIENT FOLDABLE UMBRELLA</p>
																<p class="size_info">소재 : Polyester (Recycled PET)</p>
																<p class="size_info">크기 : Folded : 27 x 6cm</p> 
																<p class="size_info">크기 : Diameter : 98cm</p>
																<p class="size_info">크기 : Handle : 5 x 4cm </p>
																<p class="long_info">Island / White / Black<br>Energetic Yellow / White / Grey  </p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>63,800</strong></p>
																<p class="price"><span>할인가 : </span><strong>51,000</strong></p>
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																	<a data-slide-index="0" href="" class="color-island-white active">Island / White / Black</a>
																	<a data-slide-index="1" href="" class="color-yellow-white">Energetic Yellow / White / Grey</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_new_8_1.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_new_8_2.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI GRADIENT WALKING STICK UMBRELLA </p>
																<p class="size_info">소재 : Polyester (Recycled PET)</p>
																<p class="size_info">크기 : Length : 82.2cm </p>
																<p class="size_info">크기 : Diameter : 99.5cm </p>
																<p class="size_info">크기 : Handle : 13.5 x 3.3cm   </p>  

																<p class="long_info">Island / White / Black<br>Energetic Yellow / White / Grey</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>63,800</strong></p>
																<p class="price"><span>할인가 : </span><strong>51,000</strong></p>
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																	<a data-slide-index="0" href="" class="color-island-white active">Island / White / Black</a>
																	<a data-slide-index="1" href="" class="color-yellow-white">Energetic Yellow / White / Grey</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<!-- MINIATURE -->
									<div class="contents-data-cell">
										<ul class="thumb_list0">
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_miniature_new_1_1.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_miniature_new_1_2.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_miniature_new_1_3.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI COOPER SE MINIATURE</p>
															<p class="size_info">소재 : Diecast</p>
															<p class="size_info">크기 : 1:18 Scale</p>
															<p class="long_info">White Silver<br>Chili Red<br>Island Blue</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>154,000</strong></p>
																<p class="price"><span>할인가 : </span><strong>123,000</strong></p>
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																	<a data-slide-index="0" href="" class="color-silver active">White Silver</a>
																	<a data-slide-index="1" href="" class="color-red">Chili Red</a>
																	<a data-slide-index="2" href="" class="color-Island">Island Blue</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_miniature_new_2_1.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_miniature_new_2_2.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_miniature_new_2_3.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI CONVERTIBLE COOPER S MINIATURE</p>
															<p class="size_info">소재 : Diecast  </p>
															<p class="size_info">크기 : 1:18 Scale </p>
															<p class="long_info">Zesty Yellow<br>Chili Red<br>Island Blue</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>154,000</strong></p>
																<p class="price"><span>할인가 : </span><strong>123,000</strong></p>
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																	<a data-slide-index="0" href="" class="color-yellow active">Zesty Yellow</a>
																	<a data-slide-index="1" href="" class="color-red">Chili Red</a>
																	<a data-slide-index="2" href="" class="color-Island">Island Blue</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="">
														<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_miniature_new_3.jpg" alt=""></div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI COOOPER S PULL-BACK</p>
															<p class="size_info">소재 : Diecast</p>
															<p class="size_info">크기 : 1:36 scale</p>
															<p class="long_info">Chili Red, Electric Blue, Volcanic Orange </p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>10,000</strong></p>
																<p class="price"><span>할인가 : </span><strong>8,000</strong></p>
															</div>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<!-- MOBILITY -->
									<div class="contents-data-cell">
										<ul class="thumb_list0">
											<li>
												<div class="list_item_inner">
													<div class="">
														<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_mobility_new_1.jpg" alt=""></div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI BABY RACER</p>
															<p class="size_info">소재 : Polyethylene body with polyamide injection parts   </p>
															<p class="size_info">크기 : 74 × 30 × 40cm  </p>
															<p class="long_info">Chili Red </p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>176,000</strong></p>
																<p class="price"><span>할인가 : </span><strong>140,000</strong></p>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="">
														<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_mobility_new_2.jpg" alt=""></div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI TRICYCLE</p>
															<p class="size_info">소재 : Steel with high impact resistant powder coating</p>
															<p class="size_info">크기 : 23 x 40 x 62cm </p>
															<p class="long_info">Chili Red</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>110,000</strong></p>
																<p class="price"><span>할인가 : </span><strong>88,000</strong></p>
															</div>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<!-- TEXTILES -->
									<div class="contents-data-cell">
										<ul class="thumb_list0">
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_1_1.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_1_2.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI TWO-TONE WORDMARK CAP</p>
															<p class="size_info">소재 : Polyester, Elastance</p>
															<p class="size_info">크기 : OS (57cm)</p>
															<p class="long_info">Sage<br>White</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>78,100</strong></p>
																<p class="price"><span>할인가 : </span><strong>62,000</strong></p>
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																	<a data-slide-index="0" href="" class="color-sega active">Sage</a>
																	<a data-slide-index="1" href="" class="color-white">White</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="">
														<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_2.jpg" alt=""></div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI TWO-TONE WING LOGO T-SHIRT WOMEN'S</p>
															<p class="size_info">소재 : 100% Cotton</p>
															<p class="size_info">크기 : XXS – XL</p>
															<p class="long_info">White/Black, Black/ White</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>62,700</strong></p>
																<p class="price"><span>할인가 : </span><strong>50,000</strong></p>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="">
														<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_3.jpg" alt=""></div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI TWO-TONE WING LOGO T-SHIRT MEN'S</p>
															<p class="size_info">소재 : 100% Cotton</p>
															<p class="size_info">크기 : S – XXXL</p>
															<p class="long_info">White/Black, Black/ White</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>62,700</strong></p>
																<p class="price"><span>할인가 : </span><strong>50,000</strong></p>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="">
														<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_4.jpg" alt=""></div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI STRIPED COLLAR POLO WOMEN'S</p>
															<p class="size_info">소재 : Cotton / Elastane</p>
															<p class="size_info">크기 : XXS – XL</p>
															<p class="long_info">Sage</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>106,700</strong></p>
																<p class="price"><span>할인가 : </span><strong>85,000</strong></p>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="">
														<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_5.jpg" alt=""></div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI STRIPED COLLAR POLO MEN'S</p>
															<p class="size_info">소재 : Cotton / Elastane</p>
															<p class="size_info">크기 : S – XXXL</p>
															<p class="long_info">Sage</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>106,700</strong></p>
																<p class="price"><span>할인가 : </span><strong>85,000</strong></p>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="">
														<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_6.jpg" alt=""></div>
														<div class="info_wrap no_price">
															<p class="list_title">JCW LOGO T-SHIRT WOMEN’S</p>
															<p class="size_info">소재 : 100% Cotton</p>
															<p class="size_info">크기 : XXS – M</p>
															<p class="long_info">White / Chili Red</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>40,000</strong></p>
																<p class="price"><span>할인가 : </span><strong>32,000</strong></p>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="">
														<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_7.jpg" alt=""></div>
														<div class="info_wrap no_price">
															<p class="list_title">JCW LOGO T-SHIRT MEN’S</p>
															<p class="size_info">소재 : 100% Cotton</p>
															<p class="size_info">크기 : S – L</p>
															<p class="long_info">White / Chili Red</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>40,000</strong></p>
																<p class="price"><span>할인가 : </span><strong>32,000</strong></p>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_8_1.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_8_2.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">JCW STRIPES T-SHIRT MEN’S</p>
															<p class="size_info">소재 : 100% Cotton</p>
															<p class="size_info">크기 : S – L</p>
															<p class="long_info">Black<br>Racing Green</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>44,000</strong></p>
																<p class="price"><span>할인가 : </span><strong>35,000</strong></p>
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																	<a data-slide-index="0" href="" class="color-black active">black</a>
																	<a data-slide-index="1" href="" class="color-green">green</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_9_1.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_9_2.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI 3D STRIPES WORDMARK T-SHIRT MEN´S</p>
															<p class="size_info">소재 : 100% Cotton</p>
															<p class="size_info">크기 : S – XXXL</p>
															<p class="long_info">White / Energetic Yellow / Black<br>Black / Energetic Yellow / White </p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>61,600</strong></p>
																<p class="price"><span>할인가 : </span><strong>49,000</strong></p>
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																	<a data-slide-index="0" href="" class="color-white-yellow active">White / Energetic Yellow / Black</a>
																	<a data-slide-index="1" href="" class="color-black-yellow">Black / Energetic Yellow / White</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_10_1.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_10_2.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI 3D CAR SWEATSHIRT KIDS</p>
															<p class="size_info">소재 : 100% Cotton</p>
															<p class="size_info">크기 : 98 – 140</p>
															<p class="long_info">Island / White / Black<br>Grey / Energetic Yellow / White </p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>82,500</strong></p>
																<p class="price"><span>할인가 : </span><strong>66,000</strong></p>
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																	<a data-slide-index="0" href="" class="color-island-white active">Island / White / Black</a>
																	<a data-slide-index="1" href="" class="color-gray-yellow">Grey / Energetic Yellow / White</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_11_1.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_11_2.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI LOOP WORDMARK SWEATSHIRT KIDS</p>
															<p class="size_info">소재 : 100% Cotton</p>
															<p class="size_info">크기 : 98 – 140</p>
															<p class="long_info">Chili Red / Island / Black<br>British Green / Black / White</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>82,500</strong></p>
																<p class="price"><span>할인가 : </span><strong>66,000</strong></p>
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																	<a data-slide-index="0" href="" class="color-red-island active">Chili Red / Island / Black</a>
																	<a data-slide-index="1" href="" class="color-green-black">British Green / Black / White</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- Lifestyle Mobile -->
						<div class="mobile">
							<div class="m_content1  container_big">
								<ul class="accordion-menu">
									<li>
										<a href="#">BAGS & LUGGAGE (6) <span></span></a>
										<!-- Bags & Luggage -->
										<div class="acoordion-data  slide_cell detail_list_wrap">
											<div class="list_item_inner">
												<div>
													<div class="default_thumb">
														<img src="/asset/images/lifestyle/mini_lifestyle_bag_new_1.jpg" alt="">
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI TOW-TONE LOGO TRAVELLER BAG</p>
															<p class="size_info">소재 : Polyester / polyester (recycled PET)</p>
															<p class="size_info">크기 : 45 × 25 × 27cm </p>
															<!-- <p class="size_info">안감 : 100% polyester</p>
															<p class="size_info">색상 : British Green</p> -->
															<p class="long_info">Sage/Black</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>242,000</strong></p>
															<p class="price"><span>할인가 : </span><strong>193,000</strong></p>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div>
													<div class="default_thumb">
														<img src="/asset/images/lifestyle/mini_lifestyle_bag_new_2.jpg" alt="">
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI GRAPHIC SHOPPER</p>
														<p class="size_info">소재 : Waxed cotton</p>
														<p class="size_info">크기 : 40 × 40 × 14cm</p>
														<p class="long_info">Sage / Multi-colored</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>73,700</strong></p>
															<p class="price"><span>할인가 : </span><strong>58,000</strong></p>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div>
													<div class="default_thumb">
														<img src="/asset/images/lifestyle/mini_lifestyle_bag_new_3.jpg" alt="">
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI GRAPHIC DUFFLE BAG</p>
														<p class="size_info">소재 : Waxed cotton, Polyester</p>
														<p class="size_info">크기 : 45 × 27 × 27cm</p>
														<!-- <p class="size_info">안감 : 100% polyester</p>
														<p class="size_info">색상 : British Green</p> -->
														<p class="long_info">Sage / Multi-coloured</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>187,000</strong></p>
															<p class="price"><span>할인가 : </span><strong>149,000</strong></p>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_new_4_1.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_new_4_2.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI TONAL COLOUR BLOCK BACKPACK</p>
														<p class="size_info">소재 : Waxed cotton, Polyester</p>
														<p class="size_info">크기 : 23 × 16 × 35cm</p>
														<p class="long_info">Chili Red<br>Black</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>110,000</strong></p>
															<p class="price"><span>할인가 : </span><strong>88,000</strong></p>
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																<a data-slide-index="0" href="" class="color-red active">Chili Red</a>
																<a data-slide-index="1" href="" class="color-black">Black</a>
															</div>
															<!-- <span>White/Black</span> -->
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_new_5_1.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_new_5_2.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">JCW SAILOR BAG</p>
														<p class="size_info">소재 : Waxed cotton</p>
														<p class="size_info">크기 : 30 × 30 × 75cm</p>
														<p class="long_info">Black<br>Racing Green</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>240,000</strong></p>
															<p class="price"><span>할인가 : </span><strong>192,000</strong></p>
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																<a data-slide-index="0" href="" class="color-black active"> Black</a>
																<a data-slide-index="1" href="" class="color-green">Racing Green</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_new_6_1.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_new_6_2.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI TROLLEY</p>
														<p class="size_info">Wing logo : debossed</p>
														<p class="size_info">소재 : Polycarbonate, Polyester</p>
														<p class="size_info">크기 : 71 x 48.5 x 27.5cm</p>
														<p class="long_info">Chili Red<br>Black</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>260,000</strong></p>
															<p class="price"><span>할인가 : </span><strong>208,000</strong></p>
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																<a data-slide-index="0" href="" class="color-red active">Chili Red</a>
																<a data-slide-index="1" href="" class="color-black">Black</a>
															</div>
															<!-- <span>White/Black</span> -->
														</div>
													</div>
												</div>
											</div>
											

										</div>
									</li>
									<li>
										<a href="#">ACCESSORIES (8) <span></span></a>
										<!-- Accessories -->
										<div class="acoordion-data  slide_cell detail_list_wrap">
											<div class="list_item_inner">
												<div class="thumb-swiper-slide">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_new_1_1.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_new_1_2.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI COLOURED BOTTLE OPENER KEYRING</p>
														<p class="size_info">소재 : Zinc alloy, electroplated</p>
														<p class="size_info">크기 : 7.6 × 4.8 × 0.5cm</p>
														<p class="long_info">Energetic Yellow<br>Grey</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>35,200</strong></p>
															<p class="price"><span>할인가 : </span><strong>28,000</strong></p>
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																<a data-slide-index="0" href="" class="color-yellow active">Energetic Yellow</a>
																<a data-slide-index="1" href="" class="color-gray">Grey</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_new_2_1.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_new_2_2.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI CONTRAST EDGE NOTEBOOK</p>
														<p class="size_info">소재 : Cloth-bound, Bookbinder fibreboard, Stone paper</p>
														<p class="size_info">크기 : 22 × 15.5 × 1.7cm</p>
														<p class="long_info">Chili Red / Island<br>Black / British Green</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>45,000</strong></p>
															<p class="price"><span>할인가 : </span><strong>36,000</strong></p>
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																<a data-slide-index="0" href="" class="color-red-island active">Chili Red / Island</a>
																<a data-slide-index="1" href="" class="color-black-green">Black / British Green</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="">
													<div class="default_thumb">
														<img src="/asset/images/lifestyle/mini_lifestyle_acc_new_3.jpg" alt="">
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI CAR CHARM</p>
														<p class="size_info">소재 : Leather (recycled)</p>
														<p class="size_info">크기 : 10 × 3.8cm</p>
														<p class="long_info">Black</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>67,100</strong></p>
															<p class="price"><span>할인가 : </span><strong>53,000</strong></p>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="">
													<div class="default_thumb">
														<img src="/asset/images/lifestyle/mini_lifestyle_acc_new_4.jpg" alt="">
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI BULLDOG CHARM</p>
														<p class="size_info">소재 : Leather (recycled)</p>
														<p class="size_info">크기 : 8 × 5.9cm </p>
														<p class="long_info">Black</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>67,100</strong></p>
															<p class="price"><span>할인가 : </span><strong>53,000</strong></p>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="">
													<div class="default_thumb">
														<img src="/asset/images/lifestyle/mini_lifestyle_acc_new_5.jpg" alt="">
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI GRAPHIC FOLDABLE UMBRELLA</p>
														<p class="size_info">소재 : Polyester (Recycled PET)</p>
														<p class="size_info">크기 : Folded : 27 x 6cm</p> 
														<p class="size_info">크기 : Diameter : 98cm</p>
														<p class="size_info">크기 : Handle : 5 x 4cm </p>
														<p class="long_info">Sage / Multi-coloured  </p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>67,100</strong></p>
															<p class="price"><span>할인가 : </span><strong>53,000</strong></p>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="">
													<div class="default_thumb">
														<img src="/asset/images/lifestyle/mini_lifestyle_acc_new_6.jpg" alt="">
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI GRAPHIC WALKING STICK UMBRELLA </p>
														<p class="size_info">소재 : Polyester (Recycled PET)</p>
														<p class="size_info">크기 : Length : 82.2cm</p>
														<p class="size_info">크기 : Diameter : 99.5cm</p>
														<p class="size_info">크기 : Handle : 13.5 x 3.3cm</p>   
														<p class="long_info">Sage / Multi-coloured</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>67,100</strong></p>
															<p class="price"><span>할인가 : </span><strong>53,000</strong></p>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_new_7_1.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_new_7_2.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI GRADIENT FOLDABLE UMBRELLA</p>
															<p class="size_info">소재 : Polyester (Recycled PET)</p>
															<p class="size_info">크기 : Folded : 27 x 6cm</p> 
															<p class="size_info">크기 : Diameter : 98cm</p>
															<p class="size_info">크기 : Handle : 5 x 4cm </p>
															<p class="long_info">Island / White / Black<br>Energetic Yellow / White / Grey  </p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>63,800</strong></p>
															<p class="price"><span>할인가 : </span><strong>51,000</strong></p>
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																<a data-slide-index="0" href="" class="color-island-white active">Island / White / Black</a>
																<a data-slide-index="1" href="" class="color-yellow-white">Energetic Yellow / White / Grey</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_new_8_1.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_new_8_2.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI GRADIENT WALKING STICK UMBRELLA </p>
															<p class="size_info">소재 : Polyester (Recycled PET)</p>
															<p class="size_info">크기 : Length : 82.2cm </p>
															<p class="size_info">크기 : Diameter : 99.5cm </p>
															<p class="size_info">크기 : Handle : 13.5 x 3.3cm   </p>  

															<p class="long_info">Island / White / Black<br>Energetic Yellow / White / Grey</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>63,800</strong></p>
															<p class="price"><span>할인가 : </span><strong>51,000</strong></p>
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																<a data-slide-index="0" href="" class="color-island-white active">Island / White / Black</a>
																<a data-slide-index="1" href="" class="color-yellow-white">Energetic Yellow / White / Grey</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											

										</div>
									</li>
									<li>
										<a href="#">MINIATURE (3) <span></span></a>
										<!-- MINIATURE -->
										<div class="acoordion-data  slide_cell detail_list_wrap">
											<div class="list_item_inner">
												<div class="thumb-swiper-slide">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_miniature_new_1_1.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_miniature_new_1_2.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_miniature_new_1_3.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI COOPER SE MINIATURE</p>
														<p class="size_info">소재 : Diecast</p>
														<p class="size_info">크기 : 1:18 Scale</p>
														<p class="long_info">White Silver<br>Chili Red<br>Island Blue</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>154,000</strong></p>
															<p class="price"><span>할인가 : </span><strong>123,000</strong></p>
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																<a data-slide-index="0" href="" class="color-silver active">White Silver</a>
																<a data-slide-index="1" href="" class="color-red">Chili Red</a>
																<a data-slide-index="2" href="" class="color-Island">Island Blue</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_miniature_new_2_1.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_miniature_new_2_2.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_miniature_new_2_3.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI CONVERTIBLE COOPER S MINIATURE</p>
														<p class="size_info">소재 : Diecast  </p>
														<p class="size_info">크기 : 1:18 Scale </p>
														<p class="long_info">Zesty Yellow<br>Chili Red<br>Island Blue</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>154,000</strong></p>
															<p class="price"><span>할인가 : </span><strong>123,000</strong></p>
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																<a data-slide-index="0" href="" class="color-yellow active">Zesty Yellow</a>
																<a data-slide-index="1" href="" class="color-red">Chili Red</a>
																<a data-slide-index="2" href="" class="color-Island">Island Blue</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="">
													<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_miniature_new_3.jpg" alt=""></div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI COOOPER S PULL-BACK</p>
														<p class="size_info">소재 : Diecast</p>
														<p class="size_info">크기 : 1:36 scale</p>
														<p class="long_info">Chili Red, Electric Blue, Volcanic Orange </p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>10,000</strong></p>
															<p class="price"><span>할인가 : </span><strong>8,000</strong></p>
														</div>
													</div>
												</div>
											</div>
											

										</div>
									</li>
									<li>
										<a href="#">MOBILITY (2) <span></span></a>
										<!-- MOBILITY -->
										<div class="acoordion-data  slide_cell detail_list_wrap">
											<div class="list_item_inner">
												<div class="">
													<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_mobility_new_1.jpg" alt=""></div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI BABY RACER</p>
														<p class="size_info">소재 : Polyethylene body with polyamide injection parts   </p>
														<p class="size_info">크기 : 74 × 30 × 40cm  </p>
														<p class="long_info">Chili Red </p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>176,000</strong></p>
															<p class="price"><span>할인가 : </span><strong>140,000</strong></p>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="">
													<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_mobility_new_2.jpg" alt=""></div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI TRICYCLE</p>
														<p class="size_info">소재 : Steel with high impact resistant powder coating</p>
														<p class="size_info">크기 : 23 x 40 x 62cm </p>
														<p class="long_info">Chili Red</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>110,000</strong></p>
															<p class="price"><span>할인가 : </span><strong>88,000</strong></p>
														</div>
													</div>
												</div>
											</div>
											

										</div>
									</li>
									<li>
										<a href="#">TEXTILES (11) <span></span></a>
										<!-- TEXTILES -->
										<div class="acoordion-data  slide_cell detail_list_wrap">
											<div class="list_item_inner">
												<div class="thumb-swiper-slide">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_1_1.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_1_2.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI TWO-TONE WORDMARK CAP</p>
														<p class="size_info">소재 : Polyester, Elastance</p>
														<p class="size_info">크기 : OS (57cm)</p>
														<p class="long_info">Sage<br>White</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>78,100</strong></p>
															<p class="price"><span>할인가 : </span><strong>62,000</strong></p>
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																<a data-slide-index="0" href="" class="color-sega active">Sage</a>
																<a data-slide-index="1" href="" class="color-white">White</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="">
													<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_2.jpg" alt=""></div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI TWO-TONE WING LOGO T-SHIRT WOMEN'S</p>
														<p class="size_info">소재 : 100% Cotton</p>
														<p class="size_info">크기 : XXS – XL</p>
														<p class="long_info">White/Black, Black/ White</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>62,700</strong></p>
															<p class="price"><span>할인가 : </span><strong>50,000</strong></p>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="">
													<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_3.jpg" alt=""></div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI TWO-TONE WING LOGO T-SHIRT MEN'S</p>
														<p class="size_info">소재 : 100% Cotton</p>
														<p class="size_info">크기 : S – XXXL</p>
														<p class="long_info">White/Black, Black/ White</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>62,700</strong></p>
															<p class="price"><span>할인가 : </span><strong>50,000</strong></p>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="">
													<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_4.jpg" alt=""></div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI STRIPED COLLAR POLO WOMEN'S</p>
														<p class="size_info">소재 : Cotton / Elastane</p>
														<p class="size_info">크기 : XXS – XL</p>
														<p class="long_info">Sage</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>106,700</strong></p>
															<p class="price"><span>할인가 : </span><strong>85,000</strong></p>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="">
													<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_5.jpg" alt=""></div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI STRIPED COLLAR POLO MEN'S</p>
														<p class="size_info">소재 : Cotton / Elastane</p>
														<p class="size_info">크기 : S – XXXL</p>
														<p class="long_info">Sage</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>106,700</strong></p>
															<p class="price"><span>할인가 : </span><strong>85,000</strong></p>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="">
													<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_6.jpg" alt=""></div>
													<div class="info_wrap no_price">
														<p class="list_title">JCW LOGO T-SHIRT WOMEN’S</p>
														<p class="size_info">소재 : 100% Cotton</p>
														<p class="size_info">크기 : XXS – M</p>
														<p class="long_info">White / Chili Red</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>40,000</strong></p>
															<p class="price"><span>할인가 : </span><strong>32,000</strong></p>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="">
													<div class="default_thumb"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_7.jpg" alt=""></div>
													<div class="info_wrap no_price">
														<p class="list_title">JCW LOGO T-SHIRT MEN’S</p>
														<p class="size_info">소재 : 100% Cotton</p>
														<p class="size_info">크기 : S – L</p>
														<p class="long_info">White / Chili Red</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>40,000</strong></p>
															<p class="price"><span>할인가 : </span><strong>32,000</strong></p>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_8_1.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_8_2.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">JCW STRIPES T-SHIRT MEN’S</p>
														<p class="size_info">소재 : 100% Cotton</p>
														<p class="size_info">크기 : S – L</p>
														<p class="long_info">Black<br>Racing Green</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>44,000</strong></p>
															<p class="price"><span>할인가 : </span><strong>35,000</strong></p>
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																<a data-slide-index="0" href="" class="color-black active">black</a>
																<a data-slide-index="1" href="" class="color-green">green</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_9_1.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_9_2.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI 3D STRIPES WORDMARK T-SHIRT MEN´S</p>
														<p class="size_info">소재 : 100% Cotton</p>
														<p class="size_info">크기 : S – XXXL</p>
														<p class="long_info">White / Energetic Yellow / Black<br>Black / Energetic Yellow / White </p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>61,600</strong></p>
															<p class="price"><span>할인가 : </span><strong>49,000</strong></p>
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																<a data-slide-index="0" href="" class="color-white-yellow active">White / Energetic Yellow / Black</a>
																<a data-slide-index="1" href="" class="color-black-yellow">Black / Energetic Yellow / White</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_10_1.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_10_2.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI 3D CAR SWEATSHIRT KIDS</p>
														<p class="size_info">소재 : 100% Cotton</p>
														<p class="size_info">크기 : 98 – 140</p>
														<p class="long_info">Island / White / Black<br>Grey / Energetic Yellow / White </p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>82,500</strong></p>
															<p class="price"><span>할인가 : </span><strong>36,000</strong></p>
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																<a data-slide-index="0" href="" class="color-island-white active">Island / White / Black</a>
																<a data-slide-index="1" href="" class="color-gray-yellow">Grey / Energetic Yellow / White</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_11_1.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_textiles_new_11_2.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI LOOP WORDMARK SWEATSHIRT KIDS</p>
														<p class="size_info">소재 : 100% Cotton</p>
														<p class="size_info">크기 : 98 – 140</p>
														<p class="long_info">Chili Red / Island / Black<br>British Green / Black / White</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>82,500</strong></p>
															<p class="price"><span>할인가 : </span><strong>66,000</strong></p>
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle">
																<a data-slide-index="0" href="" class="color-red-island active">Chili Red / Island / Black</a>
																<a data-slide-index="1" href="" class="color-green-black">British Green / Black / White</a>
															</div>
														</div>
													</div>
												</div>
											</div>

										</div>
									</li>
								</ul>
							</div>
							<div style="margin: 10px 20px">
								<div class="btn-more"><a href="/asset/images/2022-2023 MINI Lifestyel collection.pdf" class="button01 auto" target="_blank">MINI LIFESTYLE COLLECTION 더 알아보기</a></div>
							</div>
						</div>
					</div>
					
				</div>
			</section>	
		</section>	


        <p id="btn_top_scroll"><a href="javascript:gnb.goTop();"><img src="/asset/images/common/btn_top.gif" alt="top" width="48"/></a></p>
        
		<%@ include file="/WEB-INF/jsp/cmmn/include/footer.jspf" %>

     </div>
        <script src="/asset/js/common.js"></script> 
		<script>
		function sort_menu(index){

			$('.detail-menu').find('> ul > li').each(function(){
				if($(this).index() == index){
					$(this).addClass('actived');
				}else{
					$(this).removeClass('actived');
				}
			});
			$('.contents-data').find('.contents-data-cell').each(function(){
				if($(this).index() == index){
					$(this).addClass('actived').stop(true).fadeIn(350 , function(){
						sliderAllUpdate();	
					});
				}else{
					$(this).removeClass('actived').stop(true).hide();
				}
			});

		 }
		 var sliderArr = [];
		 function sliderAllUpdate(){
			 //console.log('slider Update');
			for(var i = 0; i < sliderArr.length; i++){
				sliderArr[i].autoplay.stop();
				sliderArr[i].update();
				sliderArr[i].updateProgress();
				sliderArr[i].slideTo(0,0);
				//sliderArr[i].autoplay.start();
			}

			setTimeout(function(){
				for(var i = 0; i < sliderArr.length; i++){
					//console.log(sliderArr[i]);
					sliderArr[i].autoplay.start();
				}
			} , 100);

		 }
		$(function(){
			var i = 0;
			$('.thumb-swiper-slide').each(function(){
				$(this).attr('data-swiper-index' , i);
				var _slide = new Swiper($(this).find('.swiper-container')[0], {
					speed : 450,
					autoplay:{
						delay:1000,
						autoDisableOnInteraction:true
					},
					loop:false,
					simulateTouch:true
				});
				
				_slide.on('slideChange' , function(){
					var _parents = $(this.$el).parents('.thumb-swiper-slide');
					_parents.find('.bx-pager-lifestyle a').eq(this.realIndex).addClass('active').siblings().removeClass('active');
					console.log(this.realIndex);
				});

				sliderArr.push(_slide);		
				i++;
			});

			$(document).on('click mouseenter mouseleave' , '.bx-pager-lifestyle a' , function(e){
				var parentIndex = $(this).parents('.thumb-swiper-slide').attr('data-swiper-index');
				var sliderIndex = $(this).attr('data-slide-index');
				if(e.type == 'click'){
					if($(this).parents('.thumb-swiper-slide').length > 0){
						sliderArr[parentIndex].slideTo(sliderIndex);
						$(this).addClass('active').siblings().removeClass('active');
						//console.log(sliderIndex);
					}
					return false;
				}else if(e.type == 'mouseenter'){
					sliderArr[parentIndex].autoplay.stop();
				}else if(e.type == 'mouseleave'){
					sliderArr[parentIndex].autoplay.start();
				}
			});
			sort_menu(0);

		});
		</script>
    </body>
</html>
