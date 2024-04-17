/*************************************************************************************************
 *    @CreateDate    : 2016.09.13
 *    @ModifyDate    :
 *    @FileName      : mini.js
 *    @Author        : GENIUS OH

 @ Class
 1. Main                            : 미니 리제네레이션 스크립트 제어 클래스

 *    @Searching List
 1. elements                        : 클래스에서 사용할 변수 선언
 2. init                            : 초기 항목들 선언
 3  addEvent                        : 페이지 로드후의 이벤트 처리
*************************************************************************************************/

// console.log 사용을 위해 선언
if( window.console == undefined ){ console = { log : function(){} }; }

( function(){
    /**
     * 미니 리제네레이션 스크립트 제어 클래스
     * @class 미니 리제네레이션 스크립트 제어 클래스
     * @version 2016.09.13
    */
    this.Mini = {
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
	mResizeCheck = $(window).width();
    Mini.init();
    eventView(0);

	kmNumber = new numberTicker($('.car_visual').find('.km .number_format'),true,'fast',30000);
	yearNumber = new numberTicker($('.car_visual').find('.year .number_format'),false,'slow',0);
	kmNumber._reset();
	yearNumber._reset();
});


$(window).resize(function(){
	if (mResizeCheck != $(window).width()) {
		kmNumber._reset();
		yearNumber._reset();
		mResizeCheck = $(window).width();
	}	
});

function eventView(_i){
    $('.event_tab_con').find('> div').each(function(){
        if(_i == $(this).index()){
            $(this).stop(true).fadeIn(300);
        }else{
            $(this).stop(true).hide();
        }
    });

    $('.event_tab').find('.btn_tab > p').each(function(){
        if(_i == $(this).index()){
            $(this).find('a').addClass('actived');
        }else{
            $(this).find('a').removeClass('actived');
        }
    });
}
