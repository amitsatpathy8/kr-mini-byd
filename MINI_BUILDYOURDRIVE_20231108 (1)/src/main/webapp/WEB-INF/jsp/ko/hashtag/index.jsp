<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/cmmn/include/declare.jspf"%>
<%
  /**
  * @Class Name : index.jsp
  * @Description : TIPS & GUIDE
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
		<link href="/asset/css/tire.css" rel="stylesheet" />
		<script type="text/javascript">
		// <![CDATA[       	  
		    $(document).ready(function(){
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
                <div class="visual" style="border-bottom-color:#0071ae;"><img src="/asset/images/content/mini_hash_visual.jpg" alt=""></div>
				<div class="txt_data">
					<div class="inner">
						<!--
						<h3 class="headline">HAPPY FIRST DAY.</h3>
						<h3 class="sub_headline">MINI ORIGINAL CAR ACCESSORIES &amp; LIFESTYLE.</h3>
						-->
					</div>
				</div>
			</div>

			<section id="contents">

				<div class="sub_copy">
					<div class="sub_copy_cell">
						<div class="sub_copy_data">
							<h3 class="sub_copy_title3">SHARE YOUR #CAMPING WITH MINI.</h3>
							<p class="sub_copy_txt">캠페인 구매품 혹은 사은품을 사진으로 찍어 공유해주세요.<br>인스타그램 이벤트 추첨을 통해 특별한 선물을 드립니다.<br>MINI와 함께하는 캠핑을 촬영하면 당첨 확률이 올라갑니다.</p>	
						</div>
					</div>
				</div>	
				
				<div class="default_cell">					
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

			</section>



		</section>	

		 <div class="bottom_info container_small type_02">
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


        <p id="btn_top_scroll"><a href="javascript:gnb.goTop();"><img src="/asset/images/common/btn_top.gif" alt="top" width="48"/></a></p>
        
		<%@ include file="/WEB-INF/jsp/cmmn/include/footer.jspf" %>

     </div>
        <script src="/asset/js/common.js"></script>    
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
