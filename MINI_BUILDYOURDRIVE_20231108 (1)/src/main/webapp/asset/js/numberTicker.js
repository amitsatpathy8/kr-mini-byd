/*
function numberTicker(t,_com){

	var numberRing = {
		_value:0,										
		_comma:true,
		_letter:0,
		_cData:new Array(),
		_nData:new Array(),
		_moveDirection:"up",
		_autoStart:false,
		_count:3,
		_target:null,
		//number init(reset)
		init:function(_t){
			numberRing._comma = _com;
			numberRing._target = _t;
			numberRing._value = numberRing._target.text();
			numberRing._target.text('');
			numberRing.charSet(String(numberRing._value));
			if(numberRing._autoStart)numberRing.start();
			
		},
		//number animation start
		start:function(){
			for(var i=0;i<numberRing._cData.length;i++){
				if(numberRing._cData[i].__type == 0){
					numberRing._cData[i].start();	
				}
			}
		},
		//number animate reset
		reset:function(_cn){
			for(var i=0;i<numberRing._cData.length;i++){
				if(numberRing._cData[i].__type == 0){
					numberRing._cData[i].reset();
					numberRing._cData[i].start();	
				}
			}
		},
		//number set
		charSet:function(_char){
			var __cword = (numberRing._comma)?numberRing.numCommaAdd(_char):_char;
			var __dword = __cword.split("");
			var __target = numberRing._target;

			//html insert
			for(var i=0;i<__dword.length;i++){
				var __comHtml = jQuery("<div class='comma'><p><span>"+__dword[i]+"</span></p></div>");
				if(__dword[i] != ","){
					numberRing._cData[i] = new numberRing.__item(__dword[i]);
					numberRing._nData.push(Number(__dword[i]))
				}else{
					numberRing._cData[i] = (__comHtml);
					__target.append(numberRing._cData[i]);
				}
			}		
		},
		//item add
		__item:function(_value){
			this.__type		=	0;
			var __count		=	numberRing._count;
			var __target	=	numberRing._target;
			var __value		=	_value;
			var __Smin		=	300;
			var __Smax		=	500;
			var __list		=	jQuery("<div class='num'><p></p></div>");
			var __data ={
				_offy:0,
				_dy:0,
				_ease:'linear',
				_speed:Math.floor(Math.random()*(__Smin-__Smax)+__Smax)
			}
			//1~9 create
			for(var i=0;i<=9;i++){
				__list.find('>p').append("<span>"+i+"</span>");
			}
			__target.append(__list);

			var ry	=	Math.floor(Math.random()*(9-9)+9)		
			var Action = {
				start:function(){
					__data._ease = (__count == 1)?'easeOutQuad':'linear';
					__data._offy = (__count == numberRing._count)?(__list.height()*ry)*-1:(__list.find('> p').height()-__list.height())*-1;
					__data._dy =(__count==1)?Number(__value)*__list.height()*-1:0;
					__list.find('> p').stop(true).css({'top':__data._offy}).animate({'top':__data._dy},__data._speed,__data._ease,function(){
						__count--	
						if(__count != 0)__data._speed = __data._speed*2,Action.start();
						
					});
				},
				reset:function(){
					__count = numberRing._count;
					__data._ease = 'linear';
					__data._speed = Math.floor(Math.random()*(__Smin-__Smax)+__Smax);
				}
			}
			this.start = function(){Action.start();}
			this.reset = function(){Action.reset();}
		},
		//comma add
		numCommaAdd:function(_num){
			 str = String(_num);
			 return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
		},
		//comma del
		numCommaDel:function(_num){
			str = String(str);
			return str.replace(/[^\d]+/g, '');
		}
	}

	this._reset = function(){
		numberRing.reset();
	}

	numberRing.init(t);

}*/

function numberTicker(t,_com,_speed,_m){

	var numberRing = {
		_timer:null,
		_max:0,
		_min:0,
		_cur:0,
		_num:0,
		_speed:null,
		_target:null,
		//number init(reset)
		init:function(_t){
			numberRing._target = _t;
			numberRing._speed = _speed;
			numberRing._min = _m;
			numberRing._max = numberRing.numCommaDel(numberRing._target.text());
			numberRing._target.text('0');
		},
		//number animation start
		start:function(){

		},
		//number animate reset
		reset:function(){
			numberRing._cur = numberRing._min;
			numberRing._num = 0;			
			var _char = numberRing.numCommaAdd(Math.floor(numberRing._cur));
			numberRing._target.text(_char);
			clearInterval(numberRing._timer);
			numberRing._timer = setInterval(numberRing.loop,1000/60);
		},
		loop:function(){
			var _no,_del
			if(numberRing._speed == 'slow'){
				_no = 0.005;
				_del = 0.05;
				numberRing._cur =  numberRing._cur + _del;
			}else{
				//_no = 50;
				_no = 5;
				_del = 1;
				numberRing._num += _no;
				numberRing._cur =  numberRing._cur + numberRing._num + _del;
			}
			if(Math.floor(numberRing._cur) > Math.floor(numberRing._max)){
				numberRing._cur = Math.floor(numberRing._max);
				clearInterval(numberRing._timer);				
			}
			var _char = numberRing.numCommaAdd(Math.floor(numberRing._cur));
			numberRing._target.text(_char);
		},
		//comma add
		numCommaAdd:function(_num){
			 str = String(_num);
			 return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
		},
		//comma del
		numCommaDel:function(_num){
			str = String(_num);
			return str.replace(/[^\d]+/g, '');
		}
	}

	this._reset = function(){
		numberRing.reset();
	}

	numberRing.init(t);

}
