<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%
request.setAttribute("css","global,backstage");
request.setAttribute("js","global,fukrm,backstage");

%>

<jsp:include page="/cglib/header.jsp" flush="true"/>

<div class="main">
	<jsp:include page="/cglib/user/user_sidebar.jsp" flush="true"/>	

	<div class="content">
		

		<form action="/updateUserDetail.shtml" class="fukrm" method="post" enctype="multipart/form-data">
			
			<br>
			<cite><span>头像：</span>
				<label><input type="text" name="portrait" value="${userdetail.portrait}" class="js-cutpic" cutsize="100,100" /></label>
				<p>温馨提示：本地上传图片大小不能超过500K。</p>
			</cite>
			
			<cite>
				<span><em>*</em>用户名：</span>
				<input type="text" name="username" value="${userdetail.username }" check="required" style="width:136px" placeholder="请输入用户名" class="fukrm_save">
			</cite>
			<cite><span>性别：</span>
				<label style="display:inline-block;margin-left:10px;"><input type="radio" name="sex" value="1" <c:if test="${userdetail.sex eq '1'}">checked="checked"</c:if> > 男</label>
				<label style="display:inline-block;margin-left:10px;"><input type="radio" name="sex" value="0" <c:if test="${userdetail.sex eq '0'}">checked="checked"</c:if> > 女</label>
				<label style="display:inline-block;margin-left:10px;"><input type="radio" name="sex" value="2" <c:if test="${userdetail.sex eq '2'}">checked="checked"</c:if> > 保密</label>
			</cite>
				
			<cite class="js-birthday">
				<span>生日：</span>
				<input type="text" name="birthday" value="${userdetail.birthday }"  placeholder="请输入您的生日" >
			</cite>


			<cite>
				<span>邮箱：</span>
				<label><input type="text" name="email" value="${userdetail.email }" check="email" placeholder="请输入您的邮箱地址" ></label>
			</cite>

			<cite>
				<span>QQ：</span>
				<label><input type="text" name="qq" value="${userdetail.qq }" check="required" placeholder="请输入您的QQ号码"></label>
			</cite>


			<cite class="js-form-city">
				<span>地址：</span>
				<select class="prov" name="province" default="${userdetail.province }"  style="width: 80px;"></select>
				<select class="city" name="city" default="${userdetail.city }" style="width:100px;"></select>
				<select class="town" name="county" default="${userdetail.county }" style="width:244px;"></select>
			</cite>

			<cite>
				<span><em>*</em>地图位置：</span>
				<div id="map" style="width:430px;height:300px;"></div>
				<input type="text" name="location" placeholder="地图位置" check="required" style="margin-top: 10px;"  value="${userdetail.location}" >
				<p>在地图中点击选择你的地图坐标,方便我们给你提供最近最方便的兑换地点</p>
			</cite>
			<br><br>
			<cite><input type="submit" value="确认修改"> </cite>
			<br><br><br><br><br>
		
		</form>


	</div>

</div>









<!--页脚-->
<jsp:include page="/cglib/footer.jsp" flush="true"/>


<script>


		function loadJScript() {
			var script = document.createElement("script");
			script.type = "text/javascript";
			script.src = "http://api.map.baidu.com/api?v=2.0&ak=6MnMg2PV1zdUKf99lHPmfduG&callback=init";
			document.body.appendChild(script);
		}
		function init() {
			var poinval = $('form input[name=location]')
			var val = poinval.val() || '';
			if(val.length>0){
				var p = val.split(',');
			}else{
				var p = [113.980066,22.543784];
			}

			// 百度地图API功能
			var map = new BMap.Map("map");
			var poin = new BMap.Point(p[0],p[1]);
			map.centerAndZoom(poin, 11);
			map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT}));
			map.addControl(new BMap.NavigationControl()); 
			map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL})); 
			map.enableScrollWheelZoom();                 //启用滚轮放大缩小

			var marker =  new BMap.Marker(poin);
			map.addOverlay(marker);
			map.addEventListener("click", function(e){
				poinval.val(e.point.lng + ", " + e.point.lat);
				map.removeOverlay(marker);
				marker = new BMap.Marker(e.point,{icon:new BMap.Icon("/images/map_head.png", new BMap.Size(39,25))});  // 创建标注
				map.addOverlay(marker);
			});
		}  

		window.onload = loadJScript;  //异步加载地图

	</script>

