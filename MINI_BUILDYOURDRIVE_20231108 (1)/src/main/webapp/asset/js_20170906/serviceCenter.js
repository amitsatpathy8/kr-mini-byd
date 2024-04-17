/*************************************************************************************************
 *    @CreateDate    : 2016.09.13
 *    @ModifyDate    :
 *    @FileName    : main.js
 *    @Author        : GENIUS OH

 @ Class
 1. Main                            : 서비스센터 스크립트 제어 클래스

 *    @Searching List
 1. elements                        : 클래스에서 사용할 변수 선언
 2. init                            : 초기 항목들 선언
 3  addEvent                        : 페이지 로드후의 이벤트 처리
*************************************************************************************************/

// console.log 사용을 위해 선언
if( window.console == undefined ){ console = { log : function(){} }; }

( function(){
    /**
     * 서비스센터 스크립트 제어 클래스
     * @class 서비스센터 스크립트 제어 클래스
     * @version 2016.09.13
    */
    this.ServiceCenter = {
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

            if( jQuery('.jq_service_center_anchor').size() > 0 ) {
                self.serviceCenterFunc();
            }
        },
        serviceCenterFunc: function() {
            var _this = {};

            _this.fadeSpeed = 300;

            _this.targetObj = jQuery('.jq_service_center_anchor');

            _this.targetObj.on('click', function( event ) {
                event.preventDefault();

                _this.obj = jQuery(this);

                jQuery('.jq_store_area').fadeOut( 200, function() {
                    _this.prevIdx = jQuery('.jq_service_center_items').attr('data-idx');

                    _this.idx = _this.obj.attr('data-idx');
                    _this.storeName = _this.obj.attr('data-store-name');
                    _this.address = _this.obj.attr('data-address');
                    _this.tel = _this.obj.attr('data-tel');
                    _this.time_1 = _this.obj.attr('data-time_1');
                    _this.time_2 = _this.obj.attr('data-time_2');
                    _this.mapLink = _this.obj.attr('data-map-link');
                    _this.mapImg = _this.obj.attr('data-map-Img');

                    _this.time = '';

                    if( _this.time_2 ) {
                        _this.time = _this.time_1 + '<br />' + _this.time_2;
                    }

                    if( jQuery('.jq_store_name').size() > 0 ) {
                        jQuery('.jq_store_name').html('<span>' + _this.storeName + '</span>');
                    }

                    if( jQuery('.jq_address').size() > 0 ) {
                        jQuery('.jq_address').html( _this.address );
                    }

                    if( jQuery('.jq_tel').size() > 0 ) {
                        jQuery('.jq_tel').html( _this.tel );
                    }

                    if( jQuery('.jq_time').size() > 0 ) {
                        jQuery('.jq_time').html( _this.time );
                    }
                    
                    if( jQuery('.jq_map_img').size() > 0 ) {
                        jQuery('.jq_map_img').attr('src', _this.mapImg);
                    }
                    
                    if( jQuery('.jq_map_img_anchor').size() > 0 ) {
                        jQuery('.jq_map_img_anchor').attr('href', _this.mapLink);
                    }

                    if( _this.prevIdx ) {
                        _this.prevObj = jQuery('.jq_service_center_item').filter('[data-idx="' + _this.prevIdx + '"]');
                        if( _this.prevObj.size() > 0 ) {
                            _this.prevObj.removeClass('actived');
                        }
                    }

                    _this.nowObj = jQuery('.jq_service_center_item').filter('[data-idx="' + _this.idx + '"]');

                    if( _this.nowObj.size() > 0 ) {
                        _this.nowObj.addClass('actived');
                    }

                    jQuery('.jq_service_center_items').attr('data-idx', _this.idx);

                    jQuery('.jq_store_area').fadeIn( 500 );
                 });
            });

            setTimeout( function() {
                jQuery('.jq_service_center_item').filter('[data-idx="1"]').find('.jq_service_center_anchor').trigger('click');
            }, 10);
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
    ServiceCenter.init();
});
