$(function(){
	mResizeCheck = $(window).width();
});

$(document).ready(function(){
	topCate.init();
});


$(window).resize(function(){
	if (mResizeCheck != $(window).width()) {
		
		if(SW > 640){
			$('#header').removeClass('popOpen');
			$('#p_top').removeClass('mOpen');
		}
		mResizeCheck = $(window).width();
	}	
});

var topCate = {
	cur:-1,
	cur02:-1,
	init:function(){
		topCate.intro();
		
		if(AgentFlag){
			$('#p_top').find('ul > li > div').on('mouseenter mouseleave click',function(e){					
				if(e.type == 'mouseenter'){
					topCate.cur02 = $(this).parent().index();
					if(!$(this).hasClass('hover')){						
						topCate.overHand($(this).parent().index());
					}
				}else if(e.type == 'mouseleave'){
					
					if(!$(this).hasClass('hover')){
						topCate.outHand($(this).parent().index());
					}
				}else if(e.type == 'click'){
					topCate.cur = $(this).parent().index();
				}
			});
			$('#p_top').find('ul').mouseleave(function(){
				topCate.activeHand();
			});
		}
	},
	set:function(_i){
		topCate.cur = _i;
		topCate.overHand(topCate.cur);
	},
	overHand:function(_i){
		console.log('over');
		$('#p_top').find('ul > li').each(function(){
			if($(this).index() == _i){
				$(this).find('.cell').addClass('hover');
				//TweenMax.to($(this).find('.thumb .off'),0.9,{x:-50,alpha:0,ease:Quad.easeOut});
				//TweenMax.set($(this).find('.thumb .on'),{x:-30,y:-10,alpha:0});
				//TweenMax.to($(this).find('.thumb .on'),0.3,{x:0,y:0,alpha:1,ease:Quad.easeIn});
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
				TweenMax.to($(this).find('.thumb .on'),0.6,{x:50,y:10,alpha:0,ease:Quad.easeOut});
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
	openDetail:function(){
		var _dy = 500*-1
		$('#product_detail').show();
		galleryResize();
		TweenMax.to($('#product_detail'),0.6,{css:{'margin-top':_dy,'opacity':1},ease:Quad.easeOut});
	},
	ajaxLoadMain:function(_url){
		$.ajax({
            type: "POST",
            url:_url,
            success: function (response) {		
				$('#p_con').html(response);
            },
            error: function (e) {

			}
		});
	},
	ajaxLoadDetail:function(_url){
		$.ajax({
            type: "POST",
            url:_url,
            success: function (response) {		
				$('#product_detail').html(response);
            },
            error: function (e) {

			}
		});
	},
	ajaxLoadList:function(_url){
		$.ajax({
            type: "POST",
            url:_url,
            success: function (response) {		
				$('#detail_list').html(response);
            },
            error: function (e) {

			}
		});
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

