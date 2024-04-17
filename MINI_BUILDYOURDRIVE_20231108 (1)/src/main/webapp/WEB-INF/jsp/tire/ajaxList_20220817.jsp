<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/cmmn/include/declare.jspf"%>
<%
  /**
  * @Class Name : ajaxList.jsp
  * @Description : WHEEL & TIRE list
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
	<ul id="thumb_list">
		<c:forEach var="result" items="${ itemsList }" varStatus="status">
		    <li>
		        <div class="list__item__inner">                                                
		            <div>
		            	<!-- 썸네일 -->
		           		<c:if test="${ fn:length(result.itemsImgList) == 1}"> 
		                	<div class="default_thumb"><img src="/file/imageView.do?filePath=<c:out value="${ result.itemsImgList[0].imgPath }" />&fileNm=<c:out value="${ result.itemsImgList[0].imgRealNm }" />" alt=""/></div>
		                </c:if>	
		                <!-- 갤러리형 -->           
		                <c:if test="${ fn:length(result.itemsImgList) > 1}">
		                	<div class="gallery_thumb">
			                    <!-- 
			                    // data-pager 값과 하단 bx-pager 클래스의 아이디값 동일해야합니다.
			                    -->	                    
			                    <ul class="picture_slide" data-pager="bx-pager-<c:out value="${ status.index }" />">
				                    <c:forEach var="imgResult" items="${ result.itemsImgList }" varStatus="imgStatus">
				                    	<li><img src="/file/imageView.do?filePath=<c:out value="${ imgResult.imgPath }" />&fileNm=<c:out value="${ imgResult.imgRealNm }" />" alt=""/><span class="test"></span></li>
				                    </c:forEach>
			                    </ul>
			                    <div id="bx-pager-<c:out value="${ status.index }" />" class="bx-pager">
				                    <c:forEach var="imgResult" items="${ result.itemsImgList }" varStatus="imgStatus">
				                    	<a data-slide-index="<c:out value="${ imgStatus.index }" />" href="">
				                    		<img src="/file/imageView.do?filePath=<c:out value="${ imgResult.iconPath }" />&fileNm=<c:out value="${ imgResult.iconRealNm }" />" alt=""/>
				                    	</a>
				                    </c:forEach>
			                    </div>
		                	</div>
		               	</c:if>

		                <div class="info_wrap <c:if test="${ result.optFlg == 'Y' }">no_price</c:if>">
		                    <p class="list_title">${ result.itemsNm }</p>
		                    <p class="long_info">${ fnc:fnBr(result.itemsConts) }</p>
		                    <c:if test="${ result.modelTxt != null and result.modelTxt ne '' }" ><p class="long_info">${ result.modelTxt }</p></c:if>
		                    <c:if test="${ result.etc1 != null and result.etc1 ne '' }" ><p class="long_info">${ result.etc1 }</p></c:if>
		                    <c:if test="${ result.etc2 != null and result.etc2 ne '' }" ><p class="long_info">${ result.etc2 }</p></c:if>
		                    <c:if test="${ result.etc3 != null and result.etc3 ne '' }" ><p class="long_info">${ result.etc3 }</p></c:if>		                    
		                    <!-- 옵션 상품 -->
		                	<!-- <c:if test="${ result.optFlg == 'Y' && fn:length(result.itemsOptList) > 0 }">
			                    <div class="mulity_price">
			                    	<c:forEach var="optResult" items="${ result.itemsOptList }" varStatus="optStatus">
				                        <p class="txt">${ optResult.optNm }</p>
				                        <c:if test="${ optResult.optSaleFlg == 'Y' }">
				                        	<p class="price"><del><span><fmt:formatNumber value="${ optResult.optPrice }" pattern="#,###" /></span>원</del><span><fmt:formatNumber value="${ optResult.optSalePrice }" pattern="#,###" /></span>원</p>
				                        </c:if>	
				                        <c:if test="${ optResult.optSaleFlg == 'N' }">
				                        	<p class="price"><span><fmt:formatNumber value="${ optResult.optPrice }" pattern="#,###" /></span>원</p>
				                        </c:if>					                        	                    	
			                    	</c:forEach>
			                    </div>              	
		                	</c:if>			                     -->
		                </div>
		                <!-- <c:if test="${ result.optFlg == 'N' }">
		                	<c:if test="${ result.saleFlg == 'Y' }">
		                		<p class="list_price"><del><span><fmt:formatNumber value="${ result.price }" pattern="#,###"/></span>원</del><span><fmt:formatNumber value="${ result.salePrice }" pattern="#,###"/></span>원</p>
		                	</c:if>
		                	<c:if test="${ result.saleFlg == 'N' }">
		                		<p class="list_price"><span><fmt:formatNumber value="${ result.price }" pattern="#,###"/></span>원</p>
		                	</c:if>	
		                </c:if> -->
		            </div>
		        </div>       
		    </li>    
	    </c:forEach>
    
    </ul>
    <script>

    ;( function( $, window, document, undefined )
    {
    'use strict';

    var $list        = $( '#thumb_list' ),
        $items        = $list.find( '.list__item__inner' ),
        setHeights    = function()
        {
            $items.css( 'height', 'auto' );

            var perRow = Math.floor( $list.width() / $items.width() );
            //console.log(perRow);
            if( perRow == null || perRow < 2 ) return true;

            for( var i = 0, j = $items.length; i < j; i += perRow )
            {
                var maxHeight    = 0,
                    $row        = $items.slice( i, i + perRow );

                $row.each( function()
                {
                    var itemHeight = parseInt( $( this ).outerHeight() );
                    if ( itemHeight > maxHeight ) maxHeight = itemHeight;
                });
                $row.css( 'height', maxHeight );
            }
        };


    setHeights();
    $( window ).on( 'resize', setHeights );
    $list.find( 'img' ).on( 'load', setHeights );


    })( jQuery, window, document );

	/* 161024 수정 */
    $(function(){
    slide_arr = [];
    $('#thumb_list').find('.gallery_thumb').each(function(){
        var _slide = $(this).find('.picture_slide').bxSlider({
            pagerCustom:'#'+$(this).find('.picture_slide').attr('data-pager'),
            controls:false,
            infiniteLoop:true,
            pause:3500,
            auto: true,
            autoControls: true
            
        });
        slide_arr.push(_slide);
    });
    });

    $(document).ready(function(){
        TweenMax.to($('#thumb_list'),0.6,{alpha:1});
        galleryResize();
    });

    function galleryResize(){
    var i=0;
    $('#thumb_list').find('.gallery_thumb').each(function(){
        slide_arr[i].reloadSlider({
            pagerCustom:'#'+$(this).find('.picture_slide').attr('data-pager'),
            controls:false,
            infiniteLoop:true,
            pause:3500,
            auto: true,
            autoControls: true            
        });
        i++;
    });
    }	
	/* 161024 수정 끝 */

    </script>