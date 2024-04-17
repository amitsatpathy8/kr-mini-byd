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
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="나만의 MINI를 위한 열 가지 습관.">
        <meta name="author" content="bmw korea">  

        <meta property="og:url" content="http://www.mini-buildyourdrive.co.kr/tipsGuide/index.do" />
        <meta property="og:title" content="나만의 MINI를 위한 열 가지 습관." />
        <meta property="og:type" content="website" />
        <meta property="og:image" content="http://www.mini-buildyourdrive.co.kr/asset/images/content/sns_img.gif" />
        <meta property="og:description" content="드라이빙의 즐거움을 유지하고, 안전한 운행을 가능하게 해주는 차량관리법. MINI와 더 오래 함께 하실 수 있도록, 차량 관리를 위한 열가지 좋은 습관을 안내합니다." />
		<link rel="image_src" href="http://www.mini-buildyourdrive.co.kr/asset/images/common/bmw_mini_logo3.jpg" />

		<link rel="apple-touch-icon" sizes="57x57" href="/asset/images/favicon/apple-icon-57x57.png">
		<link rel="apple-touch-icon" sizes="60x60" href="/asset/images/favicon/apple-icon-60x60.png">
		<link rel="apple-touch-icon" sizes="72x72" href="/asset/images/favicon/apple-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="76x76" href="/asset/images/favicon/apple-icon-76x76.png">
		<link rel="apple-touch-icon" sizes="114x114" href="/asset/images/favicon/apple-icon-114x114.png">
		<link rel="apple-touch-icon" sizes="120x120" href="/asset/images/favicon/apple-icon-120x120.png">
		<link rel="apple-touch-icon" sizes="144x144" href="/asset/images/favicon/apple-icon-144x144.png">
		<link rel="apple-touch-icon" sizes="152x152" href="/asset/images/favicon/apple-icon-152x152.png">
		<link rel="apple-touch-icon" sizes="180x180" href="/asset/images/favicon/apple-icon-180x180.png">
		<link rel="icon" type="image/png" sizes="192x192"  href="/asset/images/favicon/android-icon-192x192.png">
		<link rel="icon" type="image/png" sizes="32x32" href="/asset/images/favicon/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="96x96" href="/asset/images/favicon/favicon-96x96.png">
		<link rel="icon" type="image/png" sizes="16x16" href="/asset/images/favicon/favicon-16x16.png">
		<link rel="shortcut icon" type="image/x-icon" href="/asset/images/favicon/favicon.ico" />
		
		<title>MINI BUILD YOUR DRIVE.</title>
		
		<!-- Bootstrap core CSS -->
		<link href="/asset/css/common.css" rel="stylesheet" />
		

		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<link href="/asset/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

		<script src="/asset/js/jquery-1.12.2.min.js"></script>

		<!-- Facebook Pixel Code -->
		<script>
		!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
		n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
		n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
		t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
		document,'script','https://connect.facebook.net/en_US/fbevents.js');
		fbq('init', '1160880317271784');
		fbq('track', 'PageView');
		</script>
		<noscript><img height="1" width="1" style="display:none"
		src="https://www.facebook.com/tr?id=1160880317271784&ev=PageView&noscript=1"
		/></noscript>
		<!-- DO NOT MODIFY -->
		<!-- End Facebook Pixel Code -->


		<link href="/asset/css/tipsGuide.css" rel="stylesheet" />
		<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
				
		<script type="text/javascript">
		// <![CDATA[  		 
		    
		    var snsTitle = $('meta[property="og:title"]').attr( 'content' );   
			// 카카오스토리 공유
			var fnShareStory = function(){
				var shareUrl = $("#shareUrl").val();
				Kakao.Story.share({  
					url : shareUrl,
					text : snsTitle
				});
				Kakao.Story.cleanup();
			};	
			// 트위터 공유 
			var fnShareTwitter = function(){
				var shareUrl = $("#shareUrl").val();
				window.open("http://twitter.com/intent/tweet?text=" + encodeURIComponent(snsTitle) + " " + encodeURIComponent(shareUrl), "twitPop", "width=580,height=300");
			};	
			// 페이스북 공유 
			var fnShareFb = function() {
				var shareUrl = $("#shareUrl").val();				
				window.open("http://www.facebook.com/sharer/sharer.php?u=" + encodeURIComponent(shareUrl), "twitPop", "width=580,height=300");				
			};
		   	// 텍스트 복사 
			var fnTxtCopy = function(){
				var agt = navigator.userAgent.toLowerCase();			
				var copyTxt = $("#shareUrl").val();
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
			
				if ( success ){ alert( ' 클립보드에 복사되었습니다. \n "Ctrl+v"를 사용하여 원하는 곳에 붙여넣기 하세요. ' ); } 
				else {    prompt("아래의 URL을 길게 누르면 복사할 수 있습니다.", copyTxt);   } 
			};	            
		    $(document).ready(function(){
		    	$("#shareUrl").val(location.href);
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
            <div class="tip_title container_big">
                <p class="headerline">나만의 <em>MINI</em>를 위한 열 가지 좋은 습관.<a href="javascript:checkSharePop();" class="btn_share">페이지 공유하기</a></p>
				<!-- 161212 수정 -->
                <!-- s.WINTER
                <ul>
                    <li>겨울에는 체감온도가 영하로 떨어지는 날이 많습니다.<br>낮은 기온에 움츠러들고 딱딱하게 굳어지는 우리의 몸처럼 하루 종일 추위에 노출된 고객님의 MINI도 점점 수축하게 됩니다.<br>겨울에도 드라이빙의 즐거움을 유지하고 차량을 안전하게 운행할 수 있는 방법,<br>차량 관리를 위한 겨울철 좋은 습관을 통해 알려드립니다.</li> 
                </ul>  
                e.WINTER -->           
                <ul>
                    <li>MINI와 함께 드라이빙의 즐거움을 누리시게 된 것을 환영합니다. 좋은 차를 고르는 안목뿐 아니라, 차량을 올바르게 관리하는 방법도 매우 중요합니다.</li> 
                    <li>드라이빙의 즐거움을 유지하고, 안전한 운행을 가능하게 해주는 차량 관리법.</li> 
                    <li>MINI와 더 오래 함께 하실 수 있도록, 차량 관리를 위한 열 가지 좋은 습관을 안내합니다.</li>
                </ul>
				<!-- 161212 수정 끝 -->
            </div>

            <%-- s.WINTER tip_list_wrap
            <div class="tip_list_wrap">				
                <div class="t_list" id="Tlist">
                    <section id="list_view" class="">
                        <div class="view_wrap">
                            <div class="view_cell">
                                <div class="container_big">                
                                    <div class="thumb"><div class="d_t"><div class="d_c"><img src="/asset/images/content/tip_list_view01.gif" alt=""/></div></div></div>
                                    <div class="txt_data">
                                        <p class="title">01. 동절기에는 각종 경고등과 메시지에 더욱 관심 갖기</p>
                                        <p class="info">MINI는 차량에 이상이 발생했을 때, CC(Check Control) 메시지로 해당 문제를 상세히 알려줍니다. 온도에 민감한 배터리의 상태, 안전운전에 있어 매우 중요한 타이어의 공기압 등은 겨울철에 특히 주의를 기울여야 합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="view_cell">
                                <div class="container_big">                
                                    <div class="thumb"><div class="d_t"><div class="d_c"><img src="/asset/images/content/tip_list_view02.gif" alt=""/></div></div></div>
                                    <div class="txt_data">
                                        <p class="title">02. 노면 온도 7℃ 이하에는 윈터 타이어 사용하기</p>
                                        <p class="info">노면 온도가 7℃ 이하로 떨어지면 타이어의 접지력은 급격하게 감소합니다. 안전을 위하여 겨울철에는 윈터 타이어로 반드시 교체해야 하며, 타이어 트레드의 깊이도 꼭 점검해주세요.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="view_cell">
                                <div class="container_big">                
                                    <div class="thumb"><div class="d_t"><div class="d_c"><img src="/asset/images/content/tip_list_view03.gif" alt=""/></div></div></div>
                                    <div class="txt_data">
                                        <p class="title">03. 냉각수와 워셔액 관리하기</p>
                                        <p class="info">부동액과 물을 섞어 사용하는 냉각수는 엔진의 열을 식혀주는 역할을 합니다. 그러나 혼합 비율이 맞지 않을 경우 냉각수가 얼어 고장의 원인이 되기도 합니다. 겨울철에는 반드시 물과 부동액의 비율을 5:5로 섞어서 사용해야 하며 비율을 알 수 없다면 서비스 센터에서 점검을 받아야 합니다.유리를 닦는 것 외에도 결빙 방지 역할을 하는 워셔액은 여름용을 사용할 경우 얼 수 있으니 반드시 사계절용으로 사용해 주세요.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="view_cell">
                                <div class="container_big">                
                                    <div class="thumb"><div class="d_t"><div class="d_c"><img src="/asset/images/content/tip_list_view04.gif" alt=""/></div></div></div>
                                    <div class="txt_data">
                                        <p class="title">04. 와이퍼 관리하기</p>
                                        <p class="info">겨울철에는 낮은 기온이나 눈으로 인해 와이퍼가 얼거나 유리창에 붙을 수 있습니다. 이를 방지하기 위해 영하로 떨어지는 날에는 주차 시 두꺼운 종이를 와이퍼와 유리 사이에 끼워주세요.<br>※ 일부 모델은 와이퍼 블레이드를 높이 세울 수 없으니 조금만 들어서 종이를 끼워 주시기 바랍니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="view_cell">
                                <div class="container_big">                
                                    <div class="thumb"><div class="d_t"><div class="d_c"><img src="/asset/images/content/tip_list_view05.gif" alt=""/></div></div></div>
                                    <div class="txt_data">
                                        <p class="title">05. 올바른 히터 사용 및 필터 점검하기</p>
                                        <p class="info">겨울철에는 창문을 닫고 히터를 사용하는 것이 일반적입니다.하지만 장시간 운전할 경우 실내가 건조해지고 산소 부족으로 인해 졸음이 오기 쉬우므로 자주 환기를 시켜줘야 합니다.또한 히터 필터는 일정 기간이 지나면 여과 기능이 떨어지며, 곰팡이나 세균이 번식하여 건강을 해칠 수 있으니 교체 주기를 체크해 주시는 것이 좋습니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="view_cell">
                                <div class="container_big">                
                                    <div class="thumb"><div class="d_t"><div class="d_c"><img src="/asset/images/content/tip_list_view06.gif" alt=""/></div></div></div>
                                    <div class="txt_data">
                                        <p class="title">06. 운행 전 충분히 예열하기</p>
                                        <p class="info">겨울철에는 운전을 시작하기 전 차량을 충분히 예열해 주어야합니다.엔진을 비롯해 각종 오일류가 냉각되어 점도가 높아진상태에서 운행을 하면 각종 부품들의 내구성이 떨어지게 됩니다.시동을 걸고 잠시 예열하는 동안 시야 확보를 위해 차량에 쌓인 눈과 성에를 제거하는 것도 좋은 방법입니다.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <p class="bg"></p>
                    </section>

                    <div class="list_item_wrap first">
                        <div class="list_item">
                            <p class="thumb"><img src="/asset/images/content/tip_list_thumb01.gif" alt=""/></p>
                            <p class="info">01. 동절기에는 각종 경고등과 메시지에 더욱 관심 갖기</p>
                        </div>
                    </div>
                    <div class="list_item_wrap">
                        <div class="list_item">
                            <p class="thumb"><img src="/asset/images/content/tip_list_thumb02.gif" alt=""/></p>
                            <p class="info">02. 노면 온도 7℃ 이하에는 윈터 타이어 사용하기</p>
                        </div>
                    </div>
                    <div class="list_item_wrap">
                        <div class="list_item">
                            <p class="thumb"><img src="/asset/images/content/tip_list_thumb03.gif" alt=""/></p>
                            <p class="info">03. 냉각수와 워셔액 관리하기</p>
                        </div>
                    </div>
                    <div class="list_item_wrap">
                        <div class="list_item">
                            <p class="thumb"><img src="/asset/images/content/tip_list_thumb04.gif" alt=""/></p>
                            <p class="info">04. 와이퍼 관리하기</p>
                        </div>
                    </div>
                    <div class="list_item_wrap">
                        <div class="list_item">
                            <p class="thumb"><img src="/asset/images/content/tip_list_thumb05.gif" alt=""/></p>
                            <p class="info">05. 올바른 히터 사용 및 필터 점검하기</p>
                        </div>
                    </div>
                    <div class="list_item_wrap">
                        <div class="list_item">
                            <p class="thumb"><img src="/asset/images/content/tip_list_thumb06.gif" alt=""/></p>
                            <p class="info">06. 운행 전 충분히 예열하기</p>
                        </div>
                    </div>
                </div>
                <div class="t_mobile_list">
                    <div class="swiper-container thumb_slide">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><img src="/asset/images/content/tip_m_slide_visual01.gif" alt=""/></div>
                            <div class="swiper-slide"><img src="/asset/images/content/tip_m_slide_visual02.gif" alt=""/></div>
                            <div class="swiper-slide"><img src="/asset/images/content/tip_m_slide_visual03.gif" alt=""/></div>
                            <div class="swiper-slide"><img src="/asset/images/content/tip_m_slide_visual04.gif" alt=""/></div>
                            <div class="swiper-slide"><img src="/asset/images/content/tip_m_slide_visual05.gif" alt=""/></div>
                            <div class="swiper-slide"><img src="/asset/images/content/tip_m_slide_visual06.gif" alt=""/></div>
                        </div>
                        <div class="swiper-pagination"></div>
                        <!-- Add Arrows -->
                        <div class="swiper-button-next"><img src="/asset/images/content/tip_mobile_slide_arrow_next.png" alt="" width="17"/></div>
                        <div class="swiper-button-prev"><img src="/asset/images/content/tip_mobile_slide_arrow_prev.png" alt="" width="17"/></div>
                    </div>
                    <div class="swiper-container txt_slide">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt_data">
                                    <p class="title">01. 동절기에는 각종 경고등과 메시지에 더욱 관심 갖기</p>
                                    <p class="info">MINI는 차량에 이상이 발생했을 때, CC(Check Control) 메시지로 해당 문제를 상세히 알려줍니다. 온도에 민감한 배터리의 상태, 안전운전에 있어 매우 중요한 타이어의 공기압 등은 겨울철에 특히 주의를 기울여야 합니다.</p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt_data">
                                    <p class="title">02. 노면 온도 7℃ 이하에는 윈터 타이어 사용하기</p>
                                    <p class="info">노면 온도가 7℃ 이하로 떨어지면 타이어의 접지력은 급격하게 감소합니다. 안전을 위하여 겨울철에는 윈터 타이어로 반드시 교체해야 하며, 타이어 트레드의 깊이도 꼭 점검해주세요.</p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt_data">
                                    <p class="title">03. 냉각수와 워셔액 관리하기</p>
                                    <p class="info">부동액과 물을 섞어 사용하는 냉각수는 엔진의 열을 식혀주는 역할을 합니다. 그러나 혼합 비율이 맞지 않을 경우 냉각수가 얼어 고장의 원인이 되기도 합니다. 겨울철에는 반드시 물과 부동액의 비율을 5:5로 섞어서 사용해야 하며 비율을 알 수 없다면 서비스 센터에서 점검을 받아야 합니다.유리를 닦는 것 외에도 결빙 방지 역할을 하는 워셔액은 여름용을 사용할 경우 얼 수 있으니 반드시 사계절용으로 사용해 주세요.</p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt_data">
                                    <p class="title">04. 와이퍼 관리하기</p>
                                    <p class="info">겨울철에는 낮은 기온이나 눈으로 인해 와이퍼가 얼거나 유리창에 붙을 수 있습니다. 이를 방지하기 위해 영하로 떨어지는 날에는 주차 시 두꺼운 종이를 와이퍼와 유리 사이에 끼워주세요.<br>※ 일부 모델은 와이퍼 블레이드를 높이 세울 수 없으니 조금만 들어서 종이를 끼워 주시기 바랍니다.</p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt_data">
                                    <p class="title">05. 올바른 히터 사용 및 필터 점검하기</p>
                                    <p class="info">겨울철에는 창문을 닫고 히터를 사용하는 것이 일반적입니다.하지만 장시간 운전할 경우 실내가 건조해지고 산소 부족으로 인해 졸음이 오기 쉬우므로 자주 환기를 시켜줘야 합니다.또한 히터 필터는 일정 기간이 지나면 여과 기능이 떨어지며, 곰팡이나 세균이 번식하여 건강을 해칠 수 있으니 교체 주기를 체크해 주시는 것이 좋습니다.</p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt_data">
                                    <p class="title">06. 운행 전 충분히 예열하기</p>
                                    <p class="info">겨울철에는 운전을 시작하기 전 차량을 충분히 예열해 주어야합니다.엔진을 비롯해 각종 오일류가 냉각되어 점도가 높아진상태에서 운행을 하면 각종 부품들의 내구성이 떨어지게 됩니다.시동을 걸고 잠시 예열하는 동안 시야 확보를 위해 차량에 쌓인 눈과 성에를 제거하는 것도 좋은 방법입니다.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
			e.WINTER tip_list_wrap --%>

            <div class="tip_list_wrap">
                <div class="t_list" id="Tlist">
                    <section id="list_view" class="">
                        <div class="view_wrap">
                            <div class="view_cell">
                                <div class="container_big">                
                                    <div class="thumb"><div class="d_t"><div class="d_c"><img src="/asset/images/content/tip_list_view01.gif" alt=""/></div></div></div>
                                    <div class="txt_data">
                                        <p class="title">01. 각종 경고등과 메시지에 관심 갖기</p>
                                        <p class="info">MINI는 CBS(Condition Based Service)의 안내에 따라 점검을 받습니다.<br>갑작스런 이상이 발생했을 때에는 CC(Check Control) 메시지로 상세히 알려줍니다.<br>각종 메시지 내용을 토대로 가까운 공식 딜러 서비스 센터에세 수리나 점검을 받으면 됩니다. </p>
                                    </div>
                                </div>
                            </div>
                            <div class="view_cell">
                                <div class="container_big">                
                                    <div class="thumb"><div class="d_t"><div class="d_c"><img src="/asset/images/content/tip_list_view02.gif" alt=""/></div></div></div>
                                    <div class="txt_data">
                                        <p class="title">02. 알맞은 방법으로 세차하기</p>
                                        <p class="info">표면의 오염물질이나 도장면의 흠집을 방치하면 부식이 촉진되니 각종 유해물질을 수시로 닦아내 주세요.<br>휠 뿐 아니라 안쪽의 산성비와 염화칼슘 또한 꼼꼼하게 제거해야 합니다.<br>세척 후 전용 왁스와 코팅제로 표면을 코팅하면 보호효과를 얻습니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="view_cell">
                                <div class="container_big">                
                                    <div class="thumb"><div class="d_t"><div class="d_c"><img src="/asset/images/content/tip_list_view03.gif" alt=""/></div></div></div>
                                    <div class="txt_data">
                                        <p class="title">03. 계절에 맞는 타이어 사용하기</p>
                                        <p class="info">기온이 7도 이하로 떨어지는 겨울철에는 반드시 윈터 타이어를 사용하세요.<br>반면, 영상 7도 이상에서는 일반 타이어보다 오히려 잘 미끄러질 수 있으니 겨울철 이외에는 탈거해야 합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="view_cell">
                                <div class="container_big">                
                                    <div class="thumb"><div class="d_t"><div class="d_c"><img src="/asset/images/content/tip_list_view04.gif" alt=""/></div></div></div>
                                    <div class="txt_data">
                                        <p class="title">04. 가끔은 엔진룸도 확인하기</p>
                                        <p class="info">엔진룸 속 이물질을 방치하면 스파크를 일으키는 등 문제의 원인이 될 수 있습니다.<br>가끔 낙엽이나 이물질이 들어가지 않았는지 확인해보세요.<br>만약 누유된 부분이 있다면 연성세제를 스폰지에 묻혀 닦아낸 후 물로 씻거나, 공식 딜러 서비스 센터를 방문하여 점검을 받아보세요.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="view_cell">
                                <div class="container_big">                
                                    <div class="thumb"><div class="d_t"><div class="d_c"><img src="/asset/images/content/tip_list_view05.gif" alt=""/></div></div></div>
                                    <div class="txt_data">
                                        <p class="title">05. 주차장 바닥을 살펴 누유 확인하기</p>
                                        <p class="info">가끔씩은 탑승 전에 바닥을 확인해 누유와 누수를 체크하세요.<br>주차장 바닥은 내 차 상태를 확인할 수 있는 훌륭한 모니터입니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="view_cell">
                                <div class="container_big">                
                                    <div class="thumb"><div class="d_t"><div class="d_c"><img src="/asset/images/content/tip_list_view06.gif" alt=""/></div></div></div>
                                    <div class="txt_data">
                                        <p class="title">06. 전자장비는 함부로 개조하지 않기</p>
                                        <p class="info">전기배선과 전자장비는 복잡하게 유기적으로 연결되어 있어 사소한 개조가 어떤 연쇄작용을 일으킬지 모릅니다.<br>화재위험도 있습니다. 전기배선과 전자장비의 점검 및 보수는 꼭 공식 딜러 서비스 센터를 이용하세요.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="view_cell">
                                <div class="container_big">                
                                    <div class="thumb"><div class="d_t"><div class="d_c"><img src="/asset/images/content/tip_list_view07.gif" alt=""/></div></div></div>
                                    <div class="txt_data">
                                        <p class="title">07. 믿을 수 있는 곳에서 수리하기</p>
                                        <p class="info">잘못된 수리는 문제를 키워 결과적으로 더 큰 손해를 부릅니다.<br>사고나 고장으로 한 번 손상된 차량은 더욱 면밀한 진단으로 올바르게 수리되어야 합니다.<br>MINI는 고객님의 안전을 최우선의 가치로 생각합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="view_cell">
                                <div class="container_big">                
                                    <div class="thumb"><div class="d_t"><div class="d_c"><img src="/asset/images/content/tip_list_view08.gif" alt=""/></div></div></div>
                                    <div class="txt_data">
                                        <p class="title">08. 순정 카매트와 에어필터 등 실내 챙기기</p>
                                        <p class="info">쾌적한 실내는 안전운전을 위한 첫걸음. 순정품 카매트를 제 위치에 고정하고 곳곳의 먼지를 닦으며 환기시켜 주세요.<br>또한 실내에 흘리거나 묻은 음료나 과자 등의 이물질을 닦아주세요.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="view_cell">
                                <div class="container_big">                
                                    <div class="thumb"><div class="d_t"><div class="d_c"><img src="/asset/images/content/tip_list_view09.gif" alt=""/></div></div></div>
                                    <div class="txt_data">
                                        <p class="title">09. 미리미리 주유하기</p>
                                        <p class="info">연로가 거의 없는 상태에서 주행하지 마세요.<br>주유탱크 바닥에 수분 침전을 증가시키고 침전된 수분이 연료필터로 이동해 연료분사 펌프를 조기에 마모시킬 수 있습니다.<br>미리 주유하는 습관뿐 아니라, 주기적으로 연료 필터를 교환하는 것도 중요합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="view_cell">
                                <div class="container_big">                
                                    <div class="thumb"><div class="d_t"><div class="d_c"><img src="/asset/images/content/tip_list_view010.gif" alt=""/></div></div></div>
                                    <div class="txt_data">
                                        <p class="title">10. 장거리 운행 전 차량을 점검하기</p>
                                        <p class="info">타이어 공기압과, 오일양을 확인합니다.<br>오일양은 컨트롤 디스플레이 1. 차량 정보 2. 차량 상태 3. 엔진오일양에서 확인합니다.<br>와이퍼와 워셔액을 보충하고 각종 램프류 작동여부를 체크합니다.<br>마지막으로 트렁크의 안전삼각대를 위치해 기억해 둡니다.</p>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <p class="bg"></p>
                    </section>

                    <div class="list_item_wrap first">
                        <div class="list_item">
                            <p class="thumb"><img src="/asset/images/content/tip_list_thumb01.gif" alt=""/></p>
                            <p class="info">01. 각종 경고등과 메시지에 관심 갖기</p>
                        </div>
                    </div>
                    <div class="list_item_wrap">
                        <div class="list_item">
                            <p class="thumb"><img src="/asset/images/content/tip_list_thumb02.gif" alt=""/></p>
                            <p class="info">02. 알맞은 방법으로 세차하기</p>
                        </div>
                    </div>
                    <div class="list_item_wrap">
                        <div class="list_item">
                            <p class="thumb"><img src="/asset/images/content/tip_list_thumb03.gif" alt=""/></p>
                            <p class="info">03. 계절에 맞는 타이어 사용하기</p>
                        </div>
                    </div>
                    <div class="list_item_wrap">
                        <div class="list_item">
                            <p class="thumb"><img src="/asset/images/content/tip_list_thumb04.gif" alt=""/></p>
                            <p class="info">04. 가끔은 엔진룸도 확인하기</p>
                        </div>
                    </div>
                    <div class="list_item_wrap">
                        <div class="list_item">
                            <p class="thumb"><img src="/asset/images/content/tip_list_thumb05.gif" alt=""/></p>
                            <p class="info">05. 주차장 바닥을 살펴 누유 확인하기</p>
                        </div>
                    </div>
                    <div class="list_item_wrap">
                        <div class="list_item">
                            <p class="thumb"><img src="/asset/images/content/tip_list_thumb06.gif" alt=""/></p>
                            <p class="info">06. 전자장비는 함부로 개조하지 않기</p>
                        </div>
                    </div>
                    <div class="list_item_wrap">
                        <div class="list_item">
                            <p class="thumb"><img src="/asset/images/content/tip_list_thumb07.gif" alt=""/></p>
                            <p class="info">07. 믿을 수 있는 곳에서 수리하기</p>
                        </div>
                    </div>
                    <div class="list_item_wrap">
                        <div class="list_item">
                            <p class="thumb"><img src="/asset/images/content/tip_list_thumb08.gif" alt=""/></p>
                            <p class="info">08. 순정 카매트와 에어필터 등 실내 챙기기</p>
                        </div>
                    </div>
                    <div class="list_item_wrap">
                        <div class="list_item">
                            <p class="thumb"><img src="/asset/images/content/tip_list_thumb09.gif" alt=""/></p>
                            <p class="info">09. 미리미리 주유하기</p>
                        </div>
                    </div>
                    <div class="list_item_wrap">
                        <div class="list_item">
                            <p class="thumb"><img src="/asset/images/content/tip_list_thumb010.gif" alt=""/></p>
                            <p class="info">10. 장거리 운행 전 차량을 점검하기</p>
                        </div>
                    </div>
                </div>
                <div class="t_mobile_list">
                    <div class="swiper-container thumb_slide">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><img src="/asset/images/content/tip_m_slide_visual01.gif" alt=""/></div>
                            <div class="swiper-slide"><img src="/asset/images/content/tip_m_slide_visual02.gif" alt=""/></div>
                            <div class="swiper-slide"><img src="/asset/images/content/tip_m_slide_visual03.gif" alt=""/></div>
                            <div class="swiper-slide"><img src="/asset/images/content/tip_m_slide_visual04.gif" alt=""/></div>
                            <div class="swiper-slide"><img src="/asset/images/content/tip_m_slide_visual05.gif" alt=""/></div>
                            <div class="swiper-slide"><img src="/asset/images/content/tip_m_slide_visual06.gif" alt=""/></div>
                            <div class="swiper-slide"><img src="/asset/images/content/tip_m_slide_visual07.gif" alt=""/></div>
                            <div class="swiper-slide"><img src="/asset/images/content/tip_m_slide_visual08.gif" alt=""/></div>
                            <div class="swiper-slide"><img src="/asset/images/content/tip_m_slide_visual09.gif" alt=""/></div>
                            <div class="swiper-slide"><img src="/asset/images/content/tip_m_slide_visual010.gif" alt=""/></div>
                        </div>
                        <div class="swiper-pagination"></div>
                        <!-- Add Arrows -->
                        <div class="swiper-button-next"><img src="/asset/images/content/tip_mobile_slide_arrow_next.png" alt="" width="17"/></div>
                        <div class="swiper-button-prev"><img src="/asset/images/content/tip_mobile_slide_arrow_prev.png" alt="" width="17"/></div>
                    </div>
                    <div class="swiper-container txt_slide">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="txt_data">
                                    <p class="title">01. 각종 경고등과 메시지에 관심 갖기</p>
                                    <p class="info">MINI는 CBS(Condition Based Service)의 안내에 따라 점검을 받습니다. 갑작스런 이상이 발생했을 때에는 CC(Check Control) 메시지로 상세히 알려줍니다. 각종 메시지 내용을 토대로 가까운 공식 딜러 서비스 센터에세 수리나 점검을 받으면 됩니다. </p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt_data">
                                    <p class="title">02. 알맞은 방법으로 세차하기</p>
                                    <p class="info">표면의 오염물질이나 도장면의 흠집을 방치하면 부식이 촉진되니 각종 유해물질을 수시로 닦아내 주세요. 휠 뿐 아니라 안쪽의 산성비와 염화칼슘 또한 꼼꼼하게 제거해야 합니다. 세척 후 전용 왁스와 코팅제로 표면을 코팅하면 보호효과를 얻습니다.</p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt_data">
                                    <p class="title">03. 계절에 맞는 타이어 사용하기</p>
                                    <p class="info">기온이 7도 이하로 떨어지는 겨울철에는 반드시 윈터 타이어를 사용하세요. 반면, 영상 7도 이상에서는 일반 타이어보다 오히려 잘 미끄러질 수 있으니 겨울철 이외에는 탈거해야 합니다.</p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt_data">
                                    <p class="title">04. 가끔은 엔진룸도 확인하기</p>
                                    <p class="info">엔진룸 속 이물질을 방치하면 스파크를 일으키는 등 문제의 원인이 될 수 있습니다. 가끔 낙엽이나 이물질이 들어가지 않았는지 확인해보세요. 만약 누유된 부분이 있다면 연성세제를 스폰지에 묻혀 닦아낸 후 물로 씻거나, 공식 딜러 서비스 센터를 방문하여 점검을 받아보세요.</p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt_data">
                                    <p class="title">05. 주차장 바닥을 살펴 누유 확인하기</p>
                                    <p class="info">가끔씩은 탑승 전에 바닥을 확인해 누유와 누수를 체크하세요. 주차장 바닥은 내 차 상태를 확인할 수 있는 훌륭한 모니터입니다.</p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt_data">
                                    <p class="title">06. 전자장비는 함부로 개조하지 않기</p>
                                    <p class="info">전기배선과 전자장비는 복잡하게 유기적으로 연결되어 있어 사소한 개조가 어떤 연쇄작용을 일으킬지 모릅니다. 화재위험도 있습니다. 전기배선과 전자장비의 점검 및 보수는 꼭 공식 딜러 서비스 센터를 이용하세요.</p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt_data">
                                    <p class="title">07. 믿을 수 있는 곳에서 수리하기</p>
                                    <p class="info">잘못된 수리는 문제를 키워 결과적으로 더 큰 손해를 부릅니다. 사고나 고장으로 한 번 손상된 차량은 더욱 면밀한 진단으로 올바르게 수리되어야 합니다. MINI는 고객님의 안전을 최우선의 가치로 생각합니다.</p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt_data">
                                    <p class="title">08. 순정 카매트와 에어필터 등 실내 챙기기</p>
                                    <p class="info">쾌적한 실내는 안전운전을 위한 첫걸음. 순정품 카매트를 제 위치에 고정하고 곳곳의 먼지를 닦으며 환기시켜 주세요. 또한 실내에 흘리거나 묻은 음료나 과자 등의 이물질을 닦아주세요.</p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt_data">
                                    <p class="title">09. 미리미리 주유하기</p>
                                    <p class="info">연로가 거의 없는 상태에서 주행하지 마세요. 주유탱크 바닥에 수분 침전을 증가시키고 침전된 수분이 연료필터로 이동해 연료분사 펌프를 조기에 마모시킬 수 있습니다. 미리 주유하는 습관뿐 아니라, 주기적으로 연료 필터를 교환하는 것도 중요합니다.</p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="txt_data">
                                    <p class="title">10. 장거리 운행 전 차량을 점검하기</p>
                                    <p class="info">타이어 공기압과, 오일양을 확인합니다. 오일양은 컨트롤 디스플레이 1. 차량 정보 2. 차량 상태 3. 엔진오일양에서 확인합니다. 와이퍼와 워셔액을 보충하고 각종 램프류 작동여부를 체크합니다. 마지막으로 트렁크의 안전삼각대를 위치해 기억해 둡니다.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%@ include file="/WEB-INF/jsp/cmmn/include/bottom_info.jspf"%>
        </section>
        <p id="btn_top_scroll"><a href="javascript:gnb.goTop();"><img src="/asset/images/common/btn_top.gif" alt="top" width="48"/></a></p>
        
		<%@ include file="/WEB-INF/jsp/cmmn/include/footer.jspf" %>

        <div id="share_pop">
            <div class="share_wrap">
                <div class="share_con">
                    <p class="share_title">SHARE THIS PAGE</p>
                    <ul>
                        <li><a href="#" onclick="javascript:fnShareFb(); return false;" class=""><img src="/asset/images/content/btn_share_icon01.png" alt="facebook" width="80"/></a></li>
                        <li><a href="#" onclick="javascript:fnShareStory(); return false;" class=""><img src="/asset/images/content/btn_share_icon02.png" alt="cacao" width="80"/></a></li>
                        <li><a href="#" onclick="javascript:fnShareTwitter(); return false;" class=""><img src="/asset/images/content/btn_share_icon03.png" alt="twitter" width="80"/></a></li>
                    </ul>
                    <div class="share_copy">
                        <div class="read"><input type="text" name="shareUrl" id="shareUrl" readonly value="http://www.mini-buildyourdrive.co.kr/tipsGuide/index.do"/></div>
                        <a href="#" onclick="javascript:fnTxtCopy(); return false;">URL 복사</a>
                        <div style="display: none;"><textarea id="clipboardArea"></textarea></div>
                    </div>
                </div>
                <p class="btn_close"><a href="javascript:checkSharePop();"><img src="/asset/images/content/btn_share_close.png" alt=""/></a></p>
            </div>
        </div>			

     </div>
        <script src="/asset/js/common.js"></script>
        <script src="/asset/js/bootstrap.min.js"></script>
        <script src="/asset/js/TweenMax.min.js"></script>  
        <script src="/asset/js/tipsGuide.js"></script>            
    </body>
</html>
