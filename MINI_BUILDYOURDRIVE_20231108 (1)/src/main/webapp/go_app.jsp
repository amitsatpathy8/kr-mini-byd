<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlusÂ®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <meta property="og:url" content="http://bmw.co.kr" />
  <meta property="og:title" content="BMW PLUS 앱 다운로드" />
  <meta property="og:type" content="" />
  <meta property="og:image" content="" />
  <meta property="og:description" content="" />
  <title>Document</title>
  <script>
  function goGate(){
	  var varUA = navigator.userAgent.toLowerCase(); //userAgent 값 얻기
	  if (varUA.match('android') != null) { 
	      //안드로이드 일때 처리
		  document.getElementById("osType").value = "A";
	   
	  } 
	  else if (varUA.indexOf("iphone")>-1||varUA.indexOf("ipad")>-1||varUA.indexOf("ipod")>-1) { 
	      //IOS 일때 처리
		  document.getElementById("osType").value = "I";
	   
	  } 
	  else {
	      //아이폰, 안드로이드 외 처리
		  document.location.href = "http://bmw.co.kr";
	      return;
	  }
	  document.gateForm.submit();
  }
  </script>
 </head>
 <body onload="goGate();">
 <form name="gateForm" id="gateForm" method="get" action="https://www.drbmw.co.kr/gate">
 <input type="hidden" name="osType" id="osType" value="" />
 </form>
<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
	
	ga('create', 'UA-81211249-6', 'auto');
	ga('send', 'pageview');
</script>
 </body>
</html>
