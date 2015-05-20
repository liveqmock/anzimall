<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/wap/header.jsp" flush="true"/>


<div class="main">



	<section class="product_map">
		<h2>商家名称：${list_merchant.username }<br>商家地址：${list_merchant.provice }${list_merchant.city }${list_merchant.county }${list_merchant.address }</h2>
		<div><div id="map" style="height: 300px;"></div></div>
		<script>var defult = '${list_merchant.location}';</script>
	</section>


	<div class="product_more"><a href="/getMerchantsDetails_wap.shtml?mid=${list_merchant.id }" >进入商家查看更多商品>></a></div>



</div>

<script>
	function loadJScript() {
		var script = document.createElement("script");
		script.type = "text/javascript";
		script.src = "http://api.map.baidu.com/api?type=quick&ak=6MnMg2PV1zdUKf99lHPmfduG&callback=init";
		document.body.appendChild(script);
	}

	function init() {
		var p = defult.length>0? defult.split(',') : [113.980066,22.543784];
		var map = new BMap.Map("map");            	// 创建Map实例
		var point = new BMap.Point(p[0],p[1]); //中点
		map.centerAndZoom(point, 14);   
		map.addOverlay(new BMap.Marker(point));
	}

	loadJScript();

</script>

<jsp:include page="/wap/footer.jsp" flush="true"/>