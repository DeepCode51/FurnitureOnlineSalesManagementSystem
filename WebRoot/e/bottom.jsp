
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="import.jsp"%>
 <div class="fn-clear"></div>
		<div class="frendlink wrap">
			<strong>友情链接：</strong>
			<%=new FriendlinkBuilder().build() %>
			 
		</div>


	<div class="fn-clear"></div>
	
<div class="footer no-mp">
	<div class="foot_link">
		<a href="#">东方学院</a>
		<span>|</span>
		<a href="#">信息学院</a>
		<span>|</span>
		<a href="#">电子商务</a>
		<span>|</span>
		<a href="#">真的棒！</a>
	</div>
	<p>华玉家具欢迎您！</p>
	<p>电话：18358938120   </p>
</div>
	

	


<script src="${pageContext.request.contextPath}/webui/bootstrap/js/bootstrap.js" type="text/javascript"></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/webui/combo/dropdownaction.js'></script>
<script src="${pageContext.request.contextPath}/webui/jquery-confirm/jquery-confirm.min.js"></script>
<script src="${pageContext.request.contextPath}/webui/jquery-confirm/jquery-confirmex.js"></script>