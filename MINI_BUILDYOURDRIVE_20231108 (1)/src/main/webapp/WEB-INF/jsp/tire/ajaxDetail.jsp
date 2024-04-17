<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/cmmn/include/declare.jspf"%>
<%
  /**
  * @Class Name : ajaxDetail.jsp
  * @Description : WHEEL & TIRE detail
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
<!-- desk -->
    <div class="desk">
        <div class="product_teaser">            
        </div>
        <script>
        $(document).ready(function(){
            
             if($('.accordion-menu').length > 0){
                $('.accordion-menu').each(function(){            
                    var _menu = new Accordion($(this));
                });
                //Accordion_Menu.init();
            }
            $('#header').removeClass('popOpen');
            $('#p_top').removeClass('mOpen');
        });
        </script>
        <div id="product_detail" class="product_list_wrap">
            <!-- 
            //    @ ajax content (accessories_detail.html)
            -->
            
            <div class="detail_data">
                <div class="detail_menu">
                    <ul>
	                   	<c:forEach var="result" items="${ partList }" varStatus="status">
							<c:if test="${ result.itemsCnt > 0 }">
	                   		<li <c:if test="${ result.partCd == searchVO.searchPartCd }">class="actived" </c:if>>
	                   			<a href="javascript:topCate.ajaxLoadList('<c:out value="${ searchVO.searchModelCd }" />', '<c:out value="${ result.partCd }" />');" onclick="sort_menu(this);">${ result.partNm } (<fmt:formatNumber value="${ result.itemsCnt }" pattern="#,###" />)</a>
	                   		</li>
							</c:if>
	                   	</c:forEach>                        
                    </ul>
                </div>
                <div id="detail_list" class="detail_list_wrap">
                <!-- 
                //    @ ajax content (./ajaxList.do)
                -->
                    
                <!-- 
                //    @ ajax content end (./ajaxList.do)
                -->
                </div>
            </div>

            <script>
                $(function(){
                    topCate.ajaxLoadList('<c:out value="${ searchVO.searchModelCd }" />', '<c:out value="${ searchVO.searchPartCd }" />');
                });

                function sort_menu(_t){
                    var __t = $(_t);
                    var __p = __t.parent();
                    var __pp = __t.parents('ul');
                    $('.detail_menu').find('ul').each(function(){
                        if(__pp.index() == $(this).index()){
                            $(this).find('li').eq(__p.index()).addClass('actived').siblings().removeClass('actived');
                        }else{
                            $(this).find('li').removeClass('actived');
                        }
                    });
                }
            </script>

            <!--
            //    @ ajax content end (./ajaxData.do)
            -->
        </div>
    </div>
    <!-- //desk -->

    <!-- mobile -->
    <div class="mobile">
        <div class="m_top_visual">
            <h3><p>WHEEL &amp; TIRE</p></h3>
            <div class="visual">
                <div class="name"><c:out value="${ searchVO.modelNm }" /></div>
                <img src="/asset/images/content/m_car_visual_<c:out value="${ searchVO.searchModelCd }" />.png" alt=""/>
            </div>
        </div>

        <div class="m_content">
            <div class="m_con_wrap">
                <div>
                    <ul class="accordion-menu">
	                    <c:forEach var="result" items="${partList}" varStatus="status">
						<c:if test="${ result.itemsCnt > 0 }">
	                        <li>
	                            <a href="javascript:;">${ result.partNm } (<fmt:formatNumber value="${ result.itemsCnt }" pattern="#,###" />)<span></span></a>
	                            <div class="acoordion-data slide_cell detail_list_wrap">
		                            <c:forEach var="itemsResult" items="${ result.itemsList }" varStatus="itemsStatus">
		                                <div class="data_cell">
		                                	<!-- 썸네일 -->
		                                	<c:if test="${ fn:length(itemsResult.itemsImgList) == 1}"> 
		                                		<div class="default_thumb"><img src="/file/imageView.do?filePath=<c:out value="${ itemsResult.itemsImgList[0].imgPath }" />&fileNm=<c:out value="${ itemsResult.itemsImgList[0].imgRealNm }" />" alt=""/></div>
		                                	</c:if>
							                <!-- 갤러리형 -->           
							                <c:if test="${ fn:length(itemsResult.itemsImgList) > 1}">	                                	
			                                    <div class="gallery_thumb">
			                                        <!-- 
			                                        // data-pager 값과 하단 bx-pager 클래스의 아이디값 동일해야합니다.
			                                        -->
			                                        <ul class="picture_slide" data-pager="m-bx-pager-<c:out value="${ status.index }" />-<c:out value="${ itemsStatus.index }" />">
				                                        <c:forEach var="imgResult" items="${ itemsResult.itemsImgList }" varStatus="imgStatus">
				                                        	<li><img src="/file/imageView.do?filePath=<c:out value="${ imgResult.imgPath }" />&fileNm=<c:out value="${ imgResult.imgRealNm }" />" alt=""/><span class="test"></span></li>
				                                        </c:forEach>       
			                                        </ul>
			                                        <div id="m-bx-pager-<c:out value="${ status.index }" />-<c:out value="${ itemsStatus.index }" />" class="bx-pager">
			                                        	<c:forEach var="imgResult" items="${ itemsResult.itemsImgList }" varStatus="imgStatus">
									                    	<a data-slide-index="<c:out value="${ imgStatus.index }" />" href="">
									                    		<img src="/file/imageView.do?filePath=<c:out value="${ imgResult.iconPath }" />&fileNm=<c:out value="${ imgResult.iconRealNm }" />" alt=""/>
									                    	</a>		                                        	
			                                        	</c:forEach>
			                                        </div>
			                                    </div>
		                                    </c:if>
		                                    		                                	
		                                    <div class="info_wrap">
		                                        <p class="list_title">${ itemsResult.itemsNm }</p>
		                                        <p class="long_info">${ itemsResult.itemsConts }</p>
		                                        <!-- <p class="tire_title">${ itemsResult.itemsConts }</p>-->		                                        
		                                    </div>
		                                    
		                                    <!-- 일반 상품 -->
		                                    <c:if test="${ itemsResult.optFlg eq 'N' }">
							                	<c:if test="${ itemsResult.saleFlg eq 'Y' }">
							                		<p class="list_price"><del><span><fmt:formatNumber value="${ itemsResult.price }" pattern="#,###"/></span>원</del><span><fmt:formatNumber value="${ itemsResult.salePrice }" pattern="#,###"/></span>원</p>
							                	</c:if>
							                	<c:if test="${ itemsResult.saleFlg eq 'N' }">
							                		<p class="list_price"><span><fmt:formatNumber value="${ itemsResult.price }" pattern="#,###"/></span>원</p>
							                	</c:if>	
		                                    </c:if>
		                                    <!-- 일반 상품 -->
		                                    <c:if test="${ itemsResult.optFlg eq 'N' && fn:length(itemsResult.itemsOptList) > 0 }">
		                                    	<c:if test="${ itemsResult.itemsOptList[0].optSaleFlg eq 'Y' }">   	                                    	
		                                    		<p class="list_price"><del><span><fmt:formatNumber value="${ itemsResult.itemsOptList[0].optPrice }" pattern="#,###"/></span>원</del><span><fmt:formatNumber value="${ itemsResult.itemsOptList[0].optSalePrice }" pattern="#,###"/></span>원</p>
		                                    	</c:if>
		                                    	<c:if test="${ itemsResult.itemsOptList[0].optSaleFlg eq 'N' }">
		                                    		<p class="list_price"><span><fmt:formatNumber value="${ itemsResult.itemsOptList[0].optPrice }" pattern="#,###"/></span>원</p>
		                                    	</c:if>	                                    	
		                                    </c:if>
							                <!-- 옵션 상품 -->
							                <c:if test="${ itemsResult.optFlg eq 'Y' && fn:length(itemsResult.itemsOptList) > 0 }">
		                                        <div class="mulity_price">
		                                        	<c:forEach var="optResult" items="${ itemsResult.itemsOptList }" varStatus="optStatus">
			                                            <p class="txt">${ optResult.optNm }</p>
			                                            <c:if test="${ optResult.optSaleFlg eq 'Y' }">
			                                            	<p class="price"><del><span><fmt:formatNumber value="${ optResult.optPrice }" pattern="#,###" /></span>원</del><span><fmt:formatNumber value="${ optResult.optSalePrice }" pattern="#,###" /></span>원</p>
			                                            </c:if>
			                                            <c:if test="${ optResult.optSaleFlg eq 'N' }">
			                                            	<p class="price"><span><fmt:formatNumber value="${ optResult.optPrice }" pattern="#,###" /></span>원</p>
			                                            </c:if>	                                        	
		                                        	</c:forEach>
		                                        </div>						                 
							                </c:if> 		                                    
		                                </div>
		                            </c:forEach>
	                            </div>
	                        </li>
						</c:if>
	                    </c:forEach>                     
                    </ul>                                            
                </div>
            </div>
        </div>
        <script>
		/* 161021 수정 */
        $(function(){
        	mResizeCheck02 = $(window).width();
            m_slide_arr = [];
            $('.m_con_wrap').find('.gallery_thumb').each(function(){
                var _slide = $(this).find('.picture_slide').bxSlider({
                    pagerCustom:'#'+$(this).find('.picture_slide').attr('data-pager'),
                    controls:false,
                    infiniteLoop:true,
                    pause:3500,
                    auto: true,
                    autoControls: true    
                    
                });
                m_slide_arr.push(_slide);
            });
			scroll_sort_check();
        });
        function m_slide_resize(){
            var i=0;
            for(i=0;i<m_slide_arr.length;i++){
                m_slide_arr[i].reloadSlider();
            }
        }
		
        $(window).scroll(function() {            
			npos = $(window).scrollTop();
			scroll_sort_check();                                     
		});//end scroll

		$(window).resize(function(){
			npos = $(window).scrollTop();
			if (mResizeCheck02 != $(window).width()) {						
				scroll_sort_check();
				mResizeCheck02 = $(window).width();
			}    
		});


		function scroll_sort_check(){
			if(SW > 640){
				if(npos >= $('#product_detail').offset().top - 89){
					$('#product_detail').find('.detail_menu').addClass('fix');    
					$('#product_detail').find('.detail_list_wrap').addClass('fix');    

					if(npos >= $('.bottom_info').offset().top - $('.detail_menu').innerHeight()-$('#header').innerHeight()-60){
						$('.detail_menu').css({'position':'absolute','top':'auto','bottom':0}).addClass('b_fix');
					}else{
						$('.detail_menu').attr('style','').removeClass('b_fix');
					}	
				}else{
					$('#product_detail').find('.detail_menu').removeClass('fix');
					$('#product_detail').find('.detail_menu').removeClass('b_fix');
					$('#product_detail').find('.detail_list_wrap').removeClass('fix');
					$('.detail_menu').attr('style','').removeClass('b_fix');
				}

				if($('#product_detail').find('.detail_menu').innerHeight() > $('#product_detail').find('.detail_list_wrap').innerHeight()){
					 $('#product_detail').find('.detail_data').css({'min-height':$('#product_detail').find('.detail_menu').innerHeight()});
				}else{
					 $('#product_detail').find('.detail_data').attr('style','');
				}
			}else{
					$('#product_detail').find('.detail_menu').removeClass('fix');
					$('#product_detail').find('.detail_menu').removeClass('b_fix');
					$('#product_detail').find('.detail_list_wrap').removeClass('fix');
					$('#product_detail').find('.detail_data').attr('style','');
			}   
		}
		/* 161021 수정 끝 */
        </script>
    </div>
    <!-- //mobile -->    