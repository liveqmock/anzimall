<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%

request.setAttribute("css","global,details");
request.setAttribute("js","global,fukrm,details");

%>
		
<jsp:include page="/cglib/header.jsp" flush="true"/>

<style type="text/css">.demo{margin: 40px auto;position: absolute;width: 50px;right: 135px;top: -15px;}</style>

	<div class="mainbox cs">
		
		<div class="details_msg cs">
			<div class="details_location">
				<a href="/get_moreall.shtml" target="_blank">所有商品</a>＞分类><a href="/get_moreall.shtml?tid=${goodsmap.tname}" target="_blank">${goodsmap.tname}</a>
				<span><a href="/get_moreall.shtml?tid=${goodsmap.tname}" target="_blank">查看更多同类商品>></a></span>

			</div>
			<div class="propic">
				<h2><img src="${goodsmap.picpath}"></h2>
				<i class="toleft">&nbsp;</i>
				<div class="propic_slides">
					<ul>
						<c:if test="${!empty goodsmap.picpath}"><li><img src="${goodsmap.picpath}" ></li></c:if>
						<c:if test="${!empty goodsmap.picpath2}"><li><img src="${goodsmap.picpath2}" ></li></c:if>
						<c:if test="${!empty goodsmap.picpath3}"><li><img src="${goodsmap.picpath3}" ></li></c:if>
						<c:if test="${!empty goodsmap.picpath4}"><li><img src="${goodsmap.picpath4}" ></li></c:if>
					</ul>
				</div>
				<i class="toright">&nbsp;</i>
			</div>


			<div class="info">
				<h1><img src="/images/noreser.png" alt="免约"><strong></strong>${goodsmap.name}</h1>
				<p>【商品描述】${goodsmap.account }</p>
				<cite>
					<%--<div>原价：<s>¥${goodsmap.integral }</s></div>--%>
					现价：<strong>${goodsmap.pay_maney}</strong>元+<strong>${goodsmap.pay_integer }</strong>积分
					<c:if test="${goodsmap.type eq '0'}">&nbsp;&nbsp;
					<c:if test="${!empty goodsmap.freight}"></c:if> 运费：<strong>${goodsmap.freight }</strong>元 </c:if>
					<c:if test="${empty goodsmap.freight}">运费：<strong>0</strong>元</c:if> 
					<span><br/><em>${goodsmap.amount }</em>人已兑换<br>数量有限，赶快下单吧！</span>
				</cite>
			</div>
			<form action="/get_exchange_goods.shtml" class="exchange fukrm" method="post">
				<input type="hidden" name="id" value="${goodsmap.id }">
				<input type="hidden" name="tmid" value="${tmid}">
				<input type="hidden" name="mid" value="${goodsmap.id}">
				<input type="hidden" name="goodsintegral" value="${goodsmap.integral }">
				
					<cite><span>兑换数量：</span>
						<input type="text" name="number" value="1">
						<i class="exchange_num"><img src="/images/exchange_add.png" alt=""><img src="/images/exchange_del.png" alt=""></i> 件
					</cite>
					<cite><span>兑换方式：</span>
						<select name="type" >
							<c:if test="${goodsmap.type eq '1'}"><option value="0">线下兑换</option></c:if>
							<c:if test="${goodsmap.type eq '0'}"><option value="1">快递邮寄</option></c:if>
						</select>
						
						<%--<select name="type" >
							<option value="0">线下兑换</option>
							<option value="1">送货上门</option>
							<option value="2">快递邮寄</option>
						</select>--%>
		
					</cite>
						<div class="demo">
							<div id="qrcodeTable"></div> 
						</div>
			
					<input class="submit" type="submit" value="立即兑换">
				</form>
			</div>
	


		<div class="aside">
			
		
			<!-- 店铺信息 -->
			<div class="sidebar">
				<h2 class="title">商铺信息</h2>
				<div class="shop_msg"><strong></strong><a href="/get_merchants_details.shtml?mid=${list_merchant.id }"><img src="${list_merchant.logo}" style="max-width:100px;max-height:80px;"></a><br>
					<strong>商铺名称：</strong><a href="/get_merchants_details.shtml?mid=${list_merchant.id }">${list_merchant.username}</a><br>
					<strong>所 在 地：</strong>${list_merchant.province }${list_merchant.city }<br>
					<strong>商铺介绍：</strong>${fn:substring(list_merchant.note,0 ,50)}...<br>
					<strong>主     营：</strong>${list_merchant.scope }<br>
				</div>
			</div>

			<!-- 该商家还卖了 -->
			<div class="sidebar">
				<h2 class="title">这里还可以兑换</h2>
				<ul>
				
					<c:forEach var="goods" items="${goods}" varStatus="status" begin="0" end="4" step="1">
					<li>
						<h3><a href="/get_merchantsgoods_details.shtml?id=${goods.id }" target="_blank"><img src="${goods.scopeimg }" alt="${goods.name}"></a></h3>
						<p><a href="/get_merchantsgoods_details.shtml?id=${goods.id }" target="_blank">${goods.name}</a></p>
						<cite>
							<strong>${goods.pay_maney}</strong>元+<strong>${goods.pay_integer}</strong>积分 
							<span><em>${goods.amount}人</em>兑换</span>
						</cite>
					</li>
					</c:forEach>
				</ul>
			
			</div>
		</div>



		<div class="main">
			

			
			


			<!-- 商品详情 -->
			<div class="details">
			
				<h2 class="title">
					<a class="active">商品详情</a>
					<!-- <a href="#">月兑换记录(<em>248</em>)</a> -->
				</h2>
