<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%

	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";


	request.setAttribute("basePath",basePath);
	request.setAttribute("css","global,register");
	request.setAttribute("js","global,fukrm,register");
%>

	<jsp:include page="/cglib/header.jsp" flush="true"/>
	<div class="mainbox">
	
	
		<div class="content reginster cs">
			
			<h2 class="register_title">
				<strong>帐户注册</strong>
				<span>已注册，马上<a href="/login_basic.shtml">登录</a>/<a href="/index.html">返回首页</a></span>
			</h2>
			<div class="register_steps"><img src="/images/register_steps2.png" alt=""></div>

			<form action="register_detail.shtml" class="fukrm fukrm-ajax">
			
				<cite><span>头像：</span>
					<label><input type="text" name="portrait" value="images/1_5.gif" class="js-cutpic" cutsize="100,100" /></label>
					<p>温馨提示：本地上传图片大小不能超过500K。</p>
				</cite>
				
				
				<cite>
					<span><em>*</em>用户名：</span>
					<input type="text" name="username" check="required" style="width:136px" placeholder="请输入用户名" class="fukrm_save">
				</cite>
				
				<cite><span>性别：</span>
					<label style="display:inline-block;margin-left:10px;"><input type="radio" name="sex" value="1"> 男</label>
					<label style="display:inline-block;margin-left:10px;"><input type="radio" name="sex" value="0"> 女</label>
					<label style="display:inline-block;margin-left:10px;"><input type="radio" name="sex" value="2" checked="checked"> 保密</label>
				</cite>
					
				<cite class="js-birthday">
					<span>生日：</span>
					<input type="text" name="birthday" value="" class="datepicker" readonly="readonly">
				</cite>


				<cite>
					<span>邮箱：</span>
					<label><input type="text" name="email" value="" check="email" placeholder="请输入您的邮箱地址" ></label>
				</cite>

				<cite>
					<span>QQ：</span>
					<label><input type="text" name="qq" value="" check="required" placeholder="请输入您的QQ号码"></label>
				</cite>


				<cite class="js-form-city">
					<span>地址：</span>
					<select class="prov" name="province" default=""  style="width: 80px;"></select>
					<select class="city" name="city" default="" style="width:100px;"></select>
					<select class="town" name="county" default="" style="width:244px;"></select>
				</cite>

				<cite>
					<span>详细地址：</span>
					<label><input type="text" name="address" value="" style="width: 430px;"></label>
				</cite>

				<cite>
					<span><em>*</em>地图位置：</span>
					<div id="map" style="width:430px;height:300px;"></div>
					<input type="text" class="mappoin" name="location" placeholder="地图位置" check="required" style="margin-top: 10px;"  value="113.980066,22.543784" >
					<p>在地图中点击选择你的地图坐标,方便我们给你提供最近最方便的兑换地点</p>
				</cite>
				<br><br>
				<cite><input type="submit" value="提交"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="/to_register_over.shtml" style="color:#ee2323;">跳过此步>></a></cite>
				<br><br><br><br><br>
			
			</form>

				<div class="reginster_note">
				<h2>常见FAQ</h2>
				<dl>
					<dt class="active"><a >1、提交个人详情信息</a></dt>
					<dd>注册成功后，在此页面填写您的个人详情信息，此步为选填，您可以选择跳过</dd>
					<dt><a href="/help.shtml?help=1001">2、注册流程</a></dt>
				</dl>
			</div>

		</div>

	</div>

	<!-- 页脚 -->
	<jsp:include page="/cglib/footer.jsp" flush="true"/>


	<script>






		function loadJScript() {
			var script = document.createElement("script");
			script.type = "text/javascript";
			script.src = "http://api.map.baidu.com/api?v=2.0&ak=6MnMg2PV1zdUKf99lHPmfduG&callback=init";
			document.body.appendChild(script);
		}
		function init() {
			// 百度地图API功能

			var mappoi = $('.mappoin');
			var mappoin = mappoi.val().split(',')

			var map = new BMap.Map("map");
			map.centerAndZoom(new BMap.Point(113.980066,22.543784), 11);
			map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT}));
			map.addControl(new BMap.NavigationControl()); 
			// map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL})); 
			map.enableScrollWheelZoom();                 //启用滚轮放大缩小

			map.addEventListener("click", function(e){
				mappoi.val(e.point.lng + ", " + e.point.lat);
			});
		}  

		window.onload = loadJScript;  //异步加载地图

	</script>


