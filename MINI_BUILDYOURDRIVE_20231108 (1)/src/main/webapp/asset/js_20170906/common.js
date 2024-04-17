/*************************************************************************************************
 *    @CreateDate    : 2016.09.13
 *    @ModifyDate    :
 *    @FileName      : common.js
 *    @Author        : GENIUS OH

 @ Class
 1. Main                            : 공통 스크립트 제어 클래스

 *    @Searching List
 1. elements                        : 클래스에서 사용할 변수 선언
 2. init                            : 초기 항목들 선언
 3  addEvent                        : 페이지 로드후의 이벤트 처리
*************************************************************************************************/

// console.log 사용을 위해 선언
if( window.console == undefined ){ console = { log : function(){} }; }

( function(){
    /**
     * 공통 스크립트 제어 클래스
     * @class 공통 스크립트 제어 클래스
     * @version 2016.09.13
    */
    this.Common = {
        /**
         * 사용할 변수들을 선언
         *     2016.09.13
         * @function
        */
        elements : {
        },
        /**
         * 초기화 해야할 테이터를 정의
         *     2016.09.13
         * @function
        */
        init: function() {
            var self = this;
        },
        /**
         * 클래스의 종료 함수
         * 2016.09.13
         * @function
        */
        endFunction : function() {
        }
    };
} )( window );

/*
 * 실행부
*/
jQuery( function(){
    Common.init();
    if($('.accordion-menu').length > 0){
		$('.accordion-menu').each(function(){			
			var _menu = new Accordion($(this));
		});
		//Accordion_Menu.init();
	}
});


AgentFlag = set_ui();
$(function(){    
    npos = $(window).scrollTop();
    SW    =    $(window).width();
    SH    =    $(window).height();    
    gnb.init();
	 gnb.scrollCheck();
});//end ready

$(window).scroll(function() {            
    npos = $(window).scrollTop();
    SW    =    $(window).width();
    SH    =    $(window).height();
    gnb.scrollCheck();
});//end scroll

$(window).resize(function(){
    npos = $(window).scrollTop();
    SW    =    $(window).width();
    SH    =    $(window).height();

});//end resize


var gnb = {
    btnTopFlag:null,
    init:function(){
        gnb.btnTopFag = (npos >= 68)?false:true;
    },
    GnbCheck:function(){
        if($("#header").hasClass("open")){
            $("#header").removeClass("open");            
        }else{
            $("#header").addClass("open");
        }        
    },
    scrollCheck:function(){
        var _topY = 68;
        
        if(npos >= _topY){
            if(!gnb.btnTopFlag){
                $('#btn_top_scroll').addClass('open');
            }
            gnb.btnTopFlag = true;
			
			var _bottomY = $('#wrapper').innerHeight() - SH - ($('#footer').innerHeight())
			
			if(npos >= _bottomY){
				var _y = npos - _bottomY+20;
				$('#btn_top_scroll').css({'bottom':_y});
			}else{
				$('#btn_top_scroll').attr('style','');
			}
        }else{
            if(gnb.btnTopFlag){
                $('#btn_top_scroll').removeClass('open');
            }            
            gnb.btnTopFlag = false;
        }
    },
	goTop:function(){
		$('html,body').stop(true).animate({scrollTop:0},600);
	}
}

function Accordion(_t){
	var _target = _t;
	var Accordion_Menu = {
		init:function(){
			_target.find('> li > a').click(function(){
				Accordion_Menu.ClickHand($(this).parent().index());
			});
		},
		ClickHand:function(_i){
			_target.find('> li').each(function(){
				if($(this).index() == _i){
					if($(this).hasClass('open')){
						$(this).removeClass('open').find('.acoordion-data').stop(true).slideUp(300);
					}else{
						$(this).addClass('open').find('.acoordion-data').stop(true).slideDown(300,function(){
							var _y = $(this).parents('li').offset().top-$('#header').innerHeight();
							$('html,body').stop(true).animate({scrollTop:_y},600);
						});
						if($(this).find('.gallery_thumb').length > 0){
							m_slide_resize();//reloadSlider
						}
					}
				}else{
					$(this).removeClass('open').find('.acoordion-data').stop(true).slideUp(300);
				}
			});
		}
	}

	Accordion_Menu.init();
}

function set_ui(){
	var UserAgent = navigator.userAgent;
	var UserFlag	=	true;
	if (UserAgent.match(/iPhone|iPad|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent.match(/LG|SAMSUNG|Samsung/) != null)
	{
		//mobile!!
		UserFlag = false;
	}
	return UserFlag
};//end set_ui