<%@page import="com.daowen.util.*"%>
<%@page import="com.daowen.entity.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%

       String forwardurl=request.getParameter("forwardurl");
       if(forwardurl!=null)
         request.setAttribute("forwardurl", forwardurl);
 %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员登录</title>

      <script type="text/javascript" src="${pageContext.request.contextPath}/webui/jquery/jquery-1.8.3.min.js"></script>
     <link href="${pageContext.request.contextPath}/webui/artDialog/skins/default.css" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath}/webui/artDialog/jquery.artDialog.source.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/webui/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <script  type="text/javascript" src="${pageContext.request.contextPath}/webui/jquery/jquery.validate.min.js"></script>
    <script type="text/javascript"  src="${pageContext.request.contextPath}/webui/jquery/jquery.validateex.js" ></script>
    <script type="text/javascript"  src="${pageContext.request.contextPath}/webui/jquery/jquery.metadata.js" ></script>
    <script type="text/javascript"  src="${pageContext.request.contextPath}/webui/jquery/messages_cn.js" ></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/e/css/box.all.css" type="text/css"></link>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/e/css/index.css" type="text/css"></link>

   <link rel="stylesheet" href="${pageContext.request.contextPath}/e/css/login.css" type="text/css"></link>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/e/css/register.css" type="text/css"></link>
   
<script type="text/javascript">
 
           $(function(){
	           
	            $.metadata.setType("attr","validate");
	            $("#form1").validate();
	        });  
 
 </script>


</head>
<body>

<div class="login_top clearfix">
	<a href="${pageContext.request.contextPath}/e/index.jsp" class="login_logo">

                 华玉家具销售平台
	</a>
</div>

<div class="login_form_bg">
	<div class="login_form_wrap clearfix">
		<div class="login_banner fn-left"></div>
		<div class="slogan fn-left">华玉家具· 在线销售</div>
		<div class="login_form fn-right">
			<div class="login_title clearfix">
				<h1>用户登录</h1>
				<a href="${pageContext.request.contextPath}/e/register.jsp">立即注册</a>
			</div>
			<div class="login-box">
				<form name="form1" id="form1" method="post" action="${pageContext.request.contextPath}/admin/huiyuanmanager.do">
					<input type="hidden" name="actiontype" value="login" />
					<input type="hidden"  name="forwardurl" value="${forwardurl}"/>
					<input type="hidden"  name="errorurl" value="/e/login.jsp"/>
					<input type="hidden" name="usertype"  value="0" />

					<div class="table-row">
						<input type="text" name="accountname" validate="{required:true,messages:{required:'请输入账户名'}}" class="login-input" value="${accountname}" placeholder="请输入用户名">

					</div>
					<div class="table-row">
						<input type="password" name="password" class="login-input" validate="{required:true,messages:{required:'请输入密码'}}" value="${password}" placeholder="请输入密码">

					</div>

					<div class="more_input clearfix">
						<a href="${pageContext.request.contextPath}/e/forgetpw.jsp">忘记密码</a>
					</div>
					<input type="submit" name="" value="登录" class="login-btn">
				</form>
				<div >
					${errormsg}
				</div>

			</div>
		</div>
	</div>
</div>


</body>
</html>