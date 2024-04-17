/*************************************************************************************************
 *    @CreateDate    : 2016.09.13
 *    @ModifyDate    :
 *    @FileName      : main.js
 *    @Author        : GENIUS OH

 @ Class
 1. Main                            : 메인페이지 스크립트 제어 클래스

 *    @Searching List
 1. elements                        : 클래스에서 사용할 변수 선언
 2. init                            : 초기 항목들 선언
 3  addEvent                        : 페이지 로드후의 이벤트 처리
*************************************************************************************************/

// console.log 사용을 위해 선언
if( window.console == undefined ){ console = { log : function(){} }; }

( function(){
    /**
     * 메인페이지 스크립트 제어 클래스
     * @class 메인페이지 스크립트 제어 클래스
     * @version 2016.09.13
    */
    this.Main = {
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
    Main.init();       
});


$(function(){
    npos = $(window).scrollTop();
    SW    =    $(window).width();
    SH    =    $(window).height();
    mResizeCheck = $(window).width();
    offerList.init();
	aniFlag = false;

	$('#model_motion').find('.cell').on('mouseenter mouseleave',function(e){
		if(SW > 1024){
			if(e.type == 'mouseenter'){
				$(this).find('.btn_more').stop(true).fadeIn(300);
			}else{
				$(this).find('.btn_more').stop(true).fadeOut(300);
			}
		}
	});
});//end resize

$(window).scroll(function() {			
	npos = $(window).scrollTop();
	SW	=	$(window).width();
	SH	=	$(window).height();
	modelEffect()

	
	
});//end scroll



$(window).resize(function(){
    if (mResizeCheck != $(window).width()) {
        npos = $(window).scrollTop();
        SW    =    $(window).width();
        SH    =    $(window).height();
        offerList.resize();        
        mResizeCheck = $(window).width();
    }
});//end resize

/* 170228 수정 */
function modelEffect(){
	if(aniFlag == false){
		if (npos >= $('#model_motion').offset().top - (SH)) {
			var len = 5;
			var _i = 0;
			model_Timer = setInterval(function(){
				if(_i >= len-1){
					clearInterval(model_Timer);
				}
				$('#model_motion').find('> ul > li').eq(_i).addClass('effect');
				_i++
			},250);
			aniFlag = true;
		}
	}
}
/* 170228 수정 끝 */


var offerList = {
    swiper:null,
    innerArr:null,
    innerH:0,
    init:function(){        
        offerList.innerArr = [];        
		offerList.swiper = new Swiper('.swiper-container', {
			pagination: '.swiper-pagination',
			slideToClickedSlide:true,
			slidesPerView: 'auto',
			breakpoints:{
                1024:{
					centeredSlides: true,
					spaceBetween:50,
				},
				1980:{
					centeredSlides:false,
					spaceBetween:0,
				}
			}
		});
        offerList.resize();
        $('.swiper-container').find('.slide_cell img' ).on( 'load', offerList.resize );
    },
    resize:function(){
        if(SW >= 640){
            offerList.innerArr = [];
            $('.swiper-container').find('.slide_cell').each(function(){
                offerList.innerArr.push($(this).find('> div').innerHeight());
            });
            $('.swiper-container').find('.slide_cell').height(Math.max.apply(null,offerList.innerArr));
        }

		if(SW > 1024){
			offerList.swiper.lockSwipes()
		}else{
			offerList.swiper.unlockSwipes()
		}
    }
}







function checkModelList(){
	if(SW <= 1024){
		$('#model_motion').find('.btn_all').stop(true).fadeIn(300);	
	}
}