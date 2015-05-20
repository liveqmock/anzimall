<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="基本信息" /></jsp:include>

<div class="main">

	<form action="/updateUserDetail_wap.shtml" method="post" class="form basic_setting">

		<h1><img src="${userdetail.portrait}"></h1>

		
		<cite>
			<span><em>*</em>用户名：</span>
			<input type="text" name="username" check="required,phone,ajax_register_phone" value="${userdetail.username }" placeholder="请输入您的用户名">
		</cite>	

		<cite>
			姓别：
			<label><input type="radio" name="sex" value="1" <c:if test="${userdetail.sex eq '1'}">checked="checked"</c:if> >男</label>
			<label><input type="radio" name="sex" value="0" <c:if test="${userdetail.sex eq '0'}">checked="checked"</c:if> >女</label>
			<label><input type="radio" name="sex" value="2" <c:if test="${userdetail.sex eq '2'}">checked="checked"</c:if> >保密</label>
		</cite>

		<cite class="js-birthday">
			<span>生日：</span>
			<input type="text" name="birthday" value="${userdetail.birthday }"  placeholder="请输入您的生日" >
		</cite>

		<cite>
			<span><em>*</em>邮箱：</span>
			<input type="text" name="email" check="required,phone,ajax_register_phone" value="${userdetail.email }" placeholder="请输入您的邮箱地址">
		</cite>

		<cite>
			<span><em>*</em>QQ：</span>
			<input type="text" name="qq" check="required,phone,ajax_register_phone" value="${userdetail.qq }" placeholder="请输入您的QQ号">
		</cite>

		<cite class="js-city">
			<span>地址：</span>
			<select class="prov" name="province" default="${userdetail.province }"  style="width: 80px;"></select>
			<select class="city" name="city" default="${userdetail.city }" style="width:100px;"></select>
			<select class="town" name="county" default="${userdetail.county }" style="width:244px;"></select>
		</cite>

		
		<cite>
			<div id="map" style="height: 300px;"></div>
			<input type="text" name="location" class="mapval" style="display: none;" value="${userdetail.location}">
		</cite>
		

		<cite><input type="submit" value="确认修改"></cite>

	
	</form>


</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>


<script>
	function loadJScript() {
		var script = document.createElement("script");
		script.type = "text/javascript";
		script.src = "http://api.map.baidu.com/api?type=quick&ak=6MnMg2PV1zdUKf99lHPmfduG&callback=init";
		document.body.appendChild(script);
	}

	function init() {
		var mapval = $('.mapval');
		var mappoi = mapval.val().length>0? mapval.val().split(',') :[113.980066,22.543784];


		var map = new BMap.Map("map");            	// 创建Map实例
		var point = new BMap.Point(mappoi[0],mappoi[1]); //中点
		var marker = new BMap.Marker(point);
		map.centerAndZoom(point, 14);
		map.addControl(new BMap.ZoomControl());
		map.addOverlay(marker);

		map.addEventListener("click", function(e){
			map.removeOverlay(marker);
			marker = new BMap.Marker(e.point);
			map.addOverlay(marker);
			mapval.val(e.point.lng + ", " + e.point.lat);
		});

	}

	loadJScript();

</script>