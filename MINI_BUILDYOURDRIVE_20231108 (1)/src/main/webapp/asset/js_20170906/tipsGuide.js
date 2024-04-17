/*************************************************************************************************
 *    @CreateDate    : 2016.09.13
 *    @ModifyDate    :
 *    @FileName      : tipsGuide.js
 *    @Author        : GENIUS OH

 @ Class
 1. Main                            : 팁 & 가이드 스크립트 제어 클래스

 *    @Searching List
 1. elements                        : 클래스에서 사용할 변수 선언
 2. init                            : 초기 항목들 선언
 3  addEvent                        : 페이지 로드후의 이벤트 처리
*************************************************************************************************/

// console.log 사용을 위해 선언
if( window.console == undefined ){ console = { log : function(){} }; }

( function(){
    /**
     * 팁 & 가이드 스크립트 제어 클래스
     * @class 팁 & 가이드 스크립트 제어 클래스
     * @version 2016.09.13
    */
    this.TipsGuide = {
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
    TipsGuide.init();
});



$(function(){
    npos = $(window).scrollTop();
    SW    =    $(window).width();
    SH    =    $(window).height();
    List.init();

	TweenMax.set($('#share_pop').find('.share_con'),{scale:1.1,alpha:0,y:-50});
});
$(window).scroll(function() {            
    npos = $(window).scrollTop();
    SW    =    $(window).width();
    SH    =    $(window).height();
});//end scroll

$(window).resize(function(){
    SW    =    $(window).width();
    SH    =    $(window).height();    
    if(SW > 640)List.resizeData();
});//end resize


var List = {
    ActiveTarget:null,
    mobileTopSwiper:null,
    mobileBottomSwiper:null,
	first:false,
    Cur:0,
    init:function(){
        var d_t    =    $('#list_view').find('.view_detail');
        var l_t    =    $('div.t_list');        
        l_t.find('div.list_item_wrap .list_item').click(function(){
            List.Cur = $(this).parent().index();
            List.listViewOpen($(this).parent());
        });
        List.listViewOpen($('div.first'));


        List.mobileTopSwiper = new Swiper('.thumb_slide', {
            pagination: '.swiper-pagination',
            slideToClickedSlide:true,
            centeredSlides: true,
            paginationClickable: true,
            autoHeight:true,
			loop:true,
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev'
        });

        List.mobileBottomSwiper = new Swiper('.txt_slide', {
            autoHeight:true,
			loop:true
        });

        List.mobileTopSwiper.params.control = List.mobileBottomSwiper;
        List.mobileBottomSwiper.params.control = List.mobileTopSwiper;

    },
    resizeData:function(){
        List.resetListAlign(List.ActiveTarget);
        List.resetView();
    },
    resetView:function(){
        var _bg = $('#list_view').find('.bg');
        var _w = SW;
        var _left= _w/2
        _bg.css({'width':_w,'margin-left':_left*-1});
    },
    resetListAlign:function(_t){
        //List turn class set
        var v_t            =    $('#list_view');
        var l_t            =    $('div.t_list');
        var a_t            =    _t;
        var l_n;
        var n_t;
        
        if(SW <= 1024){
            windowState = 'pad02';
        }
        if(SW > 1024){
            windowState = 'desk';
        }
        v_t.insertBefore(l_t.find('> div:first'));
        switch(windowState){
            case 'wide':l_n = 5;
                    break;
            case 'desk':l_n = 4;
                    break;
            case 'pad':l_n = 3;
                    break;
            case 'pad02':l_n = 2;
                    break;
            case 'mobile':l_n = 1;
                    break;
        }
        l_t.find('> div').each(function(){
            var _i = $(this).index();
            if(parseInt(_i%l_n) == 0){
                $(this).removeClass('item_last').addClass('item_last');
            }else{
                $(this).removeClass('item_last')
            }
        });        
        
        l_t.find('> div').each(function(){
            if($(this).index() >= a_t.index()){                
                if($(this).hasClass('item_last')){
                    n_t = $(this);                
                    return false;
                }                
            }
        });
        if(n_t){
            v_t.insertAfter(n_t);            
        }else{
            v_t.insertAfter(l_t.find('> div:last'));
        }
    },
    listViewOpen:function(_t){
        List.ActiveTarget = _t;                    
        List.resetListAlign(_t);
        $('#list_view').removeClass('close').addClass('open');
        _t.addClass('active').siblings().removeClass('active');    
        List.Cur = _t.index();
        $('#list_view').find('.view_wrap > div').each(function(){
            if($(this).index() == _t.index()){
                $(this).stop(true).fadeIn(300);
            }else{
                $(this).stop(true).hide();
            }
        });
        List.resetView();
		if(List.first){
			var _y = List.ActiveTarget.offset().top-$('#header').innerHeight();
			$('html,body').stop().animate({scrollTop:_y},600)
		}
		List.first = true;
    },
    listViewClose:function(){
        var v_t            =    $('#list_view');
        var l_t            =    $('div.t_list');
        v_t.removeClass('open').addClass('close');
        v_t.insertBefore(l_t.find('> div:first'));

    }
}


function checkSharePop(){
	if($('#share_pop').hasClass('open')){
		//close
		$('#share_pop').stop(true).fadeOut(300,function(){
			$('#share_pop').removeClass('open');
			$('#header').removeClass('popOpen');

			TweenMax.set($('#share_pop').find('.share_con'),{scale:1.1,alpha:0,y:-50});
		});
	}else{
		//open
		$('#share_pop').stop(true).fadeIn(300,function(){
			$('#share_pop').addClass('open');
			$('#header').addClass('popOpen');
			TweenMax.to($('#share_pop').find('.share_con'),1.2,{scale:1,alpha:1,y:0,ease:Expo.easeOut});
		});
		
	}
}