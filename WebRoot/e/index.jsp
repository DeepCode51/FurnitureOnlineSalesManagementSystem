<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="import.jsp" %>
<!DOCTYPE HTML>
<%
    NoticeService noticeSrv=BeansUtil.getBean("noticeService", NoticeService.class);
    ShangpinService shangpinSrv=BeansUtil.getBean("shangpinService", ShangpinService.class);
    List<Notice> listNotice=noticeSrv.getTopEntity("order by id desc",10);
    if(listNotice!=null)
    	request.setAttribute("listNotice", listNotice);
   
    List<Shangpin> listHotshangpin=shangpinSrv.getEntity("where hot=1");
    if(listHotshangpin!=null)
    	request.setAttribute("listHotshangpin", listHotshangpin);
    ShangpinBuilder spBuilder=new ShangpinBuilder(request);
    
    JiaodiantuService jdtSrv=BeansUtil.getBean("jiaodiantuService", JiaodiantuService.class);
    List<Jiaodiantu> listJiaodiantu=jdtSrv.getEntity("");
    if(listJiaodiantu!=null)
    	request.setAttribute("listJiaodiantu", listJiaodiantu);
    

%>
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统首页</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/e/css/index.css" type="text/css"></link>
<link href="${pageContext.request.contextPath}/e/css/box.all.css"  rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/e/css/carousel.css" />
    <script src="${pageContext.request.contextPath}/webui/jquery/jquery-1.12.4.min.js" type="text/javascript"></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/e/js/carousel.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/e/js/jquery.SuperSlide.2.1.1.js'></script>
    <script type="text/javascript">
        $(function () {
            //$(".index-sp-nav").css("display","block");
            $(".slideBox").slide({
            	titCell:".hd ul",
            	mainCell:".bd ul",
            	autoPlay:true,
            	autoPage:true
            });
        });
    </script>

</head>
<body>

	<jsp:include page="head.jsp"></jsp:include>
	
	 	<div id="slideBox" class="slideBox">
			<div class="hd">
				<ul class="smallUl"></ul>
			</div>
			<div class="bd">
				<ul>
				   <c:forEach var="jdt" items="${requestScope.listJiaodiantu}">
				      <li><a href="${jdt.href}" ><div style="background:url(${pageContext.request.contextPath}${jdt.tupian}) no-repeat  #f7ddea; background-position:center; width:100%; height:460px;"></div></a></li>
				    </c:forEach>
					
				</ul>
			</div>
			<!-- 下面是前/后按钮代码，如果不需要删除即可 -->
			<a class="prev" href="javascript:void(0)"></a>
			<a class="next" href="javascript:void(0)"></a>

		</div>
	  
	<div class="clearfix"></div>
	
	
	<div class="wrap round-block">

		
		<%=new IndexcolumnsBuilder(request).buildColumns() %>
	
	</div>
		
	
   
	<jsp:include page="bottom.jsp"></jsp:include>



</body>
</html>