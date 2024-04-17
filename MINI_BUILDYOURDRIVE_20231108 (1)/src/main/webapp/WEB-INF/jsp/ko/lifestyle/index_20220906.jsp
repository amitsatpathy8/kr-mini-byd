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
                <div class="visual" style="border-bottom-color:#c9242c;"><img src="/asset/images/content/MINI-lifestyle_main.jpg" alt=""></div>
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
									</ul>
									<div class="btn-more"><a href="http://www.mini-buildyourdrive.co.kr/asset/images/2021-2022%20MINI%20Lifestyel%20collection_low.pdf" target="_BLANK" class="button01 auto">MINI LIFESTYLE COLLECTION 더 알아보기</a>
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
															<img src="/asset/images/lifestyle/mini_lifestyle_bag_01.jpg" alt="">
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI CONTRAST ZIPPER
																LAPTOP BAG</p>
																<p class="size_info">소재 : Polyester</p>
																<p class="size_info">크기 : 40 x 7 x 29.5cm</p>
																<!-- <p class="size_info">안감 : 100% polyester</p>
																<p class="size_info">색상 : British Green</p> -->
																<p class="long_info">Black with contrast zipper in Energetic Yellow and White</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>121,000</strong></p>
																<!-- <p class="price"><span>할인가 : </span><strong>96,800</strong></p> -->
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div>
														<div class="default_thumb">
															<img src="/asset/images/lifestyle/mini_lifestyle_bag_02.jpg" alt="">
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI CONTRAST ZIPPER
																SLING BAG</p>
																<p class="size_info">소재 : Polyester</p>
																<p class="size_info">크기 : 20 x 8 x 30cm</p>
																<p class="long_info">Black with contrast zipper in Energetic Yellow and White</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>96,800</strong></p>
																<!-- <p class="price"><span>할인가 : </span><strong>77,440</strong></p> -->
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div>
														<div class="default_thumb">
															<img src="/asset/images/lifestyle/mini_lifestyle_bag_02-5.jpg" alt="">
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI TONAL COLOUR
																BLOCK BACKPACK</p>
																<p class="size_info">소재 : Waxed cotton / Polyester</p>
																<p class="size_info">크기 : 23 x 16 x 35cm</p>
																<!-- <p class="size_info">안감 : 100% polyester</p>
																<p class="size_info">색상 : British Green</p> -->
																<p class="long_info">British Green</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>90,000</strong></p>
																<!-- <p class="price"><span>할인가 : </span><strong>72,000</strong></p> -->
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide" data-swiper-index="0">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_03a.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_03b.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_03c.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI TRICOLOUR BLOCK
																DUFFLE BAG</p>
																<p class="size_info">소재 : Waxed cotton, Polyester</p>
																<p class="size_info">크기 : 45 x 25 x 27cm</p>
																<p class="long_info">
																	White / Black / Energetic Yellow<br>
																	Chili Red / Black /Island<br>
																	Black / British Green / White</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>80,000</strong></p>
																<!-- <p class="price"><span>할인가 : </span><strong>64,800</strong></p> -->
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle color-p1-1">
																	<a data-slide-index="0" href="" class="active">White / Black / Energetic Yellow</a>
																	<a data-slide-index="1" href="" class="">Chili Red / Black /Island</a>
																	<a data-slide-index="2" href="" class="">Black / British Green / White</a>
																</div>
																<!-- <span>White/Black</span> -->
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide" data-swiper-index="1">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_04a.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_04b.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_04c.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI TRICOLOUR BLOCK
																SHOPPER</p>
																<p class="size_info">소재 : Waxed cotton</p>
																<p class="size_info">크기 : 40 x 40 x 14cm</p>
																<p class="long_info">
																	White / Black / Energetic Yellow<br>
																	Chili Red / Black / Island<br>
																	Black / British Green / White</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>35,000</strong></p>
																<!-- <p class="price"><span>할인가 : </span><strong>28,000</strong></p> -->
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle color-p1-2">
																	<a data-slide-index="0" href="" class="active">White / Black / Energetic Yellow</a>
																	<a data-slide-index="1" href="" class="">Chili Red / Black / Island</a>
																	<a data-slide-index="2" href="" class="">Black / British Green / White</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide" data-swiper-index="2">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_05a.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_05b.jpg" alt=""></div>
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
																<!-- <p class="price"><span>할인가 : </span><strong>208,000</strong></p> -->
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle color-p1-3">
																	<a data-slide-index="0" href="" class="active">Chili Red</a>
																	<a data-slide-index="1" href="" class="">Black</a>
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
													<div>
														<div class="default_thumb">
															<img src="/asset/images/lifestyle/mini_lifestyle_acc_01.jpg" alt="">
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI COLOUR BLOCK
																WATCH</p>
																<p class="size_info">소재 : Stainless steel, Leather</p>
																<p class="size_info">지름 : 33mm</p>
																<p class="long_info">White / Black</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>150,000</strong></p>
																<!-- <p class="price"><span>할인가 : </span><strong>120,000</strong></p> -->
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide" data-swiper-index="3">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_02a.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_02b.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_02c.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI CONTRAST PANEL
																FOLDABLE UMBRELLA</p>
																<p class="size_info">소재 : Polyester (Recycled PET)</p>
																<p class="size_info">크기 : 27 x 6cm</p>
																<p class="size_info">지름 : 98cm</p>
																<p class="long_info">White / Energetic Yellow<br>
																	Chili Red / Island<br>
																	Black / British Green</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>45,000</strong></p>
																<!-- <p class="price"><span>할인가 : </span><strong>36,000</strong></p> -->
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle color-p2-1">
																	<a data-slide-index="0" href="" class="active">White / Energetic Yellow</a>
																	<a data-slide-index="1" href="" class="">Chili Red / Island</a>
																	<a data-slide-index="2" href="" class="">Black / British Green</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide" data-swiper-index="4">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_03a.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_03b.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_03c.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI TRAVEL MUG</p>
																<p class="size_info">소재 : Soft-touch coated stainless steel,
																	BPA-free polymer</p>
																<p class="size_info">크기 : 7 x 7 x 14cm</p>
																<p class="size_info">용량 : 0.3L</p>
																<p class="long_info">White / Black<br>
																	Chili Red / Island / Black<br>
																	Black / British Green / White</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>25,000</strong></p>
																<!-- <p class="price"><span>할인가 : </span><strong>20,000</strong></p> -->
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle color-p2-2">
																	<a data-slide-index="0" href="" class="active">White / Energetic Yellow</a>
																	<a data-slide-index="1" href="" class="">Chili Red / Island</a>
																	<a data-slide-index="2" href="" class="">Black / British Green</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide" data-swiper-index="5">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_04a.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_04b.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_04c.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI COLOUR BLOCK
																ICE TEA MUG</p>
																<p class="size_info">소재 : BPA-free polymer</p>
																<p class="size_info">크기 : 8 x 8 x 19.4cm</p>
																<p class="size_info">용량 : 0.7L</p>
																<p class="long_info">
																	British Green<br>
																	Black<br>
																	Coral</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>25,000</strong></p>
																<!-- <p class="price"><span>할인가 : </span><strong>20,000</strong></p> -->
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle color-p2-3">
																	<a data-slide-index="0" href="" class="active">British Green</a>
																	<a data-slide-index="1" href="" class="">Black</a>
																	<a data-slide-index="2" href="" class="">Coral</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div class="thumb-swiper-slide" data-swiper-index="6">
														<div class="default_thumb">
															<div class="swiper-container">
																<div class="swiper-wrapper">
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_05a.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_05b.jpg" alt=""></div>
																	<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_05c.jpg" alt=""></div>
																</div>
															</div>
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI COLOUR BLOCK
																ICE TEA JUG</p>
																<p class="size_info">소재 : BPA-free polymer</p>
																<p class="size_info">크기 : 12.6 x 18.3 x 24.7cm</p>
																<p class="size_info">용량 : 2L</p>
																<p class="long_info">
																	British Green<br>
																	Black<br>
																	Coral</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>35,000</strong></p>
																<!-- <p class="price"><span>할인가 : </span><strong>28,000</strong></p> -->
															</div>
															<div class="bx-pager-wrap">
																<div id="bx-pager-m-3" class="bx-pager-lifestyle color-p2-3">
																	<a data-slide-index="0" href="" class="active">British Green</a>
																	<a data-slide-index="1" href="" class="">Black</a>
																	<a data-slide-index="2" href="" class="">Coral</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<!-- Miniature -->
									<div class="contents-data-cell">
										<ul class="thumb_list0">
											<li>
												<div class="list_item_inner">
													<div>
														<div class="default_thumb">
															<img src="/asset/images/lifestyle/mini_lifestyle_miniature_01.jpg" alt="">
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI CABRIO (F57)
																MINIATURE</p>
																<p class="size_info">소재 : Diecast</p>
																<p class="size_info">Scale : 1:18</p>
																<p class="long_info">Electric Blue</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>132,000</strong></p>
																<!-- <p class="price"><span>할인가 : </span><strong>105,600</strong></p> -->
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div>
														<div class="default_thumb">
															<img src="/asset/images/lifestyle/mini_lifestyle_miniature_02.jpg" alt="">
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI CONTRAST PANEL
																FOLDABLE UMBRELLA</p>
																<p class="size_info">소재 : Diecast</p>
																<p class="size_info">Scale : 1:36</p>
																<p class="long_info">
																	Chili Red<br>
																	Electric Blue<br>
																	Volcanic Orange</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>10,800</strong></p>
																<!-- <p class="price"><span>할인가 : </span><strong>8,000</strong></p> -->
															</div>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<!-- Mobility -->
									<div class="contents-data-cell">
										<ul class="thumb_list0">
											<li>
												<div class="list_item_inner">
													<div>
														<div class="default_thumb">
															<img src="/asset/images/lifestyle/mini_lifestyle_mobility_01.jpg" alt="">
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI BABY RACER</p>
																<p class="size_info">소재 : Polyethylene body with
																	polyamide injection parts</p>
																<p class="size_info">크기 : 74 x 30 x 40 cm</p>
																<p class="long_info">Chili Rede</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>165,000</strong></p>
																<!-- <p class="price"><span>할인가 : </span><strong>132,000</strong></p> -->
															</div>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="list_item_inner">
													<div>
														<div class="default_thumb">
															<img src="/asset/images/lifestyle/mini_lifestyle_mobility_02.jpg" alt="">
														</div>
														<div class="info_wrap no_price">
															<p class="list_title">MINI SKATEBOARD</p>
																<p class="size_info">소재 : Polypropylene, polyurethane</p>
																<p class="size_info">크기 : 57 x 15.3 x 13cm</p>
																<p class="long_info">Black / Red / White</p>
															<div class="mulity_price">
																<p class="price"><span>정상가 : </span><strong>140,000</strong></p>
																<!-- <p class="price"><span>할인가 : </span><strong>112,000</strong></p> -->
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
														<img src="/asset/images/lifestyle/mini_lifestyle_bag_01.jpg" alt="">
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI CONTRAST ZIPPER
															LAPTOP BAG</p>
															<p class="size_info">소재 : Polyester</p>
															<p class="size_info">크기 : 40 x 7 x 29.5cm</p>
															<!-- <p class="size_info">안감 : 100% polyester</p>
															<p class="size_info">색상 : British Green</p> -->
															<p class="long_info">Black with contrast zipper in Energetic Yellow and White</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>121,000</strong></p>
															<!-- <p class="price"><span>할인가 : </span><strong>96,800</strong></p> -->
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div>
													<div class="default_thumb">
														<img src="/asset/images/lifestyle/mini_lifestyle_bag_02.jpg" alt="">
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI CONTRAST ZIPPER
															SLING BAG</p>
															<p class="size_info">소재 : Polyester</p>
															<p class="size_info">크기 : 20 x 8 x 30cm</p>
															<p class="long_info">Black with contrast zipper in Energetic Yellow and White</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>96,800</strong></p>
															<!-- <p class="price"><span>할인가 : </span><strong>77,440</strong></p> -->
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div>
													<div class="default_thumb">
														<img src="/asset/images/lifestyle/mini_lifestyle_bag_02-5.jpg" alt="">
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI TONAL COLOUR
															BLOCK BACKPACK</p>
															<p class="size_info">소재 : Waxed cotton / Polyester</p>
															<p class="size_info">크기 : 23 x 16 x 35cm</p>
															<!-- <p class="size_info">안감 : 100% polyester</p>
															<p class="size_info">색상 : British Green</p> -->
															<p class="long_info">British Green</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>90,000</strong></p>
															<!-- <p class="price"><span>할인가 : </span><strong>72,000</strong></p> -->
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide" data-swiper-index="7">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_03a.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_03b.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_03c.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI TRICOLOUR BLOCK
															DUFFLE BAG</p>
															<p class="size_info">소재 : Waxed cotton, Polyester</p>
															<p class="size_info">크기 : 45 x 25 x 27cm</p>
															<p class="long_info">
																White / Black / Energetic Yellow<br>
																Chili Red / Black /Island<br>
																Black / British Green / White</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>80,000</strong></p>
															<!-- <p class="price"><span>할인가 : </span><strong>64,800</strong></p> -->
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle color-p1-1">
																<a data-slide-index="0" href="" class="active">White / Black / Energetic Yellow</a>
																<a data-slide-index="1" href="" class="">Chili Red / Black /Island</a>
																<a data-slide-index="2" href="" class="">Black / British Green / White</a>
															</div>
															<!-- <span>White/Black</span> -->
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide" data-swiper-index="8">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_04a.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_04b.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_04c.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI TRICOLOUR BLOCK
															SHOPPER</p>
															<p class="size_info">소재 : Waxed cotton</p>
															<p class="size_info">크기 : 40 x 40 x 14cm</p>
															<p class="long_info">
																White / Black / Energetic Yellow<br>
																Chili Red / Black / Island<br>
																Black / British Green / White</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>35,000</strong></p>
															<!-- <p class="price"><span>할인가 : </span><strong>28,000</strong></p> -->
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle color-p1-2">
																<a data-slide-index="0" href="" class="active">White / Black / Energetic Yellow</a>
																<a data-slide-index="1" href="" class="">Chili Red / Black / Island</a>
																<a data-slide-index="2" href="" class="">Black / British Green / White</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide" data-swiper-index="9">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_05a.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_bag_05b.jpg" alt=""></div>
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
															<!-- <p class="price"><span>할인가 : </span><strong>208,000</strong></p> -->
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle color-p1-3">
																<a data-slide-index="0" href="" class="active">Chili Red</a>
																<a data-slide-index="1" href="" class="">Black</a>
															</div>
															<!-- <span>White/Black</span> -->
														</div>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li>
										<a href="#">ACCESSORIES (5) <span></span></a>
										<!-- Accessories -->
										<div class="acoordion-data  slide_cell detail_list_wrap">
											<div class="list_item_inner">
												<div>
													<div class="default_thumb">
														<img src="/asset/images/lifestyle/mini_lifestyle_acc_01.jpg" alt="">
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI COLOUR BLOCK
															WATCH</p>
															<p class="size_info">소재 : Stainless steel, Leather</p>
															<p class="size_info">지름 : 33mm</p>
															<p class="long_info">White / Black</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>150,000</strong></p>
															<!-- <p class="price"><span>할인가 : </span><strong>120,000</strong></p> -->
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide" data-swiper-index="10">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_02a.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_02b.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_02c.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI CONTRAST PANEL
															FOLDABLE UMBRELLA</p>
															<p class="size_info">소재 : Polyester (Recycled PET)</p>
															<p class="size_info">크기 : 27 x 6cm</p>
															<p class="size_info">지름 : 98cm</p>
															<p class="long_info">White / Energetic Yellow<br>
																Chili Red / Island<br>
																Black / British Green</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>45,000</strong></p>
															<!-- <p class="price"><span>할인가 : </span><strong>36,000</strong></p> -->
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle color-p2-1">
																<a data-slide-index="0" href="" class="active">White / Energetic Yellow</a>
																<a data-slide-index="1" href="" class="">Chili Red / Island</a>
																<a data-slide-index="2" href="" class="">Black / British Green</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide" data-swiper-index="11">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_03a.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_03b.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_03c.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI TRAVEL MUG</p>
															<p class="size_info">소재 : Soft-touch coated stainless steel,
																BPA-free polymer</p>
															<p class="size_info">크기 : 7 x 7 x 14cm</p>
															<p class="size_info">용량 : 0.3L</p>
															<p class="long_info">White / Black<br>
																Chili Red / Island / Black<br>
																Black / British Green / White</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>25,000</strong></p>
															<!-- <p class="price"><span>할인가 : </span><strong>20,000</strong></p> -->
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle color-p2-2">
																<a data-slide-index="0" href="" class="active">White / Energetic Yellow</a>
																<a data-slide-index="1" href="" class="">Chili Red / Island</a>
																<a data-slide-index="2" href="" class="">Black / British Green</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide" data-swiper-index="12">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_04a.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_04b.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_04c.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI COLOUR BLOCK
															ICE TEA MUG</p>
															<p class="size_info">소재 : BPA-free polymer</p>
															<p class="size_info">크기 : 8 x 8 x 19.4cm</p>
															<p class="size_info">용량 : 0.7L</p>
															<p class="long_info">
																British Green<br>
																Black<br>
																Coral</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>25,000</strong></p>
															<!-- <p class="price"><span>할인가 : </span><strong>20,000</strong></p> -->
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle color-p2-3">
																<a data-slide-index="0" href="" class="active">British Green</a>
																<a data-slide-index="1" href="" class="">Black</a>
																<a data-slide-index="2" href="" class="">Coral</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div class="thumb-swiper-slide" data-swiper-index="13">
													<div class="default_thumb">
														<div class="swiper-container">
															<div class="swiper-wrapper">
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_05a.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_05b.jpg" alt=""></div>
																<div class="swiper-slide"><img src="/asset/images/lifestyle/mini_lifestyle_acc_05c.jpg" alt=""></div>
															</div>
														</div>
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI COLOUR BLOCK
															ICE TEA JUG</p>
															<p class="size_info">소재 : BPA-free polymer</p>
															<p class="size_info">크기 : 12.6 x 18.3 x 24.7cm</p>
															<p class="size_info">용량 : 2L</p>
															<p class="long_info">
																British Green<br>
																Black<br>
																Coral</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>35,000</strong></p>
															<!-- <p class="price"><span>할인가 : </span><strong>28,000</strong></p> -->
														</div>
														<div class="bx-pager-wrap">
															<div id="bx-pager-m-3" class="bx-pager-lifestyle color-p2-3">
																<a data-slide-index="0" href="" class="active">British Green</a>
																<a data-slide-index="1" href="" class="">Black</a>
																<a data-slide-index="2" href="" class="">Coral</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li>
										<a href="#">MINIATURE (2) <span></span></a>
										<!-- Miniature -->
										<div class="acoordion-data  slide_cell detail_list_wrap">
											<div class="list_item_inner">
												<div>
													<div class="default_thumb">
														<img src="/asset/images/lifestyle/mini_lifestyle_miniature_01.jpg" alt="">
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI CABRIO (F57)
															MINIATURE</p>
															<p class="size_info">소재 : Diecast</p>
															<p class="size_info">Scale : 1:18</p>
															<p class="long_info">Electric Blue</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>132,000</strong></p>
															<!-- <p class="price"><span>할인가 : </span><strong>105,600</strong></p> -->
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div>
													<div class="default_thumb">
														<img src="/asset/images/lifestyle/mini_lifestyle_miniature_02.jpg" alt="">
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI CONTRAST PANEL
															FOLDABLE UMBRELLA</p>
															<p class="size_info">소재 : Diecast</p>
															<p class="size_info">Scale : 1:36</p>
															<p class="long_info">
																Chili Red<br>
																Electric Blue<br>
																Volcanic Orange</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>10,800</strong></p>
															<!-- <p class="price"><span>할인가 : </span><strong>8,000</strong></p> -->
														</div>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li>
										<a href="#">MOBILITY (2) <span></span></a>
										<!-- Mobility -->
										<div class="acoordion-data  slide_cell detail_list_wrap">
											<div class="list_item_inner">
												<div>
													<div class="default_thumb">
														<img src="/asset/images/lifestyle/mini_lifestyle_mobility_01.jpg" alt="">
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI BABY RACER</p>
															<p class="size_info">소재 : Polyethylene body with
																polyamide injection parts</p>
															<p class="size_info">크기 : 74 x 30 x 40 cm</p>
															<p class="long_info">Chili Rede</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>165,000</strong></p>
															<!-- <p class="price"><span>할인가 : </span><strong>132,000</strong></p> -->
														</div>
													</div>
												</div>
											</div>
											<div class="list_item_inner">
												<div>
													<div class="default_thumb">
														<img src="/asset/images/lifestyle/mini_lifestyle_mobility_02.jpg" alt="">
													</div>
													<div class="info_wrap no_price">
														<p class="list_title">MINI SKATEBOARD</p>
															<p class="size_info">소재 : Polypropylene, polyurethane</p>
															<p class="size_info">크기 : 57 x 15.3 x 13cm</p>
															<p class="long_info">Black / Red / White</p>
														<div class="mulity_price1">
															<p class="price"><span>정상가 : </span><strong>140,000</strong></p>
															<!-- <p class="price"><span>할인가 : </span><strong>112,000</strong></p> -->
														</div>
													</div>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div style="margin: 10px 20px">
								<div class="btn-more"><a href="#" class="button01 auto">MINI LIFESTYLE COLLECTION 더 알아보기</a></div>
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
			$('.thumb-swiper-slide').each(function(){
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
