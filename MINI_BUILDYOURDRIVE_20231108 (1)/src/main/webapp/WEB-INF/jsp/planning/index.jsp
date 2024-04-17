<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/cmmn/include/declare.jspf"%>
<%
  /**
  * @Class Name : index.jsp
  * @Description : 메인
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
		<script type="text/javascript">
		// <![CDATA[  

		    $(document).ready(function(){

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
            ${ planningVO.pcConts }
		</section>
		<p id="btn_top_scroll"><a href="javascript:gnb.goTop();"><img src="/asset/images/common/btn_top.gif" alt="top" width="48"/></a></p>
  

		<%@ include file="/WEB-INF/jsp/cmmn/include/footer.jspf" %>	

     </div>              
     <script src="/asset/js/common.js"></script>
     <script src="/asset/js/bootstrap.min.js"></script>
     <script src="/asset/js/main.js"></script>
    </body>
</html>
