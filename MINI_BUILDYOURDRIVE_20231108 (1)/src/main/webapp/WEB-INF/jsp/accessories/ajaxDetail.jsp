<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/cmmn/include/declare.jspf"%>
<%
  /**
  * @Class Name : ajaxDetail.jsp
  * @Description : ACCESSORIES detail
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


            <div class="detail_data">
                <div class="detail_menu">
                	<c:forEach var="result" items="${partGrpList}" varStatus="status">
	                    <h3><c:out value="${ result.partGrpNm }" /></h3>                                    
	                    <ul>
		                   	<c:forEach var="partResult" items="${ result.partList }" varStatus="partStatus">
							<c:if test="${ partResult.itemsCnt > 0 }">
		                   		<li <c:if test="${ partResult.partCd == searchVO.searchPartCd }">class="actived" </c:if>>
		                   			<a href="javascript:topCate.ajaxLoadList('<c:out value="${ searchVO.searchModelCd }" />', '<c:out value="${ partResult.partCd }" />');" onclick="sort_menu(this);">${ partResult.partNm } (<fmt:formatNumber value="${ partResult.itemsCnt }" pattern="#,###" />)</a>
		                   		</li>
							</c:if>
		                   	</c:forEach>  
	                   	</ul>                	
                	</c:forEach>
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
			/* 161021 수정 */
            $(function(){
				mResizeCheck02 = $(window).width();
                topCate.ajaxLoadList('<c:out value="${ searchVO.searchModelCd }" />', '<c:out value="${ searchVO.searchPartCd }" />');
				scroll_sort_check();
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