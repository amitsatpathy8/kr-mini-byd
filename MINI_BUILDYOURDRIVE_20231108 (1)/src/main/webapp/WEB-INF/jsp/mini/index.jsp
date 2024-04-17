<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/cmmn/include/declare.jspf"%>
<%
  /**
  * @Class Name : index.jsp
  * @Description : MINI REGENERATION
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
		<link href="/asset/css/mini.css" rel="stylesheet" />
		<script type="text/javascript">
		// <![CDATA[       	  
		    $(document).ready(function(){
		    });	    
	     // ]]>
	     </script>           
	</head>
    <body>
    <div id="wrapper">

        <script src="/asset/js/jquery.easing.1.3.js"></script>
        <script src="/asset/js/numberTicker.js"></script>

		<%@ include file="/WEB-INF/jsp/cmmn/include/gnb.jspf" %>	 
		
        <section id="container">
            <div class="key_content container_big">
                <div class="txt_data">
                    <p class="headerline">FOR YOU, <br/>FOR YOUR MINI.</p>
                    <p class="headerline m_head">FOR YOU,<br>FOR YOUR MINI.</p>
                    <ul>
                        <li><p class="title">대 상</p>MSI(5년/5만km)가 만료된 MINI 전 모델</li>
                        <li><p class="title">기 간</p>2016년 9월 26일 ~ 10월 23일 (4주간)</li>
                        <li><p class="title">내 용</p>40가지 항목에 대한 차량 무상 점검 <span>(외부장착물 포함)</span><br>
                        MINI 오리지널 부품 및 공임 20% 할인 <span>(VAT 포함)</span><br>
                        MINI 오리지널 엔진오일 20% 할인
                        </li>
                        <li><p class="title">혜 택</p>50만원 이상 유상수리 - 수리비 5만원 할인권</li>
                    </ul>
                </div>
            </div>

            <div class="event_info">
                <div class="container_big">
                    <div class="car_visual">
                        <div class="km"><div class="number_format">50,000</div><div class="txt">km</div></div>
                        <div class="year"><div class="number_format">5</div><div class="txt">years</div></div>
                        <img src="/asset/images/content/key_content_visual.png" alt=""/>
                    </div>
                    <div class="desk_event">
                        <div class="event_tab">
                            <p class="event_title">MINI REGENERATION CAMPAIGN 2016.</p>
                            <p class="txt">MSI(5년/5만km)가 만료된 고객분들께도 MINI의 차량점검서비스를 무상으로 제공합니다. 유상 수리비 할인, 일부 악세서리 할인 등 함께 제공되는 다양한 혜택도 확인해 보세요.</p>
                            <div class="btn_tab">
                                <p><a href="javascript:eventView(0);" class="button02">캠페인 내용<span class="off"></span><span class="on"></span></a></p>
                                <p><a href="javascript:eventView(1);" class="button02">캠페인 혜택<span class="off"></span><span class="on"></span></a></p>
                            </div>
                        </div>
                        <div class="event_tab_con">
                            <div class="view01">
                                <ul>
                                    <li class="thumb01"><p class="txt">40가지 항목에 대한 차량 무상 점검<br><span>(외부장착물 포함)</span></p><p class="obj"><img src="/asset/images/content/event_view01_visual01.jpg" alt=""/></p></li>
                                    <li class="thumb02"><p class="txt">MINI 오리지널 부품 및 공임 20% 할인<br><span>(VAT 포함)</span></p><p class="obj"><img src="/asset/images/content/event_view01_visual02.jpg" alt=""/></p></li>
                                    <li class="thumb03"><p class="txt">MINI 오리지널 엔진오일 20% 할인</p><p class="obj"><img src="/asset/images/content/event_view01_visual03.jpg" alt=""/></p></li>
                                </ul>
                            </div>
                            <div class="view02">
                                <ul>
                                    <li class="thumb"><p class="txt">50만원 이상 유상수리 - <br>수리비 5만원 할인권</p><p class="obj"><img src="/asset/images/content/event_view02_visual02.jpg" alt=""/></p></li>
                                </ul>
                            </div>
                        </div>        
                    </div>            
                    <div class="mobile_event">
                        <ul class="accordion-menu">
                            <li>
                                <a href="javascript:;">캠페인 내용<span></span></a>
                                <div class="acoordion-data">
                                    <div>
                                        <div class="visual"><img src="/asset/images/content/event_view01_m_visual01.jpg" alt=""/></div>
                                        <div class="info">40가지 항목에 대한 차량 무상 점검<br><span>(외부장착물 포함)</span></div>
                                    </div>
                                    <div>
                                        <div class="visual"><img src="/asset/images/content/event_view01_m_visual02.jpg" alt=""/></div>
                                        <div class="info">MINI 오리지널 부품 및 공임 20% 할인 <span>(VAT 포함)</span></div>
                                    </div>
                                    <div>
                                        <div class="visual"><img src="/asset/images/content/event_view01_m_visual03.jpg" alt=""/></div>
                                        <div class="info">MINI 오리지널 엔진오일 20% 할인</div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="javascript:;">캠페인 혜택<span></span></a>
                                <div class="acoordion-data">
                                    <div>
                                        <div class="visual"><img src="/asset/images/content/event_view02_m_visual02.jpg" alt=""/></div>
                                        <div class="info">50만원 이상 유상수리 - 수리비 5만원 할인권</div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>        
            </div>

            <div class="bottom_info container_big">
                <ul>                
                    <li><em>*</em> 사고 수리, 타이어, 액세서리 및 라이프스타일 제품은 할인에 해당하지 않습니다.</li>
                    <li><em>*</em> 할인 혜택은 부가세/공임 포함 적용되며, 부품만 구입 시 할인에서 제외됩니다.</li>
                    <li><em>*</em> 본 캠페인 내용은 MINI Korea의 사정으로 예고 없이 변경될 수 있으며, 자세한 사항은 MINI 공식 딜러 서비스 센터로 문의하시기 바랍니다.</li>
                </ul>
            </div>
        </section>
        <p id="btn_top_scroll"><a href="javascript:gnb.goTop();"><img src="/asset/images/common/btn_top.gif" alt="top" width="48"/></a></p>


	<%@ include file="/WEB-INF/jsp/cmmn/include/footer.jspf" %>	

     </div>              
        <script src="/asset/js/common.js"></script>
        <script src="/asset/js/bootstrap.min.js"></script>  
        <script src="/asset/js/mini.js"></script>            
    </body>
</html>
