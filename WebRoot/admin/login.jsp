<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统登录</title>
<style type="text/css">
    body{
       background-color:#3b5d88;
    }
</style>

    <link href="${pageContext.request.contextPath}/webui/bootstrap/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/login.css">

    <script src="${pageContext.request.contextPath}/webui/jquery/jquery-1.12.4.min.js"></script>

    <script src="${pageContext.request.contextPath}/webui/jquery/jquery.validate.min.js" type="text/javascript"></script>

    <script src="${pageContext.request.contextPath}/webui/jquery/jquery.metadata.js" type="text/javascript"></script>
  <script type="text/javascript"> 
  
      
       if(top.window!=window)
    	   top.location.href="login.jsp";
      
      $(function(){
      
    	  $("#btnReloadImage,#imgvc").on("click",function () {

              $("#imgvc").prop("src", "../plusin/image.jsp?time="+new Date().getMilliseconds());

          });
           $("#loginForm").submit(function(){
              
              //alert($("#txtUsername").val());
               if($("#txtUsername").val()=="")
               {
                  alert("用户名不能为空");
                  return false;
               }
               return true;
           
           });
           var userType="${usertype}";
      		
      	  if(userType!=""){
      			
      			$("[name=usertype][value="+userType+"]").prop("checked",true);
      		}
     	   
          
      
      });
  
  </script>
							

</head>
<body class="Login">
  
<div class="ld_header">
		<div class="ld_header_in">
			<div class="ld_logo">
			
			      华玉家具网上销售系统后台
			</div>
	    </div>
	</div>
	<div class="ldL_con">
		<div class="ldL_con_in">
			<div class="ld_form">
				<form method="post" action="${pageContext.request.contextPath}/admin/login.do" id="loginForm">
           
           <input type="hidden" name="actiontype" value="login" />
           <input type="hidden" name="usertype" value="0" />
           <input type="hidden" name="forwardurl"   value="/admin/index.jsp"/>
  
					<h3 class="form_title">管理员登录</h3>
					<p>
						<input type="text" name="username" class="login-input"  value="${username}"/>
					</p>
					<p>
						<input type="password" value="${password}" name="password" class="login-input ld_pass"/>
					</p>
					
					
					<div class="ld_login">
					
					    <button class="ld_login_in">登录</button>
						<div id="login-msg">${errmsg}</div>
						 
					</div>
					
				</form>
			</div>
		</div>
		
	</div>
<div class="ld_footer">
    <div class="ld_footer_in">
        <p> Copyright&copy;2022浙江财经大学东方学院</p>
    </div>
</div>


</body>
</html>