<!--
				<ul>
					<li><b>品牌名称：</b>许留山</li>
					<li><b>产品名称：</b>香港许留山甜品</li>
					<li><b>美食分类：</b>甜品</li>
					<li><b>规格类型：</b>正常规格</li>
					<li><b>净含量：</b>150ml</li>
					<li><b>功效：</b>生津  止渴  其他/other </li>
					<li><b>适合人群：</b>所有</li>
					<li><b>品牌：</b>香港许留山</li>
					<li><b>特殊用途产品批准文号：</b>无</li>
				</ul>-->

				<div class="article">
					
					<!-- 详情内容 -->
					${goodsmap.note }
				</div>
			</div>


			<!-- 地图 -->
			<div class="map">
				<h2><strong>商铺位置:[${list_merchant.province}${list_merchant.city}${list_merchant.county}${list_merchant.address}]</strong><!-- <i>展开地图</i> --></h2>
				
				<div class="mapbox">
					<div id="map" mapdata="${list_merchant.coordinates }" title="${list_merchant.username}" address="${list_merchant.address}" logo="${list_merchant.logo}"></div>
				</div>
			</div>

		</div>

		<!-- 同商圈推荐 -->
		<!--<div class="lists">
			<h2 class="title"><a class="active" href="#">同商圈推荐</a><a class="more" href="#">更多>></a></h2>
			<ul>
				<li>
					<h3><a href="#"><img src="/images/stires_goods_4.jpg" alt="披萨"></a></h3>
					<p><a href="#"><strong>【136店通用】</strong>香港许留山招牌甜品套餐芒果糯米糍+西瓜蜂蜜爽</a></p>
					<cite>
						<strong>0</strong>元+<strong>500</strong>积分 
						<span><em>255人</em>兑换</span>
					</cite>
					<div class="lists_ctl">
						<a href="#" class="exchange">积分兑换</a>
						<a href="#" class="intocard">放入银行卡</a>
					</div>
				</li>
				<li>
					<h3><a href="#"><img src="/images/stires_goods_5.jpg" alt="披萨"></a></h3>
					<p><a href="#"><strong>【136店通用】</strong>香港许留山招牌甜品套餐芒果糯米糍+西瓜蜂蜜爽</a></p>
					<cite>
						<strong>0</strong>元+<strong>500</strong>积分 
						<span><em>255人</em>兑换</span>
					</cite>
					<div class="lists_ctl">
						<a href="#" class="exchange">积分兑换</a>
						<a href="#" class="intocard">放入银行卡</a>
					</div>
				</li>
				<li>
					<h3><a href="#"><img src="/images/stires_goods_6.jpg" alt="披萨"></a></h3>
					<p><a href="#"><strong>【136店通用】</strong>香港许留山招牌甜品套餐芒果糯米糍+西瓜蜂蜜爽</a></p>
					<cite>
						<strong>0</strong>元+<strong>500</strong>积分 
						<span><em>255人</em>兑换</span>
					</cite>
					<div class="lists_ctl">
						<a href="#" class="exchange">积分兑换</a>
						<a href="#" class="intocard">放入银行卡</a>
					</div>
				</li>
				
				
			</ul>
		</div>



	--></div>




