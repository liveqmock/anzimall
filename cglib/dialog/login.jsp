<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+path;
%>
<style>
	.dialog_login {position: relative; width: 450px;}
	.dialog_login cite{margin-left: 90px;outline: none;}
	.dialog_login cite span{outline: none;width: 80px;white-space: nowrap;margin-left: 40px;}
	.dialog_login .form_remember{line-height: 24px;margin-bottom: 10px;margin-top: -8px;}
	.dialog_login input.notecheckcode + i{left: 240px;	}
	.dialog_login .fukrm_item i{font-size: 12px;margin-left: -2px; border: none;background-color:transparent;text-indent: -999em;overflow: hidden; }
	.dialog_login i:before{display: none;}
	.dialog_login i:after{display: none;}
	.dialog_login i.form-note-success{display: none;}
	.dialog_login i.form-note-warn{display: block;}
	.dialog_login i.form-note-error{display: block;}

</style>

		<form class="fukrm dialog_login" action="/login.shtml" method="post" >
			<h2><!-- 登录异业联盟 -->&nbsp;</h2>
			<input type="hidden" name="">
			<cite><span>账号：</span>
				<input type="text" name="phone" placeholder="请输入手机账号" check="required,phone">
			</cite>
			
			<cite><span>密码：</span>
				<input type="password" name="password" placeholder="请输入登录密码" check="required,password">
			</cite>

			<!--<cite><span>验证码：</span>
				<input type="text" name="checkcode" placeholder="请输入右边验证码" check="required" style="width: 120px;" class="notecheckcode">
				<b class="checkcode"><img src="http://www.anzimall.com:8080/authImg?type=loginCode&id=1" /></b>
			</cite>-->
			
			<cite><span>验证码：</span>
				<input type="text" name="checkcode" placeholder="请输入右边验证码" check="required" style="width: 120px;" class="notecheckcode">
				<b class="checkcode"><img src="<%=basePath%>:8084/authImg?type=loginCode&id=1" onclick="this.src=this.src.replace(/\d*$/,(new Date).getTime())"/></b>
			</cite>

			<cite class="form_remember">
				<!-- <input type="checkbox" name="" checked="checked">记住密码 -->
				<a href="/to_getPassword.shtml">忘记密码?</a>
				<a href="/to_register_info.shtml" style="color:#ee2323;">立即注册</a>
			</cite>
			<br>
			<cite><input type="submit" value="登 &nbsp; 录"></cite>
			<br>
		</form>	


	<script>
	
	

		dialog.dialog("option","title", "登录积分商城");
		$('.dialog_login').fukrm().ajaxForm({
			type:'POST',
			dataType:'json',
			beforeSubmit:function(data,form){
				var check = [];
				form.find('input,textarea,select').filter('[check]').filter(':visible').each(function(){
					var the = $(this);
					if(!the.siblings('i').is('.form-note-success') && !the.formCheck() ){
						check.push(the);
					}
				});
				if(check.length>0){
					check[0].focus();
					return false;
				}
				dialog.dialog('close');
				loading.show();
			},
			success: function(data) {
				if(data.status && data.status === '200'){
					GLOBAL.loaded = true;
					if(GLOBAL.loop.length>0){
						for(var i=GLOBAL.loop.length;i>0;){i-- ;(function(fun){ fun(); })(GLOBAL.loop[i]);}
						GLOBAL.loop.length = 0;
					}else{
						location.reload();
					}
				}else{
					$('.checkcode img').trigger('click');
					dialog.dialog('open');
					alert(data.message);
				}

			}

		});


	</script>