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
	</head>
    <body>
    <div id="wrapper">

        <link href="/asset/css/swiper.min.css" rel="stylesheet" />
        <script src="/asset/js/swiper.min.js"></script>

		<%@ include file="/WEB-INF/jsp/cmmn/include/gnb.jspf" %>	
		
		<div class="main_pop" style="display: none">
			<p class="main_pop_title">FEELS LIKE CAMPING WITH MINI<br>해시태그 이벤트.</p>
			<p class="main_pop_txt">캠페인 구매품 혹은 사은품을 사진으로 찍어 인스타그램에 공유해주세요. 추첨을 통해 특별한 선물을 드립니다.</p>
			<p class="main_pop_txt">MINI와 함께하는 캠핑을 촬영하면 당첨 확률이 올라갑니다.</p>
			<p class="main_pop_visual"><img src="/asset/images/content/main_pop_visual.jpg" alt=""></p>
			<p class="main_pop_view"><a href="/ko/hashtag/index.do" class="button03">이벤트 자세히 보기</a></p>

			<button type="button" class="btn_main_pop_close" onclick="$(this).parents('.main_pop').hide();"><span>닫기</span></button>
		</div>

        <section id="container">
			
            <div class="main_large_teaser">
                <c:if test="${ not empty mainVO.imgPath }"><div class="visual" style="border-bottom-color:#0071ae;"><img src="/file/imageView.do?filePath=<c:out value="${ mainVO.imgPath }" />&fileNm=<c:out value="${ mainVO.imgRealNm }" />" alt="<c:out value="${ mainVO.imgOgNm }" />"/></div></c:if>

				<div class="txt_data">
					<div class="inner">
						<c:if test="${ mainVO != null }">
							<h3 class="headline">${ mainVO.sbjA }</h3>
							<h3 class="sub_headline">${ mainVO.sbjB }</h3>
						</c:if>
					</div>
				</div>
				<!--
                <div class="teaser_info container_big">
                    <div class="model_wrap">
							<div class="model_table">
							<c:if test="${ mainSkimVO.subSbjYn eq 'Y' }"><p class="txt">${ fnc:fnBr( mainSkimVO.subSbj) }</p></c:if>	
                        	<c:if test="${ mainSkimVO != null }">						
	                            <ul> 
	                                <c:if test="${ mainSkimVO.periodYn eq 'Y' }"><li><p class="title">기 간</p><c:out value="${ mainSkimVO.period }" /></li></c:if> 
	                                <c:if test="${ mainSkimVO.locationYn eq 'Y' }"><li><p class="title">장 소</p><c:out value="${ mainSkimVO.location }" /></li></c:if>
	                                <c:if test="${ mainSkimVO.targetYn eq 'Y' }"><li><p class="title">대 상</p><c:out value="${ mainSkimVO.target }" /></li></c:if>
	                                <c:if test="${ mainSkimVO.contsYn eq 'Y' }"><li><p class="title">내 용</p>${ fnc:fnBr( mainSkimVO.conts ) }</li></c:if>                                
	                                <c:if test="${ mainSkimVO.benefitYn eq 'Y' }"><li><p class="title">혜 택</p>${ fnc:fnBr( mainSkimVO.benefit) }<br>
	                               > <a href="https://minilifestyle.co.kr">MINI 라이프스타일 사이트 바로가기</a></li></c:if>
	                                <c:if test="${ mainSkimVO.noteYn eq 'Y' }"><li><p class="title">비 고</p>${ fnc:fnBr( mainSkimVO.note) }</li></c:if>
	                            </ul>
							</c:if>
	                        </div>
						
						
                        <div id="model_motion" class="model_list">
                            <div class="title"><p>MODELS</p></div>
                            <ul>
                            	<c:forEach var="result" items="${ modelList }" varStatus="status">
	                                <li>
	                                    <div class="cell" id="<c:out value="${ result.modelCd }" />" onclick="checkModelList();">                                        
	                                        <div class="thumb"><img src="/file/imageView.do?filePath=<c:out value="${ result.mainImgPath }" />&fileNm=<c:out value="${ result.mainImgRealNm }" />" /></div>
	                                        <p class="name"><c:out value="${ result.modelNm }" /></p>
	                                        <p class="btn_more"><a href="#" onclick="javascript:fnAccDetail('<c:out value="${ result.modelCd }" />', ${ status.index }); return false;" class="button01">자세히 보기</a></p>
	                                    </div>
	                                </li>                            	
                            	</c:forEach>
                            </ul>                            
                            <p class="btn_all"><a href="#" onclick="javascript:fnAccDetail(''); return false;" class="button01">자세히 보기</a></p>
                        </div>
						
                    </div>
                </div>
				-->
				
                <div class="teaser_info container_small">
					<div class="teaser_info_cell main_table_copy">
						<p class="headerline">FEELS LIKE CAMPING WITH MINI.</p>
						<p class="txt">깊어가는 가을, 캠핑 떠나기 좋은 계절.<br>MINI 점검 혜택과 함께 캠핑을 준비해보세요.<br>특별 선물부터 추가 할인 혜택까지 고객님을 위해 준비된 혜택을 놓치지 마세요.</p>
						<div class="model_wrap model_grid">
							<div class="model_table">
								<ul> 
									<li><p class="title">기 간</p>2020년 10월 12일 - 11월 28일 (7주간)</li>
									<li><p class="title">장 소</p>전국 MINI 공식 딜러 서비스 센터</li>
									<li><p class="title">대 상</p>MINI 전 모델 (연식 무관)</li>
									<li><p class="title">혜 택</p>
										<p class="benefit_title2">오리지널 MINI 액세서리 & 라이프스타일 20% 할인</p>
										<p class="benefit_title2">타이어, 브레이크 & 서스펜션 3종 점검 프로그램</p>
										<ul class="line-txt-list">
											<li>JCW Pro Sport Brakes / JCW Pro Sport Suspension 25% 할인</li>
											<li>일반 브레이크 패드 / 디스크 & 서스펜션 20% 할인</li>
											<li>오리지널 MINI 타이어 10% 할인, 100만원 이상 타이어 교체 시 15% 할인</li>
											<li>점검 후 캠페인 제품 구매 시 MINI 페이퍼 디퓨저 증정</li>
										</ul>
										<p class="benefit_title2">오리지널 MINI 액세서리 & 라이프스타일 구매 금액별 사은품 증정</p>
									</li>
								</ul>
							</div>
							<div class="model_table_visual"><img src="/asset/images/content/main_week_visual_20201003.jpg" alt=""/></div>
						</div>						
					</div>

					<div class="teaser_info_cell main_event">

						<div class="square_box_item_list">
							<div class="square_box_item_list_inner">
								<div class="square_box_item_list_cell">
									<div class="square_box_item_list_data">
										<div class="square_box_item_thumb"><img src="/asset/images/content/main_event_benefit_01.jpg" alt=""></div>
										<div class="square_box_item_txt">휴대용 MINI LED 램프<br><strong>25만원 이상 구매 시</strong></div>
									</div>
								</div>
								<div class="square_box_item_list_cell">
									<div class="square_box_item_list_data">
										<div class="square_box_item_thumb"><img src="/asset/images/content/main_event_benefit_02.jpg" alt=""></div>
										<div class="square_box_item_txt">MINI 캠핑 테이블<br><strong>100만원 이상 구매 시</strong></div>
									</div>
								</div>
								<div class="square_box_item_list_cell">
									<div class="square_box_item_list_data">
										<div class="square_box_item_thumb"><img src="/asset/images/content/main_event_benefit_03.jpg" alt=""></div>
										<div class="square_box_item_txt">MINI 릴렉스 체어<br><strong>200만원 이상 구매 시</strong></div>
									</div>
								</div>
							</div>
						</div>
						<ul class="dot_list_small">
							<li><strong>325만원 이상 구매 시</strong> MINI LED 램프 + MINI 캠핑 테이블 + MINI 릴렉스 체어 모두 증정</li>
						</ul>
					</div>
					<div class="teaser_info_cell main_event_detail">
						<h3 class="con_title">FEELS LIKE CAMPING WITH MINI<br>해시태그 이벤트.</h3>
						<div class="event_15th_process">
							
							<div class="event_15th_process_quiz mobile-block">
								<div class="visual"><img src="/asset/images/content/event_15th_quiz_visual.jpg?v=2020082702" alt=""/></div>
							</div>
							<div class="event_15th_process_inner">
								<ol>
									<li>
										<div class="process_item">
											<div class="process_item_icon"><img src="/asset/images/content/15th_event_process_icon_01.png" alt=""></div>
											<div class="process_item_data">
												<div class="data_inner">
													<div class="process_item_title"><em>1.</em>캠페인 구매품 혹은 사은품을 촬영해주세요.<br>(캠핑 사진을 올리면 당첨확률 UP!)</div>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="process_item">
											<div class="process_item_icon"><img src="/asset/images/content/15th_event_process_icon_02.png" alt=""></div>
											<div class="process_item_data">
												<div class="data_inner">
													<div class="process_item_title">
														<em>2.</em>인스타그램 계정에 필수 해시태그와 함께 <br class="mobileEnter">업로드해주세요.</br><br>필수 해시태그<br><span class="hash-word" style="word-break:break-all;">#FeelslikecampingwithMINI #BuildYourDrive</span>
														<button type="button" id="copy_btn" class="button03" style="margin-top:10px;" data-clipboard-action="copy" data-clipboard-text="#FeelslikecampingwithMINI #BuildYourDrive"><span>해시태그 복사</span></button>
													</div>
													<div style="display: none;"><textarea id="clipboardArea"></textarea></div>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="process_item">
											<div class="process_item_icon"><img src="/asset/images/content/15th_event_process_icon_03.png" alt=""></div>
											<div class="process_item_data">
												<div class="data_inner">
													<div class="process_item_title"><em>3.</em>추첨을 통해 다양한 선물을 드립니다.</div>
												</div>
											</div>
										</div>
									</li>
								</ol>
							</div>
							
							<div class="event_15th_process_quiz pc-block">
								<div class="visual"><img src="/asset/images/content/event_15th_quiz_visual.jpg?v=2020082702" alt=""/></div>
							</div>
						</div>	
						<div class="benefit_items">	
							<dl class="benefit_items_cell">
								<dt>이벤트 추첨 경품</dt>
								<dd>코오롱 면 텐트 (100만원 상당, 5명) / <br class="mobileEnter">Bang & Olufsen 블루투스 스피커 BEOLIT17 (색상 랜덤 증정, 7명) / MINI 투톤 트래블러 백 (10명) / MINI 드라이빙 센터 바우처 (Starter Pack, 5명) / 스타벅스 기프트콘 (아메리카노, 100명)</dd>
							</dl>
							<dl class="benefit_items_cell">
								<dt>이벤트 추첨일</dt>
								<dd>2020년 12월 04일 (금)</dd>
							</dl>
						</div>
					</div>
					<!-- 
					<div class="teaser_info_cell main_plus_app">
						<p class="headerline">MINI PLUS APP.</p>
						<div class="mini_pluss_app">
						<p class="code_img"><img src="/asset/images/content/mini_qr_code.jpg" alt=""/></p>
					-->
							<!--
							<p class="txt">캠페인 기간동안 MINI Plus 어플리케이션을 통해 예약 및 입고하신 후 인보이스가 발행된 고객님께 MINI 우산을 선물로 드립니다.</p>
							
							<ul class="dot_list_small">
								<li>캠페인 기간동안, MINI Plus App 예약 항목으로 입고 후 수리를 완료해주신 고객 대상 MINI 우산 증정.</li>
								<li>오일 & 필터 캠페인 2020 포함 모든 온라인 예약 가능 항목 시 혜택 적용.</li>
							</ul>
							-->
					<!--
							<p class="code_link"><a href="http://bit.ly/_mini_plus" target="_blank" class="">* App store 바로가기</a></p>
						</div>
						<p class="obj"><img src="/asset/images/content/mini_oil_main_visual_obj02.jpg" alt=""/></p>
					</div>
					-->
                </div>
            </div>
			
			
			
			<!--
			<div class="main_large_teaser">
                <div class="visual" style="border-bottom-color:#0071ae;"><img src="/asset/images/content/main_visual_20201003.jpg" alt=""/></div>
                <div class="teaser_info container_small">
					<div class="teaser_info_cell">
						<p class="headerline">FEELS LIKE CAMPING WITH MINI.</p>
						<div class="model_wrap">
							<div class="model_table">
								<p class="txt">깊어가는 가을, 캠핑 떠나기 좋은 계절.<br>MINI 점검 혜택과 함께 캠핑을 준비해보세요. 특별 선물부터 추가 할인 혜택까지 고객님을 위해 준비된 혜택을 놓치지 마세요.</p>
								<ul> 
									<li><p class="title">기 간</p>2020년 10월 12일 - 11월 28일 (7주간)</li>
									<li><p class="title">장 소</p>전국 MINI 공식 딜러 서비스 센터</li>
									<li><p class="title">대 상</p>MINI 전 모델 (연식 무관)</li>
									<li><p class="title">혜 택</p>
										<p class="benefit_title2">오리지널 MINI 액세서리 & 라이프스타일 20% 할인</p>
										<p class="benefit_title2">타이어, 브레이크 & 서스펜션 3종 점검 프로그램</p>
										<ul class="line-txt-list">
											<li>JCW Pro Sport Brakes / JCW Pro Sport Suspension 25% 할인</li>
											<li>일반 브레이크 패드 / 디스크 & 서스펜션 20% 할인</li>
											<li>오리지널 MINI 타이어 10% 할인, 100만원 이상 타이어 교체 시 15% 할인</li>
											<li>점검 후 캠페인 제품 구매 시 MINI 페이퍼 디퓨저 증정</li>
										</ul>
										<p class="benefit_title2">오리지널 MINI 액세서리 & 라이프스타일 구매 금액별 사은품 증정</p>
									</li>
								</ul>
							</div>
						</div>
						<p class="obj"><img src="/asset/images/content/main_week_visual_20201003.jpg" alt=""/></p>
					</div>

					<div class="teaser_info_cell main_event">

						<div class="square_box_item_list">
							<div class="square_box_item_list_inner">
								<div class="square_box_item_list_cell">
									<div class="square_box_item_list_data">
										<div class="square_box_item_thumb"><img src="/asset/images/content/main_event_benefit_01.jpg" alt=""></div>
										<div class="square_box_item_txt">휴대용 MINI LED 램프<br><strong>25만원 이상 구매 시</strong></div>
									</div>
								</div>
								<div class="square_box_item_list_cell">
									<div class="square_box_item_list_data">
										<div class="square_box_item_thumb"><img src="/asset/images/content/main_event_benefit_02.jpg" alt=""></div>
										<div class="square_box_item_txt">MINI 캠핑 테이블<br><strong>100만원 이상 구매 시</strong></div>
									</div>
								</div>
								<div class="square_box_item_list_cell">
									<div class="square_box_item_list_data">
										<div class="square_box_item_thumb"><img src="/asset/images/content/main_event_benefit_03.jpg" alt=""></div>
										<div class="square_box_item_txt">MINI 릴렉스 체어<br><strong>200만원 이상 구매 시</strong></div>
									</div>
								</div>
							</div>
						</div>
						<ul class="dot_list_small">
							<li><strong>325만원 이상 구매 시</strong> MINI LED 램프 + MINI 캠핑 테이블 + MINI 릴렉스 체어 모두 증정</li>
						</ul>
					</div>

					<div class="teaser_info_cell">
						<p class="headerline">MINI PLUS APP.</p>
						<div class="mini_pluss_app">
						<p class="code_img"><img src="/asset/images/content/mini_qr_code.jpg" alt=""/></p>
							<p class="code_link"><a href="http://bit.ly/_mini_plus" target="_blank" class="">* App store 바로가기</a></p>
						</div>
						<p class="obj"><img src="/asset/images/content/mini_oil_main_visual_obj02.jpg" alt=""/></p>
					</div>
                </div>
            </div>
			-->


            <div class="main_offer">
                <div class="title"><p>OFFERS</p></div>
                <div class="offer_list">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="slide_cell">
                                    <div>
                                        <div class="visual"><img src="/asset/images/content/main_offer_visual01.jpg" alt=""/></div>
                                        <div class="cell_title">WHEEL &amp; TIRE.</div>
										<!-- 161025 수정 -->
                                         <p class="info_txt">운전의 즐거움을 극대화시키는 기술력과 독특한 개성이 돋보이는 디자인으로 MINI만의 유니크한 드라이빙 스타일을 완성하는 MINI Wheel & Tire.</p>
										<!-- 161025 수정 끝 -->
                                <div class="btn_more"><p><a href="/tire/index.do" class="button01">자세히 보기</a></p></div>
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
                                <div class="visual"><img src="/asset/images/content/main_offer_visual02_20201008.jpg" alt=""/></div>
                                <div class="cell_title">ACCESSORIES.</div>
                                <p class="info_txt">도로 위에서도 나만의 스타일을 표현할 수 있는<br>스포티한 감성과 최고의 기술력이 담긴<br>오리지널 MINI 액세서리.</p>
                                <div class="btn_more"><p><a href="/accessories/index.do" class="button01">자세히 보기</a></p></div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="slide_cell">
                            <div>
                                <div class="visual"><img src="/asset/images/content/main_offer_visual03_20201008.jpg" alt=""/></div>
                                <div class="cell_title">LIFESTYLE.</div>            
                                <p class="info_txt">평범하고 무난한 일상을 특별하게 만들어 주는<br>스타일리시한 디자인과 유니크한 감성이 담긴<br>MINI 라이프스타일.</p>                            
                                <div class="btn_more"><p><a href="http://www.mini-buildyourdrive.co.kr/asset/images/2020-2021 MINI Lifestyle_collection_K_F_low.pdf" target="_BLANK" class="button01">자세히 보기</a></p></div>
                            </div>
                        </div>  
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <div class="mobile_offer container_big">
                <ul class="accordion-menu">
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
                        <a href="javascript:;">LIFESTYLE.<span></span></a>
                        <div class="acoordion-data slide_cell">
                            <div>
                                <div class="visual"><img src="/asset/images/content/main_offer_visual03_20201008.jpg" alt=""/></div>
                                <div class="cell_title">LIFESTYLE.</div>            
                                <p class="info_txt">평범하고 무난한 일상을 특별하게 만들어 주는<br>스타일리시한 디자인과 유니크한 감성이 담긴<br>MINI 라이프스타일.</p>                            
                                <div class="btn_more"><p><a href="http://www.mini-buildyourdrive.co.kr/asset/images/2019 MINI Life_Bro_MS_low.pdf" target="_BLANK" class="button01">서비스 센터 찾기</a></p></div>
                            </div>
                        </div>
					</li>
                </ul>
            </div>
        </div>  
    </div>
     <div class="bottom_info container_small">
			<ul>  
				<li><em>*</em>공임은 할인 제외됩니다.</li>
				<li><em>*</em>MINI 페이퍼 디퓨저 증정 캠페인 항목은 타이어, 브레이크 패드 / 디스크 & 서스펜션 혹은 액세서리 중 공임이 포함된 상품 구매 고객을 의미합니다.</li>
				<li><em>*</em>구매 금액 별 캠페인 사은품은 한 차대당 1개만 지급됩니다. 예) 150만원 구매고객, 휴대용 MINI LED 램프와 MINI 캠핑 테이블 중복 수령 불가</li>
				<li><em>*</em>사은품은 오리지널 MINI 액세서리 및 라이프스타일 (오리지널 MINI 타이어 및 일반 브레이크 패드 / 디스크 & 서스펜션 제외) 할인 후 공임을 제외한 금액을 합산하여 증정하며, 조기 소진 시 다른 제품으로 교체될 수 있습니다.</li>
				<li><em>*</em>이미지는 이해를 돕기 위한 것이며 실제 제품과 차이가 있을 수 있습니다.</li>
				<li><em>*</em>해시태그 이벤트 참가자는 캠페인 종료일 기준 공개 게시물에 한하여 집계합니다.</li>
				<li><em>*</em>5만원 이상 경품 수령 시 제세공과금 22%는 고객 부담이며, 세무 신고를 위해 개인 정보를 요구할 수 있습니다.</li>
				<li><em>*</em>증정된 사은품은 교환 및 환불이 불가합니다.</li>
				<li><em>*</em>본 캠페인의 내용은 MINI 코리아의 사정으로 예고 없이 변경될 수 있으며, 자세한 내용은 공식 딜러 서비스 센터로 문의하시기 바랍니다.</li>
			</ul>
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
