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
		
        <section id="container">
            <div class="main_large_teaser">
                <c:if test="${ not empty mainVO.imgPath }"><div class="visual"><img src="/file/imageView.do?filePath=<c:out value="${ mainVO.imgPath }" />&fileNm=<c:out value="${ mainVO.imgRealNm }" />" alt="<c:out value="${ mainVO.imgOgNm }" />"/></div></c:if>

				<div class="txt_data">
					<div class="inner">
						<c:if test="${ mainVO != null }">
							<h3 class="headline">${ mainVO.sbjA }</h3>
							<h3 class="sub_headline">${ mainVO.sbjB }</h3>
						</c:if>
					</div>
				</div>

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
            </div>

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
                                         <p class="info_txt">운전의 즐거움을 극대화시키는 기술력과 독특한 개성이 돋보이는 디자인으로 MINI만의 유니크한 드라이빙 스타일을 완성하는 MINI Summer Wheel & Tire.<br>2018년 Summer Wheel & Tire의 다양한 제품과 할인 혜택을 확인해 보세요.</p>
										<!-- 161025 수정 끝 -->
                                <div class="btn_more"><p><a href="/tire/index.do" class="button01">자세히 보기</a></p></div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="slide_cell"> 
                            <div>
                                <div class="visual"><img src="/asset/images/content/main_offer_visual02.jpg" alt=""/></div>
                                <div class="cell_title">TIPS &amp; GUIDE</div>
                                <p class="info_txt">차량을 올바르게 관리하는 것은 좋은 차를 고르는 안목만큼 중요합니다. 드라이빙의 즐거움을 유지하고, 안전한 운행을 가능하게 해주는 차량 관리법. MINI와 더 오래 함께 하실 수 있도록, 차량 관리를 위한 열 가지 좋은 습관을 안내합니다.</p>
                                <div class="btn_more"><p><a href="/tipsGuide/index.do" class="button01">자세히 보기</a></p></div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="slide_cell">
                            <div>
                                <div class="visual"><img src="/asset/images/content/main_offer_visual03.jpg" alt=""/></div>
                                <div class="cell_title">SERVICE CENTER</div>            
                                <p class="info_txt">가까운 MINI 서비스 센터를 찾아보세요.</p>                            
                                <div class="btn_more"><p><a href="/serviceCenter/index.do" class="button01">서비스 센터 찾기</a></p></div>
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
                                <p class="info_txt">운전의 즐거움을 극대화시키는 기술력과 독특한 개성이 돋보이는 디자인으로 MINI만의 유니크한 드라이빙 스타일을 완성하는 MINI Summer Wheel & Tire.<br>2018년 Summer Wheel & Tire의 다양한 제품과 할인 혜택을 확인해 보세요.</p>
								<!-- 161025 수정 끝 -->
                                <div class="btn_more"><p><a href="/tire/index.do" class="button01">자세히 보기</a></p></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="javascript:;">TIPS &amp; GUIDE.<span></span></a>
                        <div class="acoordion-data slide_cell">
                            <div>
                                <div class="visual"><img src="/asset/images/content/main_offer_visual02.jpg" alt=""/></div>
                                <div class="cell_title">TIPS &amp; GUIDE</div>
                                <p class="info_txt">차량을 올바르게 관리하는 것은 좋은 차를 고르는 안목만큼 중요합니다. 드라이빙의 즐거움을 유지하고, 안전한 운행을 가능하게 해주는 차량 관리법. MINI와 더 오래 함께 하실 수 있도록, 차량 관리를 위한 열 가지 좋은 습관을 안내합니다.</p>
                                <div class="btn_more"><p><a href="/tipsGuide/index.do" class="button01">자세히 보기</a></p></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="javascript:;">SERVICE CENTER.<span></span></a>
                        <div class="acoordion-data slide_cell">
                            <div>
                                <div class="visual"><img src="/asset/images/content/main_offer_visual03.jpg" alt=""/></div>
                                <div class="cell_title">SERVICE CENTER</div>            
                                <p class="info_txt">가까운 MINI 서비스 센터를 찾아보세요.</p>                            
                                <div class="btn_more"><p><a href="/serviceCenter/index.do" class="button01">서비스 센터 찾기</a></p></div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>  
    </div>
    <%@ include file="/WEB-INF/jsp/cmmn/include/bottom_info.jspf" %>	
</section>
<p id="btn_top_scroll"><a href="javascript:gnb.goTop();"><img src="/asset/images/common/btn_top.gif" alt="top" width="48"/></a></p>


	<%@ include file="/WEB-INF/jsp/cmmn/include/footer.jspf" %>	

     </div>              
        <script src="/asset/js/common.js"></script>
        <script src="/asset/js/bootstrap.min.js"></script>
        <script src="/asset/js/main.js"></script>
    </body>
</html>
