<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/cmmn/include/declare.jspf"%>
<%
  /**
  * @Class Name : gate.jsp
  * @Description : 분기
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
    <c:choose>
	    <c:when test="${ osType eq 'A' }">
			<script>
				//alert("안드로이드 마켓 이동 .......");
				$('title').html('안드로이드 마켓 이동 .......');
				location.href = "https://play.google.com/store/apps/details?id=kr.co.bmwkorea.bmwmini";
			</script>
	    </c:when>
	    <c:when test="${ osType eq 'I' }">
			<script>
				//alert("앱스토어 이동 .......");
				$('title').html('앱스토어 이동 .......');
				location.href = "https://itunes.apple.com/us/app/mini-plus/id1383631400?l=ko&ls=1&mt=8";
			</script>
	    </c:when>
	    <c:otherwise>
			<script>
				location.href = "/";
			</script>
	    </c:otherwise>
    </c:choose>
</head>
<body>
<div class="wrap">
</div>
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
