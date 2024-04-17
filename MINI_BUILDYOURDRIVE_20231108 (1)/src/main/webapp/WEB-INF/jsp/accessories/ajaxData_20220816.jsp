<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/cmmn/include/declare.jspf"%>
<%
  /**
  * @Class Name : ajaxData.jsp
  * @Description : ACCESSORIES data
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
            <div class="container_big">
                <div class="teaser_visual">
                    <div>
                        <div class="visual" id="teaser_car"><img src="/file/imageView.do?filePath=<c:out value="${ modelVO.pcVisualImgPath }" />&fileNm=<c:out value="${ modelVO.pcVisualImgRealNm }" />" /></div>
                    </div>
                </div>
                
                <c:forEach var="result" items="${partGrpList}" varStatus="status">
					<c:set var="partGrpClass">
						<c:choose>
							<c:when test="${ status.index == 0 }">teaser_menu menu_left</c:when>
							<c:otherwise>teaser_menu menu_right</c:otherwise>
						</c:choose>
					</c:set>
					<c:set var="partGrpId">
						<c:choose>
							<c:when test="${ status.index == 0 }">original_menu</c:when>
							<c:otherwise>jcw_menu</c:otherwise>
						</c:choose>
					</c:set>						                

	                <div id="${ partGrpId }" class="${ partGrpClass }">
	                    <h3 class="e_wrap"><c:out value="${ result.partGrpNm }" /></h3>
	                    <ul>
	                    <c:forEach var="partResult" items="${ result.partList }" varStatus="partStatus">
	                    	<li class="e_wrap"><a href="javascript:topCate.ajaxLoadDetail('<c:out value="${ searchVO.searchModelCd }" />', '<c:out value="${ partResult.partCd }" />');" onclick="topCate.openDetail();">${ partResult.partNm }</a></li>
	                    </c:forEach>   
	                    </ul>
	                </div>                
                </c:forEach>
                
            </div>
        </div>
        <script>
        $(document).ready(function(){
            if(AgentFlag){
                // product main teasser effecct
                TweenMax.to($('#teaser_car'),2,{alpha:1,delay:0.5,onComplete:function(){
                    mouseMoveHand();
                }});
                // product menu effect
                $('.product_teaser').find('.teaser_menu').each(function(){
                    var _dx;
                    if($(this).hasClass('menu_left')){
                        _dx = -70;
                    }else{
                        _dx = 70;
                    }
                    TweenMax.set($(this).find('.e_wrap'),{x:_dx});

                    var i=0;
                    $(this).find('.e_wrap').each(function(){
                        var _delay = (i*0.15)+1;
						/* 161025 수정 */
                        TweenMax.to($(this),0.6,{alpha:1,x:0,delay:_delay,ease:Quad.easeOut});
						/* 161025 수정 끝 */
                        i++;
                    });
                });
            }else{
				/* 161026 수정 */
				 TweenMax.set($('#teaser_car'),{alpha:1});
				 var i=0;
				$(this).find('.e_wrap').each(function(){
					TweenMax.set($(this),{alpha:1,x:0,ease:Quad.easeOut});
					i++;
				});
				/* 161026 수정 끝 */
            }

             if($('.accordion-menu').length > 0){
                $('.accordion-menu').each(function(){            
                    var _menu = new Accordion($(this));
                });
                //Accordion_Menu.init();
            }

            $('#header').removeClass('popOpen');
            $('#p_top').removeClass('mOpen');
        });
        function mouseMoveHand(){
            var    offx,dx;
            var target = $('#teaser_car');
            $('.product_teaser').mousemove(function(event){
                offx = event.pageX
                dx = (offx - SW/2)*0.05
                TweenMax.to(target,1.2,{x:dx,ease:Quad.easeOut});
            });
        }
        </script>
        <div id="product_detail" class="product_list_wrap">
            <!-- 
            //    @ ajax content (./ajaxDetail.do)
            -->
            <!--
            //    @ ajax content end (./ajaxDetail.do)
            -->
        </div>
    </div>
    <!-- //desk -->

    <!-- mobile -->
    <div class="mobile">
        <div class="m_top_visual">
            <h3><p>CAR ACCESSORIES</p></h3>
            <div class="visual">
                <div class="name"><c:out value="${ searchVO.modelNm }" /></div>
                <img src="/file/imageView.do?filePath=<c:out value="${ modelVO.mobileVisualImgPath }" />&fileNm=<c:out value="${ modelVO.mobileVisualImgRealNm }" />" />
            </div> 
        </div>

        <div class="m_content">
            <div class="m_con_tab">
                <ul>
                	<c:forEach var="result" items="${partGrpList}" varStatus="status">
                   		<li class=""><a href="javascript:m_con_align(${ status.index });"><c:out value="${ result.partGrpNm }" /></a></li>
                    </c:forEach>
                </ul>
            </div>
            <div class="m_con_wrap">
                <div>
                    <ul class="accordion-menu">
	                    <c:forEach var="result" items="${partGrpList[0].partList}" varStatus="status">
						<c:if test="${ result.itemsCnt > 0 }">
	                        <li>
	                            <a href="javascript:;">${ result.partNm }(<fmt:formatNumber value="${ result.itemsCnt }" pattern="#,###" />)<span></span></a>
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
		                                    </div>
		                                    
		                                    <!-- 일반 상품 -->
		                                    <!-- <c:if test="${ itemsResult.optFlg eq 'N' }">
							                	<c:if test="${ itemsResult.saleFlg eq 'Y' }">
							                		<p class="list_price"><del><span><fmt:formatNumber value="${ itemsResult.price }" pattern="#,###"/></span>원</del><span><fmt:formatNumber value="${ itemsResult.salePrice }" pattern="#,###"/></span>원</p>
							                	</c:if>
							                	<c:if test="${ itemsResult.saleFlg eq 'N' }">
							                		<p class="list_price"><span><fmt:formatNumber value="${ itemsResult.price }" pattern="#,###"/></span>원</p>
							                	</c:if>	
		                                    </c:if> -->
		                                    <!-- 일반 상품 -->
		                                    <!-- <c:if test="${ itemsResult.optFlg == 'N' && fn:length(itemsResult.itemsOptList) > 0 }">	  
		                                    	<c:if test="${ itemsResult.itemsOptList[0].optSaleFlg == 'Y' }">                     	
		                                    		<p class="list_price"><del><span><fmt:formatNumber value="${ itemsResult.itemsOptList[0].optPrice }" pattern="#,###"/></span>원</del><span><fmt:formatNumber value="${ itemsResult.itemsOptList[0].optSalePrice }" pattern="#,###"/></span>원</p>
		                                    	</c:if>
		                                    	<c:if test="${ itemsResult.itemsOptList[0].optSaleFlg == 'N' }">
		                                    		<p class="list_price"><span><fmt:formatNumber value="${ itemsResult.itemsOptList[0].optPrice }" pattern="#,###"/></span>원</p>
		                                    	</c:if>	                                    	
		                                    </c:if> -->
							                <!-- 옵션 상품 -->
							                <!-- <c:if test="${ itemsResult.optFlg == 'Y' && fn:length(itemsResult.itemsOptList) > 0 }">
		                                        <div class="mulity_price">
		                                        	<c:forEach var="optResult" items="${ itemsResult.itemsOptList }" varStatus="optStatus">
			                                            <p class="txt">${ optResult.optNm }</p>
			                                            <c:if test="${ optResult.optSaleFlg == 'Y' }">
			                                            	<p class="price"><del><span><fmt:formatNumber value="${ optResult.optPrice }" pattern="#,###" /></span>원</del><span><fmt:formatNumber value="${ optResult.optSalePrice }" pattern="#,###" /></span>원</p>
			                                            </c:if>
			                                            <c:if test="${ optResult.optSaleFlg == 'N' }">
			                                            	<p class="price"><span><fmt:formatNumber value="${ optResult.optPrice }" pattern="#,###" /></span>원</p>
			                                            </c:if>	                                        	
		                                        	</c:forEach>
		                                        </div>						                 
							                </c:if>                                    -->
		                                </div>                            	
	                            	</c:forEach>
	                            </div>
	                        </li>
						</c:if>
	                   	</c:forEach>
                    </ul>                                            
                </div>
                <div>
                    <ul class="accordion-menu">
	                    <c:forEach var="result" items="${partGrpList[1].partList}" varStatus="status">
						<c:if test="${ result.itemsCnt > 0 }">
	                        <li>
	                            <a href="javascript:;">${ result.partNm }(<fmt:formatNumber value="${ result.itemsCnt }" pattern="#,###" />)<span></span></a>
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
				                                        	<li><img src="/file/imageView.do?filePath=<c:out value="${ imgResult.imgPath }" />&fileNm=<c:out value="${ imgResult.imgRealNm }" />" alt=""/><span class="test"><c:out value="${ imgStatus.index + 1 }" /></span></li>
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
		                                    </div>
		                                    <!-- 일반 상품 -->
		                                    <!-- <c:if test="${ itemsResult.optFlg == 'N' }">
		                                    	<c:if test="${ itemsResult.itemsOptList[0].optSaleFlg == 'Y' }">                     	
		                                    		<p class="list_price"><del><span><fmt:formatNumber value="${ itemsResult.itemsOptList[0].optPrice }" pattern="#,###"/></span>원</del><span><fmt:formatNumber value="${ itemsResult.itemsOptList[0].optSalePrice }" pattern="#,###"/></span>원</p>
		                                    	</c:if>
		                                    	<c:if test="${ itemsResult.itemsOptList[0].optSaleFlg == 'N' }">
		                                    		<p class="list_price"><span><fmt:formatNumber value="${ itemsResult.itemsOptList[0].optPrice }" pattern="#,###"/></span>원</p>
		                                    	</c:if>	
		                                    </c:if> -->
							                <!-- 옵션 상품 -->
							                <!-- <c:if test="${ itemsResult.optFlg == 'Y' && fn:length(itemsResult.itemsOptList) > 0 }">
		                                        <div class="mulity_price">
		                                        	<c:forEach var="optResult" items="${ itemsResult.itemsOptList }" varStatus="optStatus">
			                                            <p class="txt">${ optResult.optNm }</p>
			                                            <c:if test="${ optResult.optSaleFlg == 'Y' }">
			                                            	<p class="price"><del><span><fmt:formatNumber value="${ optResult.optPrice }" pattern="#,###" /></span>원</del><span><fmt:formatNumber value="${ optResult.optSalePrice }" pattern="#,###" /></span>원</p>
			                                            </c:if>
			                                            <c:if test="${ optResult.optSaleFlg == 'N' }">
			                                            	<p class="price"><span><fmt:formatNumber value="${ optResult.optPrice }" pattern="#,###" /></span>원</p>
			                                            </c:if>		                                        	
		                                        	</c:forEach>
		                                        </div>						                 
							                </c:if>                                    -->
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
        $(function(){
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
            m_con_align(0);
        });
        function m_con_align(_i){
            $('.m_con_tab').find('ul li').eq(_i).addClass('actived').siblings().removeClass('actived');
            $('.m_con_wrap').find('> div').each(function(){
                if($(this).index() == _i){
                    $(this).stop(true).fadeIn(300);
                }else{
                    $(this).stop(true).hide();
                }
            });
        }
        function m_slide_resize(){
            var i=0;
            for(i=0;i<m_slide_arr.length;i++){
                m_slide_arr[i].reloadSlider();
            }
        }
        </script>
    </div>
    <!-- //mobile -->    