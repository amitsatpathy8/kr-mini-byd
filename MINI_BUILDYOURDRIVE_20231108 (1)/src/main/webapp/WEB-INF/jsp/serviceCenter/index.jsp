<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/cmmn/include/declare.jspf"%>
<%
  /**
  * @Class Name : index.jsp
  * @Description : SERVICE CENTER
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
		<link href="/asset/css/serviceCenter.css" rel="stylesheet" />
		<script type="text/javascript">
		// <![CDATA[       	  
		    $(document).ready(function(){
		    });	    
	     // ]]>
	     </script>           
	</head>
    <body>
    <div id="wrapper">


		<%@ include file="/WEB-INF/jsp/cmmn/include/gnb.jspf" %>	 
		
        <section id="container">
            <div class="service_title container_big">
                <div class="txt_data">
                    <p class="headerline"><em>MINI</em> 공식 딜러 서비스 센터.</p>
                    <p class="small_title">가까운 MINI 전시장을 찾아보세요.</p>
                </div>
            </div>

            <div class="store_list">
                <p class="car"><img src="/asset/images/content/service_car.png" alt=""/></p>
                <div class="desk_list">
                    <div class="list_tab">
                        <h3>센터 선택</h3>
                        <div class="list_con">
                            <ul class="jq_service_center_items">
                            <c:forEach var="result" items="${resultList}" varStatus="status">
                                <li class="jq_service_center_item" data-idx="${ status.index + 1}">
                                    <a href="#" class="jq_service_center_anchor" data-idx="${ status.index + 1}" data-store-name="${ result.ascNm }" data-address="<c:out value="${ fnc:fnBr(result.ascAddr) }" />" data-tel="<c:out value="${ result.ascPhn }" />" data-time_1="<c:out value="${ result.ascWekdTmz }" />" data-time_2="<c:out value="${ result.ascWekeTmz }" /><br />
                                    <c:out value="${ result.ascMkhd }" />" data-map-link="<c:out value="${ result.ascMapLink }" />" data-map-img="/file/imageView.do?filePath=<c:out value="${ result.ascMapImgPath }" />&fileNm=<c:out value="${ result.ascMapImgRealNm }" />">
                                    ${ result.ascNm }
                                   </a>                                   
                                </li>                                
                            </c:forEach>                                                                                                                                                                
                            </ul>
                        </div>
                    </div>
					<!--
                    <div class="store_view">
                        <h3>센터 정보</h3>
                        <div class="list_con">
                            <div class="txt_data jq_store_area">
                                <p class="store_name jq_store_name">강남<br><span>SERVICE CENTER</span></p>
                                <ul>
                                    <li class="address jq_address">서울특별시 서초구 서초동 1631-7</li>
                                    <li class="tel jq_tel">02)598-7301</li>
                                    <li class="time jq_time">
                                        월-금 07:30~21:00<br />
                                        토 09:00~16:00일<br />공휴일 휴무
                                    </li>
                                </ul>
                            </div>
                            <div class="map_data">
                                <p class="map_img"><img class="jq_map_img" src="/asset/images/content/store_map.gif" alt=""/></p>
                                <p class="btn_map"><a href="#" class="button01 jq_map_img_anchor" target="_blank">NAVER MAP</a></p>
                            </div>
                        </div>
                    </div>
					-->
					<div class="store_view">
                        <h3>센터 정보</h3>
                        <div class="list_con">
                            <div class="txt_data jq_store_area">
                                <p class="store_name jq_store_name">&nbsp;</span></p>
                                <ul>
                                    <li class="address jq_address">&nbsp;</li>
                                    <li class="tel jq_tel">&nbsp;</li>
                                    <li class="time jq_time">
                                        &nbsp;<br />
                                        &nbsp;<br />&nbsp;
                                    </li>
                                </ul>
                            </div>
                            <div class="map_data">
                                <p class="map_img"><img class="jq_map_img" src="#" alt=""/></p>
                                <p class="btn_map"><a href="#" class="button01 jq_map_img_anchor" target="_blank">NAVER MAP</a></p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="mobile_list container_big">
                    <ul class="accordion-menu">
                    <c:forEach var="result" items="${resultList}" varStatus="status">
                        <li>
                            <a href="javascript:;">${ result.ascNm }<span></span></a>
                            <div class="acoordion-data">
                                <div>
                                    <p class="map_img"><img src="/file/imageView.do?filePath=<c:out value="${ result.ascMapImgPath }" />&fileNm=<c:out value="${ result.ascMapImgRealNm }" />" alt=""></p>
                                    <ul>
                                        <li class="address">${ result.ascAddr }</li>
                                        <li class="tel"><c:out value="${ result.ascPhn }" /></li>
                                        <li class="time">
                                           ${ result.ascWekdTmz }<br>
                                           ${ result.ascWekeTmz }<br>
                                           ${ result.ascMkhd }
                                        </li>
                                    </ul>
                                    <div class="btn_map"><p><a class="button01" href="<c:out value="${ result.ascMapLink }" />" target="_blank">NAVER MAP</a></p></div>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                    </ul>
                </div>
            </div>


            <%@ include file="/WEB-INF/jsp/cmmn/include/bottom_info.jspf" %>
        </section>
        <p id="btn_top_scroll"><a href="javascript:gnb.goTop();"><img src="/asset/images/common/btn_top.gif" alt="top" width="48"/></a></p>

    
	<%@ include file="/WEB-INF/jsp/cmmn/include/footer.jspf" %>	

     </div>              
        <script src="/asset/js/common.js"></script>
        <script src="/asset/js/bootstrap.min.js"></script>  
        <script src="/asset/js/serviceCenter.js"></script>            
    </body>
</html>
