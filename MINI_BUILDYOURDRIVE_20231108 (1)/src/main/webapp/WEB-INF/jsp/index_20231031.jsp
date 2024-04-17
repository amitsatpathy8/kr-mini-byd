<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/cmmn/include/declare.jspf"%>
<%
  /**
  * @Class Name : index.jsp
  * @Description : 메인
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
		<link href="/asset/css/main.css" rel="stylesheet" />
		<script type="text/javascript">
		// <![CDATA[  
		    var accModelCd = "";
		    var fnAccDetail = function(_accModelCd,_index) {
		    	if ( _accModelCd != '' ) accModelCd = _accModelCd;
		    	
		    	location.href = "/accessories/index.do?pageId=" + accModelCd + "&pageNum="+ _index;
		    };
		    $(document).ready(function(){
		    	$("#model_motion").find('> ul > li > div').click(function(){
		    		accModelCd = $(this).attr("id");
		    	});
		    });	    
	     // ]]>
	     </script>          
		 <style>
		 .main_pop_table {width:100%;}
		.main_pop_table td { width:33%;font-size:13px;line-height:18px;}
		.main_pop_result {margin-top:20px;}
		.main_pop_result > div + div {margin-top:15px;}
		.main_pop_result h3 {font-size:14px; margin-bottom:10px;}
		@media only screen and (max-width: 768px) {
			.main_pop_table {width:100%;font-size: 9px;}
			.main_pop .main_pop_title{word-break:break-all;}
		}
		 </style>
	</head>
    <body>
    <div id="wrapper">

        <link href="/asset/css/swiper.min.css" rel="stylesheet" />
        <script src="/asset/js/swiper.min.js"></script>

		<%@ include file="/WEB-INF/jsp/cmmn/include/gnb.jspf" %>	
		
		<!-- <div class="main_pop" style="display: none">
			<p class="main_pop_title">Build Your Drive #FeelslikecampingwithMINI 캠페인<br>해시태그 이벤트 당첨자 발표.</p>			 
			<p class="main_pop_txt">Build Your Drive #FeelslikecampingwithMINI 캠페인의 해시태그 이벤트에 참여해주신 모든 고객님들께 진심으로 감사드립니다.<br>당첨되신 고객님들께는 MINI Korea 공식 인스타그램 계정을 통해 개별적으로 당첨 안내 DM이 발송되었습니다.</p>
			<p class="main_pop_txt">앞으로도 다양한 이벤트와 함께 찾아뵙겠으며, BMW 코리아는 고객님의 드라이빙이 편안하고 안전할 수 있도록, 언제나 최선을 다하겠습니다.</p>
			<p class="main_pop_txt">*공정한 당첨자 선정을 위해 이벤트 필수 조건(캠페인 기간 내 구매 제품 또는 사은품 촬영+해시태그 업로드)을 만족한 게시물 기준으로 선정이 진행되었습니다. 이에 선정 과정에서의 당첨 인원 및 경품 수량 변동이 발생하였으며, 이 점 고객님의 너른 양해 부탁드리겠습니다.</p>
			<p class="main_pop_txt">* 중복 당첨시 경품은 1개만 지급됩니다.</p>
			<div class="main_pop_result">
				<div class="result_group">
					<h3>1등 코오롱 오두막 8.8 면 텐트 (5명)</h3>
					<table class="main_pop_table">
						<body>
							<tr>
								<td>d******0</td>
								<td>i*********t</td>
								<td>s************3</td>
							</tr>
							<tr>
								<td>c*******i</td>
								<td>l*********8</td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="result_group">
					<h3>2등 B&O 블루투스 스피커 (7명)</h3>
					<table class="main_pop_table">
						<body>
							<tr>
								<td>k********g</td>
								<td>b**********a</td>
								<td>j*******7</td>
							</tr>
							<tr>
								<td>g**********2</td>
								<td>j*****e</td>
								<td>u******5</td>
							</tr>
							<tr>
								<td>i***********i</td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="result_group">
					<h3>3등 MINI Two-Tone Series (3명)</h3>
					<table class="main_pop_table">
						<body>
							<tr>
								<td>j****9</td>
								<td>m***********d</td>
								<td>s**********p</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<p class="main_pop_visual"><img src="/asset/images/content/main_pop_visual.jpg" alt=""></p>
			<p class="main_pop_view"><a href="/ko/hashtag/index.do" class="button03">이벤트 자세히 보기</a></p>
			
			<button type="button" class="btn_main_pop_close" onclick="$(this).parents('.main_pop').hide();"><span>닫기</span></button>
		</div> -->

		
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

        <section id="container">
			
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
				<p class="para-txt font-mini-serif">MINI ORIGINAL ACCESSORIES & LIFESTYLE CAMPAIGN.</p>
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
			<!-- container-fluid -->


            <div class="main_offer">
                <div class="title"><p>OFFERS</p></div>
                <div class="offer_list">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="slide_cell">
                                    <div>
										<div class="visual"><img src="/asset/images/content/main_offer_visual02_20201008.jpg" alt=""/></div>
		                                <div class="cell_title">ACCESSORIES.</div>
		                                <p class="info_txt">도로 위에서도 나만의 스타일을 표현할 수 있는<br>스포티한 감성과 최고의 기술력이 담긴<br>MINI 오리지널 액세서리.</p>
		                                <div class="btn_more"><p><a href="/accessories/index.do" class="button01">자세히 보기</a></p></div>
		                            </div>
		                        </div>
							</div>
					<!--
                    <div class="swiper-slide">
                        <div class="slide_cell"> 
                            <div>
                                <div class="visual"><img src="/asset/images/content/main_offer_visual022.jpg" alt=""/></div>
                                <div class="cell_title">FEELS LIKE CAMPING WITH MINI.</div>
                                <p class="info_txt">깊어가는 가을, 캠핑 떠나기 좋은 계절.<br>MINI 점검 혜택과 함께 캠핑을 준비해보세요. 특별 선물부터 추가 할인 혜택까지 고객님을 위해 준비된 혜택을 놓치지 마세요.</p>
                                <div class="btn_more"><p><a href="/ko/hashtag/index.do" class="button01">자세히 보기</a></p></div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="slide_cell">
                            <div>
                                <div class="visual"><img src="/asset/images/content/main_offer_visual03.jpg" alt=""/></div>
                                <div class="cell_title">SERVICE CENTER.</div>            
                                <p class="info_txt">가까운 MINI 서비스 센터를 찾아보세요.</p>                            
                                <div class="btn_more"><p><a href="/serviceCenter/index.do" class="button01">서비스 센터 찾기</a></p></div>
                            </div>
                        </div>  
					</div>
					-->

							<div class="swiper-slide">
		                        <div class="slide_cell"> 
		                            <div>
			                            <div class="visual"><img src="/asset/images/content/main_offer_visual01.jpg" alt=""/></div>
		                                <div class="cell_title">WHEEL &amp; TIRE.</div>
		                                <p class="info_txt">운전의 즐거움을 극대화시키는 기술력과 독특한 개성이 돋보이는 디자인으로 MINI만의 유니크한 드라이빙 스타일을 완성하는 MINI Wheel & Tire.</p>
										<div class="btn_more"><p><a href="/tire/index.do" class="button01">자세히 보기</a></p></div>
		                            </div>
		                        </div>
		                    </div>

							<div class="swiper-slide">
		                        <div class="slide_cell">
		                            <div>
		                                <div class="visual"><img src="/asset/images/content/main_offer_visual03_20201008.jpg" alt=""/></div>
		                                <div class="cell_title">MINI LIFESTYLE COLLECTION.</div>            
		                                <p class="info_txt">평범하고 무난한 일상을 특별하게 만들어 주는<br>스타일리시한 디자인과 유니크한 감성이 담긴<br>MINI 라이프스타일.</p>                            
		                                <div class="btn_more"><p><a href="/ko/lifestyle/index.do" class="button01">자세히 보기</a></p></div>
		                            </div>
		                        </div>  
		                    </div>
							<!-- <div class="swiper-slide">
		                        <div class="slide_cell"> 
		                            <div>
			                            <div class="visual"><img src="/asset/images/content/main_offer_visual04.jpg" alt=""/></div>
		                                <div class="cell_title">READY FOR WINTER.</div>
		                                <p class="info_txt">겨울철 내 MINI를 더욱 프리미엄하게 이용하는 방법 Winter Complete Wheel &amp; Tire Set.</p>
										<div class="btn_more"><p><a href="https://bit.ly/3C8TAIG" class="button01">자세히 보기</a></p></div>
		                            </div>
		                        </div>
		                    </div> -->
						</div>
						<div class="swiper-pagination"></div>
            		</div>
            		
            		
            <div class="mobile_offer container_big">
                <ul class="accordion-menu">

					<!--
                    <li>
                        <a href="javascript:;">FEELS LIKE CAMPING WITH MINI.<span></span></a>
                        <div class="acoordion-data slide_cell">
                            <div>
                                <div class="visual"><img src="/asset/images/content/main_offer_visual022.jpg" alt=""/></div>
                                <div class="cell_title">FEELS LIKE CAMPING WITH MINI.</div>
                                <p class="info_txt">깊어가는 가을, 캠핑 떠나기 좋은 계절.<br>MINI 점검 혜택과 함께 캠핑을 준비해보세요. 특별 선물부터 추가 할인 혜택까지 고객님을 위해 준비된 혜택을 놓치지 마세요.</p>
                                <div class="btn_more"><p><a href="/ko/hashtag/index.do" class="button01">자세히 보기</a></p></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="javascript:;">SERVICE CENTER.<span></span></a>
                        <div class="acoordion-data slide_cell">
                            <div>
                                <div class="visual"><img src="/asset/images/content/main_offer_visual03.jpg" alt=""/></div>
                                <div class="cell_title">SERVICE CENTER.</div>            
                                <p class="info_txt">가까운 MINI 서비스 센터를 찾아보세요.</p>                            
                                <div class="btn_more"><p><a href="/serviceCenter/index.do" class="button01">서비스 센터 찾기</a></p></div>
                            </div>
                        </div>
					</li>
					-->
					<li>
                        <a href="javascript:;">ACCESSORIES.<span></span></a>
                        <div class="acoordion-data slide_cell">
                            <div>
                                <div class="visual"><img src="/asset/images/content/main_offer_visual02_20201008.jpg" alt=""/></div>
                                <div class="cell_title">ACCESSORIES.</div>
                                <p class="info_txt">도로 위에서도 나만의 스타일을 표현할 수 있는<br>스포티한 감성과 최고의 기술력이 담긴<br>오리지널 MINI 액세서리.</p>
                                <div class="btn_more"><p><a href="/accessories/index.do" class="button01">자세히 보기</a></p></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="javascript:;">WHEEL &amp; TIRE.<span></span></a>
                        <div class="acoordion-data slide_cell">
                            <div>
                                <div class="visual"><img src="/asset/images/content/main_offer_visual01.jpg" alt=""/></div>
                                <div class="cell_title">WHEEL &amp; TIRE.</div>
								<!-- 161025 수정 -->
                                <p class="info_txt">운전의 즐거움을 극대화시키는 기술력과 독특한 개성이 돋보이는 디자인으로 MINI만의 유니크한 드라이빙 스타일을 완성하는 MINI Wheel & Tire.</p>
								<!-- 161025 수정 끝 -->
                                <div class="btn_more"><p><a href="/tire/index.do" class="button01">자세히 보기</a></p></div>
                            </div>
                        </div>
					</li>
                    <li>
                        <a href="javascript:;">MINI LIFESTYLE COLLECTION.<span></span></a>
                        <div class="acoordion-data slide_cell">
                            <div>
                                <div class="visual"><img src="/asset/images/content/main_offer_visual03_20201008.jpg" alt=""/></div>
                                <div class="cell_title">MINI LIFESTYLE COLLECTION.</div>            
                                <p class="info_txt">평범하고 무난한 일상을 특별하게 만들어 주는<br>스타일리시한 디자인과 유니크한 감성이 담긴<br>MINI 라이프스타일.</p>                            
                                <div class="btn_more"><p><a href="/ko/lifestyle/index.do" class="button01">자세히 보기</a></p></div>
                            </div>
                        </div>
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
        <script src="/asset/js/bootstrap.min.js"></script>
        <script src="/asset/js/main.js"></script> 
		<script src="/asset/js/clipboard.js"></script> 
		<script>
		var clipboard = new ClipboardJS('#copy_btn');
		clipboard.on("success",function(e){
			alert(' 클립보드에 복사되었습니다. ');
		});

		clipboard.on("error",function(e){
			hashCopy();
		});

		function hashCopy(){
			// 텍스트 복사 
			var agt = navigator.userAgent.toLowerCase();			
			var copyTxt = '#DrBMWweek  #BMW서비스  #MyBMWCare  #BMWImwithyou';
			var clipboardArea = document.getElementById( "clipboardArea" );
			clipboardArea.parentNode.style.display = "block"; 
		
			var textToClipboard = copyTxt; 
		
			var success = false; 
		
			if ( window.clipboardData ){ 
					window.clipboardData.setData ( "Text", textToClipboard ); 
					success = true; 
			} 
			else { 
					clipboardArea.value = textToClipboard; 
		
					var rangeToSelect = document.createRange(); 
		
					rangeToSelect.selectNodeContents( clipboardArea ); 
		
					var selection = window.getSelection(); 
					selection.removeAllRanges(); 
					selection.addRange( rangeToSelect ); 
		
					success = true; 
		
					try { 
						if ( window.netscape && (netscape.security && netscape.security.PrivilegeManager) ){ 
							netscape.security.PrivilegeManager.enablePrivilege( "UniversalXPConnect" ); 
						} 
						if ( agt.match(/iphone|ipad|ipod/i) == null ) { clipboardArea.select(); }
						success = document.execCommand( "copy", false, null ); 
					} 
					catch ( error ){ 
						success = false; 
						console.log( error ); 
					} 
			} 
		
			clipboardArea.parentNode.style.display = "none"; 
			clipboardArea.value = ""; 
		
			if ( success ){
				alert( ' 클립보드에 복사되었습니다. ' ); 
			} else {    
				var _text = prompt("아래의 URL을 길게 누르면 복사할 수 있습니다.", copyTxt);
				if(_text != null){
					alert( ' 클립보드에 복사되었습니다. ' )
				}				
			} 

		}

		</script>
    </body>
</html>
