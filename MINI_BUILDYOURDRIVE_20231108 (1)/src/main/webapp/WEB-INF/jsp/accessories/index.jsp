<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/cmmn/include/declare.jspf"%>
<%
  /**
  * @Class Name : index.jsp
  * @Description : ACCESSORIES main
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
		<link href="/asset/css/accessories.css?v=20221024" rel="stylesheet" />

    </head>
    <body>
    <div id="wrapper">
        <%@ include file="/WEB-INF/jsp/cmmn/include/gnb.jspf" %>
        <section id="container">
            <!-- product -->
            <div class="product">

                <!-- product_top -->
                <div id="p_top" class="product_top">
                    <div class="product_top_wrap">
                        <h3>ACCESSORIES.</h3>
                        <h3 class="m_title"><p>MODELS</p></h3>
                        <ul>
                        	<c:forEach var="result" items="${ modelList }">
	                            <li>
	                                <div class="cell" id="<c:out value="${ result.modelCd }" />" onclick="topCate.ajaxLoadMain('<c:out value="${ result.modelCd }" />');">
	                                    <div class="thumb">
	                                        <p class="off"><img src="/file/imageView.do?filePath=<c:out value="${ result.topOffImgPath }" />&fileNm=<c:out value="${ result.topOffImgRealNm }" />" /></p>
	                                        <p class="on"><img src="/file/imageView.do?filePath=<c:out value="${ result.topOnImgPath }" />&fileNm=<c:out value="${ result.topOnImgRealNm }" />" /></p>
	                                    </div>
	                                    <div class="name"><c:out value="${ result.modelNm }" /></div>
	                                </div>
	                            </li>                        	
                        	</c:forEach>                           
                        </ul>
                    </div>
                </div>
                <!-- product_top --> 

                <!-- product_con -->
                <div id="p_con" class="product_con">
                    <!-- 
                    //    @ ajax content (accessories_data.html)
                    -->
                                    
                    <!-- 
                    //    @ ajax content end
                    -->
                </div>
                <!-- //product_con -->


                <%@ include file="/WEB-INF/jsp/cmmn/include/bottom_info.jspf" %>

            </div>
            <!-- //product -->
        </section>
        <p id="btn_top_scroll"><a href="javascript:gnb.goTop();"><img src="/asset/images/common/btn_top.gif" alt="top" width="48"/></a></p>


        <%@ include file="/WEB-INF/jsp/cmmn/include/footer.jspf" %>	
     </div>              

        <script src="/asset/js/common.js"></script>
        <script src="/asset/js/bootstrap.min.js"></script>
        <script src="/asset/js/jquery.bxslider.min.js"></script>
        <script src="/asset/js/imagesloaded.pkgd.min.js"></script>
        <script src="/asset/js/jquery.bxslider.min.js"></script>
        <script src="/asset/js/TweenMax.min.js"></script>

        <script>

            $(function(){
                mResizeCheck = $(window).width();
            });

            $(document).ready(function(){
            	var accModelCd = getParameter("pageId");
				if(accModelCd == ""){
					accModelCd = "M01";
				}
            	var topCateIdx = getParameter("pageNum");
                topCate.set(topCateIdx);
                topCate.init();
                
                topCate.ajaxLoadMain(accModelCd);		    		    	                
                
            });


            $(window).resize(function(){
                if (mResizeCheck != $(window).width()) {
                    
                    if(SW > 640){
                        $('#header').removeClass('popOpen');
                        $('#p_top').removeClass('mOpen');
                    }
					topCate.resize();
                    mResizeCheck = $(window).width();
                }    
            });

            var topCate = {
                cur:-1,
                cur02:-1,
				len : -1,
                init:function(){
                    topCate.intro();
                    
					/* 161021 수정 */
					$('#p_top').find('ul > li > div').on('mouseenter mouseleave click',function(e){                    
						if(e.type == 'mouseenter'){
							 if(AgentFlag){
								topCate.cur02 = $(this).parent().index();
								if(!$(this).hasClass('hover')){                        
									topCate.overHand($(this).parent().index());
								}
							 }
						}else if(e.type == 'mouseleave'){
							 if(AgentFlag){
								if(!$(this).hasClass('hover')){
									topCate.outHand($(this).parent().index());
								}
							 }
						}else if(e.type == 'click'){
							topCate.cur = $(this).parent().index();
							if(!AgentFlag)topCate.activeHand();
						}
					});
					$('#p_top').find('ul').mouseleave(function(){
						 if(AgentFlag){
							topCate.activeHand();
						 }
					});
					/* 161021 수정 끝 */

					topCate.len = $('.product_top ul li').length;
					topCate.resize();


                },
                set:function(_i){
                    topCate.cur = _i;
                    topCate.overHand(topCate.cur);
                },
                overHand:function(_i){
                    $('#p_top').find('ul > li').each(function(){
                        if($(this).index() == _i){
                            $(this).find('.cell').addClass('hover');
                            TweenMax.to($(this).find('.thumb .off'),0.9,{x:-50,alpha:0,ease:Quad.easeOut});
                            TweenMax.set($(this).find('.thumb .on'),{x:-30,y:-10,alpha:0});
                            TweenMax.to($(this).find('.thumb .on'),0.6,{x:0,y:0,alpha:1,ease:Quad.easeIn});
                        }else{
                            if($(this).find('.cell').hasClass('hover')){
                                topCate.outHand($(this).index());
                            }
                            $(this).find('.cell').removeClass('hover');
                        }

                    });
                },
                outHand:function(_i){
                    $('#p_top').find('ul > li').each(function(){
                        if($(this).index() == _i){                
                            TweenMax.set($(this).find('.thumb .off'),{x:50,alpha:0});
                            TweenMax.to($(this).find('.thumb .off'),0.9,{x:0,alpha:1,ease:Quad.easeIn});
                            TweenMax.to($(this).find('.thumb .on'),0.6,{x:30,y:10,alpha:0,ease:Quad.easeOut});
                        }
                    });
                },
                activeHand:function(){
                    $('#p_top').find('ul > li').each(function(){
                        if($(this).index() == topCate.cur){
                            $(this).find('.cell').addClass('actived');
                            if(topCate.cur != topCate.cur02){
                                topCate.overHand(topCate.cur);
                            }
                        }else{
                            $(this).find('.cell').removeClass('actived');
                        }
                    });
                },
                intro:function(){
                    //intro 
                    $('#p_top').find('ul > li').each(function(){
                        var _delay = $(this).index() * 0.15;
                        TweenMax.to($(this),1.2,{alpha:1,delay:_delay});
                    });
                },
				/* 161017 수정 */
                openDetail:function(){
					if(!$('#product_detail').hasClass('open')){
						var _dy = 500*-1
						$('#product_detail').show();
						$('#product_detail').addClass('open');
						//galleryResize();
						TweenMax.to($('#product_detail'),0.6,{css:{'margin-top':_dy,'opacity':1},ease:Quad.easeOut});
					}
                },
                ajaxLoadMain:function(modelCd){                	                	
					if($('#product_detail').hasClass('open')){
						//맨처음 컨텐츠 나타났을때 바로 Detail Load
						topCate.ajaxLoadDetail(modelCd, '');
					}else{
						$.ajax({
							type: "POST",
							url:"./ajaxData.do",
							data: { 
									"searchModelCd" : modelCd		
									, "modelNm" : $("#" + modelCd).find("div.name").text()
								}, 
							success: function (response) {        
								$('#p_con').html(response);
								$("div.m_top_visual > div.visual > div.name").text( $("#" + modelCd).find("div.name").text() );	
								//$("#teaser_car").children("img").attr("src", "/asset/images/content/product_main_teaser_visual_" + modelCd + ".jpg");
								//$("div.m_top_visual > div.visual").find("img").attr("src", "/asset/images/content/m_car_visual_" + modelCd + ".png");								
							},
							complete: function() {							
															
							},
							error: function (e) {
							}
						});
					}
                },
				/* 161017 수정 끝 */
                ajaxLoadDetail:function(modelCd, partCd){
                    $.ajax({
                        type: "POST",
                        url: "./ajaxDetail.do",
                        data: { 
                        		"searchModelCd" : modelCd
                        		, "searchPartCd" : partCd
                        },
                        success: function (response) {        
                            $('#product_detail').html(response);
                        },
                        error: function (e) {

                        }
                    });
                },
                ajaxLoadList:function(_modelCd, _partCd){
                    $.ajax({
                        type: "POST",
                        url: "./ajaxList.do",
                        data: {
                        		"searchModelCd" : _modelCd
                        		, "searchPartCd" : _partCd 
                        },
                        success: function (response) {        
                            $('#detail_list').html(response);
                        },
                        error: function (e) {

                        }
                    });
                },
				resize : function(){
					var _w = ($('.product_top_wrap').width() - 30) / topCate.len;
					
					if($(window).width() > 640){
						$('.product_top ul li').css({'width' : _w});
					}else{
						//$('.product_top ul li').attr('style','');
					}
				}
            }



            function checkMobileList(){
                if($('#header').hasClass('popOpen')){
                    //close
                    $('#header').removeClass('popOpen');
                    $('#p_top').removeClass('mOpen');
                }else{
                    //open
                    $('#header').addClass('popOpen');
                    $('#p_top').addClass('mOpen');
                    
                }
            }

			function getParameter(key) {
				var url = location.href;
				var spoint = url.indexOf("?");
				var query = url.substring(spoint, url.length);
				var keys = new Array;
				var values = new Array;
				var nextStartPoint = 0;
				while (query.indexOf("&", (nextStartPoint + 1)) > -1) {
					var item = query.substring(nextStartPoint, query.indexOf("&", (nextStartPoint + 1)));
					var p = item.indexOf("=");
					keys[keys.length] = item.substring(1, p);
					values[values.length] = item.substring(p + 1, item.length);
					nextStartPoint = query.indexOf("&", (nextStartPoint + 1));
				}
				item = query.substring(nextStartPoint, query.length);
				p = item.indexOf("=");
				keys[keys.length] = item.substring(1, p);
				values[values.length] = item.substring(p + 1, item.length);
				var value = "";
				for (var i = 0; i < keys.length; i++) {
					if (keys[i] == key) {
						value = values[i];
					}
				}
				return value;
			};
        </script>
    </body>
</html>
