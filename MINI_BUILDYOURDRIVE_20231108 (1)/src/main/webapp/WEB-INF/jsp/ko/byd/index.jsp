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
			<style>
				.font-mini-serif {
					font-family: 'MINI Serif';
				}
				.row {
					margin: 25px auto;
					width: 100%;
					display: flex;
				}
				.col-sm-3 {
					width: 23%;
					margin-right: 10px;
				}
				#container img{
					width: 100%;
				}
				.col-6 {width : 48%;margin: 0px auto;}
				.bg-img {
					background-image: url(/asset/images/content/byd_img/mini-byd-kv1.jpg);
					background-repeat: no-repeat;
					background-size: cover;
				}
				.text-div {
					padding-left: 60px;
					padding-top: 3%;
					padding-bottom: 30%;
					padding-right: 60px;
					font-weight: 600;
				}
				.text-div .head-text {
					font-size: 60px;
					color: #fff;
					font-family: 'NanumMyeongjo';
					line-height: 70px;
				}
				.text-div .head-para {
					font-size: 36px;
					color: #fff;
					line-height: 45px;
				}
				.para-txt {
					font-size: 30px;
					line-height: normal;
					margin-bottom: 15px;
					font-weight: 600;
					padding-top: 60px;
				}
				.table-striped tbody tr:nth-of-type(odd) {
					background-color: rgb(119 119 119 / 5%);
				}
				.table td, .table th {
					padding: 0.75rem;
					vertical-align: top;
					border-top: 1px solid #dee2e6;
				}
				.cust-container {
					width: 100%;
					max-width: 1200px;
					margin: 0 auto;
					position: relative;
				}
				.responsive-col6 .gallery {
					display: flex;
					justify-content: space-evenly;
					border:none;
					padding: 0;
				}
				.responsive-col6 {
					width: 45%;
					border: 1px solid #000;
					padding: 25px 25px 23px 25px;
				}
				.responsive-col6 .gallery a {
					text-decoration: none;
					color: #262626;
				}
				.responsive-col6 .gallery a.mini-floating {
					margin-right: 10px;
				}
				div.gallery img {
					width: 100%;
					height: auto;
				}
				
				div.desc {
					padding: 15px;
					text-align: center;
					font-weight: 600;
					font-size: 18px;
				}
				.desc-heading.font-mini-serif {
					font-size: 18px;
					font-weight: 600;
					text-align: center;
					padding-top: 10px;
				}
				.gallery {
					border: 1px solid #000;
					padding: 25px 25px 23px 25px;
				}
				.responsive {
					padding: 0 6px;
					float: left;
					width: 24.99999%;
				}
				.gallery-row {
					/* background-color: #f5eeee; */
					background-color: #f4f4f4;
					padding: 60px 50px;
					display: flex;
					justify-content: space-evenly;
				}
				
				
				.clearfix:after {
					content: "";
					display: table;
					clear: both;
				}
				.blue-cta {
					text-decoration: none;
					border-width: 0;
					cursor: pointer;
					margin: 0px 20px 10px  0;
					padding: 15px 50px;
					font-size: 16px;
					background-color: #1c69d4;
					border-color: #0653b6;
					color: #fff;
				}
				.blue-cta:hover{
					background-color: #0653b6;
				}
				.grey-cta {
					text-decoration: none;
					border-width: 0;
					cursor: pointer;
					margin: 0px 20px 10px  0;
					padding: 15px 50px;
					font-size: 16px;
					background-color: #4d4d4d;
					border-color: #262626;
					color: #fff;
				}
				.grey-cta:hover{
					background-color: #262626;
				}

				.table {
					width:100%;
					margin: 25px 0 25px 0;
					border-bottom: 1px solid #dee2e6
				}
				.container-fluid {
					width: 100%;
				}
				.container{
					margin: 40px 60px;
				}
				.table tbody tr th:first-child {
					width: 20%;
					text-align: left;
				}

				.disclamier ul li {
					font-size: 12px;
				}

				.disclamier ul li::marker {
					content: '*';
				}
				.card.card-bg, .card-title {
					margin-bottom: 25px;
					border-radius: 0px;
				}
				.card.card-bg {
					background-color: #e0e0e01a;
				}
				.card-subtitle {
					height: 60px;
					margin-bottom: 30px;
				}
				.title-head{
					font-size: 32px;
					font-weight: 300;
				}
				.card-title {
					font-size: 20px;
				}
				.col-card {
					display: flex;
					align-items: stretch;
				}

				@media only screen and (max-width: 700px) {
					.responsive {
					width: 49.99999%;
					margin: 6px 0;
					}
				}  
				@media only screen and (max-width: 500px) {
					.grey-cta,.blue-cta {
						width: 100%;
						text-align: center;
						margin: 15px auto;
						display: block;
						padding: 15px 0px;
					}
					.row {
						display: block;
					}
					.text-div .head-text {
						font-size: 34px!important;
						line-height: 36px!important;
					}
					.text-div .head-para {
						font-size: 20px!important;
						line-height: 26px!important;
						margin-bottom: 15px;
					}
					.bottom-color {
						height: 90px!important;
					}
					.text-div {
						margin-top: -95px!important;
					} 
				}
				@media only screen and (max-width:992px) and (min-width:768px){
					.text-div {
						padding-top: 1.5%;
					}
				}
				@media only screen and (max-width:1140px) and (min-width:768px){
					.text-div .head-text {
						font-size: 48px!important;
						margin-bottom: 16px!important;
						line-height: 54px;
					}
					.text-div .head-para {
						font-size: 24px!important;
						line-height: 32px!important;
					}
					.text-div {
						padding-left: 40px;
						padding-right: 40px;
					}
					.container {
						margin: 40px 40px;
					}
					.bottom-color {
						width: 670px;
						height: 25px;
						background: #652D42;
						margin-top: -38px;
					}
				}
				@media only screen and (min-width:1141px){
					.bottom-color {
						width: 835px;
						height: 25px;
						background: #652D42;
						margin-top: -24px;
					}
				}
				@media only screen and (min-width:768px){
					.bg-img-mob{
						display: none;
					}
				}
				@media screen and (max-width: 767px) {
					.disclamier {
						padding: 0px 10px;
					}
					.bg-img {
						display: none;
					}
					h2 {
						font-size: 32px;
						padding: 0px 20px;
					}
					.container {
						margin: 40px 15px;
					}
					.gallery-row {
						padding: 20px 10px;
						display: grid;
					}
					.responsive {
						margin: 0px;
						width: 100%;
						padding: 0 0 20px 0;
					}
					.responsive-col6 .gallery {
						display: inline-flex;
					justify-content: space-evenly;
					}
					.responsive-col6 {
						width: 100%;
					}
					.col-6 {
						width: 100%;
						margin-bottom: 20px;
					}
					.text-div .head-text {
						font-size: 33px;
						line-height: 40px;
						color: #000!important;
					}
					.bg-img-mob img {
						margin-bottom: 20px;
					}
					.text-div {
						padding-top: 0px;
						padding-left: 5px;
						padding-right: 10px;
						padding-bottom: 0px;
						margin-top: -70px;
						margin-left: 18px;
						font-weight: 600;
					} 
					.bottom-color {
						width: 15px;
						height: 67px;
						background: #652D42;
					}
					.text-div .head-para {
						font-size: 24px;
						line-height: 30px;
						color: #000!important;
					}
					.para-txt {
						font-size: 24px!important;
						line-height: 26px!important;
					}
					
				}
				@media only screen and (max-width:1300px) and (min-width:768px){
					.gallery-row {
						padding: 30px 15px;
					}
					.gallery, .responsive-col6 {
						padding: 15px 15px 13px 15px;
					}
				}
				@media only screen and (max-width:1099px) and (min-width:1025px){
					div.desc {
						padding: 15px 0;
						font-size: 16px;
					}
				}
				@media only screen and (max-width:1024px) and (min-width:768px){
					div.desc {
						padding: 15px 0;
						font-size: 12px;
					}
					.desc-heading.font-mini-serif {
						font-size: 14px;
					}
				}
				@media only screen and (max-width:991px) and (min-width:768px){
				}
				@media only screen and (min-width:1680px){
					.container-fluid {
						width: 100%;
						position: relative;
						max-width: 1680px;
						margin: 0 auto;
					}
					.container {
						width: 100%;
						position: relative;
						max-width: 1280px;
						margin: 50px auto;
					}
					.text-div{
						width: 100%;
						position: relative;
						max-width: 1280px;
						margin: 0 auto;
					}
				}

			</style>
			<div class="container-fluid">
				<div class="bg-img">
				  <div class="text-div">
					<div class="head-text"><span class="font-mini-serif">MINI</span>와 함께 일상을 즐기는 순간.</div>
					<div class="bottom-color"></div>
					<div class="head-para font-mini-serif">MINI BUILD YOUR DRIVE 2023.</div>
				  </div>
				  
				</div>
				<div class="bg-img-mob">
				  <img src="/asset/images/content/byd_img/MINI-BYD-KV_1040x1040.jpg" />
				  <div class="bottom-color"></div>
				  <div class="text-div">
					
					<div class="head-text"><span class="font-mini-serif">MINI</span>와 함께 일상을 즐기는 순간.</div>
					<div class="head-para font-mini-serif">MINI BUILD YOUR DRIVE 2023.</div>
				  </div>  
				</div>

			<div class="container">
				<p>드라이빙을 넘어 일상을 더욱 빛나게 만들어줄 <span class="font-mini-serif">MINI</span> 액세서리 & 라이프스타일.<br>
				지금 <span class="font-mini-serif">MINI BUILD YOUR DRIVE</span> 캠페인의 특별한 혜택을 만나보세요.</p>
				<table class="table">
				  <tbody>
					<tr>
					  <th scope="row">기간</th>
					  <td><span class="font-mini-serif">2023</span>년 <span class="font-mini-serif">11</span>월 <span class="font-mini-serif">1</span>일 <span class="font-mini-serif">~ 2023</span>년 <span class="font-mini-serif">11</span>월 <span class="font-mini-serif">30</span>일</td>
					</tr>
					<tr>
					  <th scope="row">대상</th>
					  <td><span class="font-mini-serif">MINI</span> 전 고객 대상 (연식 무관)</td>
					</tr>
					<tr>
					  <th scope="row">특별 혜택</th>
					  <td>
						<ul style="list-style-type:disc;padding-inline-start: 19px;">
							<li>
								<span class="font-mini-serif">MINI</span> 오리지널 액세서리 & 라이프스타일 제품 <span class="font-mini-serif">20%</span> 할인
							</li>
							<li>
								<span class="font-mini-serif">MINI</span> 오리지널 타이어 <span class="font-mini-serif">10%</span> 할인
							</li>
							<li>
							  액세서리 미러캡 커버 & 라이프스타일 가방류 <span class="font-mini-serif">30%</span> 할인
							</li>
						</ul>
					  </td>
					</tr>
					<tr>
					  <th scope="row">특별 이벤트</th>
					  <td>
						<ul style="list-style-type:disc;padding-inline-start: 19px;">
							<li>
								<span class="font-mini-serif">50</span>만 원 이상 구매 고객<span class="font-mini-serif"> MINI Air Starter Kit</span> 증정
							</li>
							<li>
							  타이어 <span class="font-mini-serif">4</span>본 구매 고객 <span class="font-mini-serif">MINI Trolley</span> 증정
							</li>
							<li>
								<span class="font-mini-serif">WCW</span> 매 고객 <span class="font-mini-serif">MINI Floating Hub Cap & MINI Valve Cap </span> 증정
							</li>
						</ul>
					  </td>
					</tr>
				  </tbody>
				</table>
				<p class="para-txt"><span class="font-mini-serif">MINI</span> 오리지널 액세서리 <span class="font-mini-serif">&</span> 라이프스타일 제품.</p>
				<div class="row">
				  <a class="blue-cta" href="https://www.mini-buildyourdrive.co.kr/accessories/index.do" target="_blank">오리지널 액세서리</a>
				  <a class="grey-cta" href="https://www.mini-buildyourdrive.co.kr/ko/lifestyle/index.do" target="_blank">오리지널 라이프스타일</a>
				</div>
				<!-- <p class="para-txt"><span class="font-mini-serif">MINI</span> 오리지널 타이어 <span class="font-mini-serif">10%</span> 할인</p>
				<div class="row">
				  <a class="blue-cta">오리지널 타이어 더 알아보기</a>
				</div> -->
				<p class="para-txt">미러캡 & 라이프스타일 가방류 30% 할인.</p>
				<div class="row">
				  
				  <div class="col-6">
					<img src="/asset/images/content/byd_img/2_600.jpg" />
					
				  </div>
				  <div class="col-6">
					<img src="/asset/images/content/byd_img/1_new_600.jpg" />
				  </div>
				</div>
				
				<div class="row">
					<div class="col-sm-12"></div>   
				</div>
				<p class="para-txt"><span class="font-mini-serif">MINI</span> 특별 이벤트를 만나보세요.</p>
				<div class="row">
				  <div class="gallery-row">
					<div class="responsive">
					  <div class="gallery">
						<div class="desc"><span class="font-mini-serif">50</span>만 원 이상 구매 고객</div>
						<a target="_blank" href="#">
						  
						  <img src="/asset/images/content/byd_img/MINI-Natural-Air-Starter-Kit_950x500.jpg" alt="Cinque Terre" width="600" height="400">
						</a>
						<div class="desc-heading font-mini-serif">MINI Air Starter Kit</div>
					  </div>
					</div>    
					
					<div class="responsive">
					  <div class="gallery">
						<div class="desc">타이어 <span class="font-mini-serif">4</span>본 구매 고객</div>
						<a target="_blank" href="#">
						  <img src="/asset/images/content/byd_img/MINI-Trolley_950x500.jpg" alt="Forest" width="600" height="400">
						</a>
						<div class="desc-heading font-mini-serif">MINI Trolley</div>
					  </div>
					</div>
					<div class="responsive-col6">
					  <div class="desc"><span class="font-mini-serif">WCW</span> 구매 고객</div>
					  <div class="gallery">
						
						<a target="_blank" class="mini-floating"  href="#">
						  <img src="/asset/images/content/byd_img/1.jpg" alt="Northern Lights" width="600" height="400">
						  <div class="desc-heading font-mini-serif">MINI Floating Hub </div>
						</a>
						<a target="_blank" href="#">
						  <img src="/asset/images/content/byd_img/2.jpg" alt="Northern Lights" width="600" height="400">
						  <div class="desc-heading font-mini-serif">MINI Valve Cap</div>
						</a>
						
					  </div>
					  
					</div>
					<!-- <div class="responsive">
					  <div class="gallery">
						<a target="_blank" href="#">
						  <img src="https://placehold.co/500x500" alt="Northern Lights" width="600" height="400">
						</a>
						<div class="desc">WCW 구매 시</div>
					  </div>
					</div>
					
					<div class="responsive">
					  <div class="gallery">
						<a target="_blank" href="#">
						  <img src="https://placehold.co/500x500" alt="Mountains" width="600" height="400">
						</a>
						<div class="desc">WCW 구매 시</div>
					  </div>
					</div> -->
				  </div>
				  
				</div>
				<div class="disclamier">
				  <ul style="padding-inline-start: 5px;">
					<li>구매 금액대별 사은품은 <span class="font-mini-serif">MINI</span> 오리지널 액세서리 및 라이프스타일 할인 후 공임을 제외한 금액을 합산하여 증정하며, 조기 소진 시 다른 제품으로 교체될 수 있습니다. (타이어 금액은 제외)             
					</li>
					<li>증정된 사은품은 교환 및 환불이 불가하며 캠페인 기간 내 입고 고객에 한하여, 부품만 수령할 수 없습니다.</li>
					<li>본 캠페인의 내용은 <span class="font-mini-serif">MINI Korea</span>의 사정으로 예고 없이 변경될 수 있으며 일부 항목에 한하여 딜러 서비스 센터 별 상이할 수 있으니 자세한 내용은 공식 딜러 서비스 센터로 문의하시기 바랍니다.
					</li>
				  </ul>
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