<!--页脚-->
<jsp:include page="/cglib/footer.jsp" flush="true"/>
<script type="text/javascript" src="js/jquery.qrcode.js"></script> 
<script type="text/javascript" src="js/qrcode.js"></script>
<script>

$(document).ready(function(){

	$("#qrcodeTable").qrcode({
		render	: "table",
		text	: "http://www.anzimall.com/getExchangeGoods_wap.shtml?id="+${goodsmap.id },
		width:"120",
		height:"120"
	});	
	

	
	// 销售记录切换
	//var details = $('.details');
	//var details_msg = details.children('ul');
	//var details_his = details.children('table');

	//details.find('h2').on('click','a',function(){
		//var $this = $(this);
		//var friend = $this.parent().children('a');
		//var idx = friend.index($this);

		//if(idx ==1){
			//details_his.show();
			//details_msg.hide();
		//}else if(idx ==0){
			//details_his.hide();
			//details_msg.show();
		//}
		//$this.addClass('active').siblings().removeClass('active');


		//return false;
	//});


	// 兑换数量：
	var number = $('.exchange').find('input[name=number]').on('keyup',function(e){

		var keycode = event.which||event.keyCode;
		if(keycode == 37 ||keycode == 38 ||keycode == 39 ||keycode == 40 ) return;
		this.value = (this.value.match(/[\d\.]+/gi) || []).join('') ;
		this.value = this.value.replace(/^0?/gi,'');

	}).on('change',function(){
		this.value = this.value == '' ? 1:this.value;
	});
	$('.exchange_num').on('click','img',function(){
		var $this = $(this);
		var idx = $this.parent().children('img').index($this);
		var val =  parseInt(number.val()) || 1;

		if(idx ==0){
			number.val(val+1);
		}else if(idx ==1){
			number.val(val<2? 1:val-1);
		}
		return false;
	});


	// 细节图片点击
	var propic_show = $('.propic').find('h2 img')
	$('.propic_slides').on('click','img',function(){
		propic_show.attr('src',$(this).attr('src'));
	})

});


		function loadJScript() {
			var script = document.createElement("script");
			script.type = "text/javascript";
			script.src = "http://api.map.baidu.com/api?v=2.0&ak=6MnMg2PV1zdUKf99lHPmfduG&callback=init";
			document.body.appendChild(script);
		}
		function init() {
			// 百度地图API功能

			var $map = $('#map')
			var mappoin = $map.attr('mapdata').split(',');

			var map = new BMap.Map('map');
			var point = new BMap.Point(mappoin[0],mappoin[1]);
			map.centerAndZoom(point, 15);
			map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT}));
			map.addControl(new BMap.NavigationControl()); 
			map.enableScrollWheelZoom();                 //启用滚轮放大缩小


			var marker = new BMap.Marker(point);
			var infoWindow = new BMap.InfoWindow('<h5><img src="'+$map.attr('logo')+'" style="height: 30px;vertical-align: bottom;">'+$map.attr('title')+'</h5><p>'+$map.attr('address')+'</p>');  // 创建信息窗口对象
			map.addOverlay(marker);
			marker.addEventListener("click",function(e){
				this.openInfoWindow(infoWindow);
			});
			
		
		}  

		window.onload = loadJScript;  //异步加载地图



</script>