<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%

request.setAttribute("css","global,details");
request.setAttribute("js","global,fukrm,details");

%>
		
<jsp:include page="/cglib/header.jsp"  flush="true"/>
<style type="text/css">

.demo{margin: 40px auto;position: relative;right: -30px;top: -13px;}
</style>


	<div class="mainbox cs">
		
		
		<div class="shop_ima">
			<div class="shows">
				<h2><img src="${list_merchant.enterpriseimg2}"><i>${list_merchant.storename }</i></h2>
				<div class="shows_slides">
					<ul>
						<li><img src="${list_merchant.enterpriseimg}" alt=""></li>
						<li><img src="${list_merchant.enterpriseimg2}" alt=""></li>
						<li><img src="${list_merchant.enterpriseimg3}" alt=""></li>
						<li><img src="${list_merchant.enterpriseimg4}" alt=""></li>
					</ul>
					<i class="totop">&nbsp;</i>
					<i class="tobottom">&nbsp;</i>
				</div>
			</div>

			<div class="shows_msg">
				<i class="shows_msg_logo"><img src="${list_merchant.logo }" alt=""></i><br>
				<h2>${list_merchant.storename }</h2>
				评分等级：<span class="shows_pingfen"><i style="width: 100%;"></i></span><br>
				全场兑换：<strong><em>9</em>折</strong><br>
				行业类别：<strong>${list_merchant.tid }</strong><br>
				店铺地址：<strong>${list_merchant.provice }${list_merchant.city }${list_merchant.county }${list_merchant.address }</strong>
			</div>

		</div>


		<div class="aside">
			<!-- 店铺信息 -->
			<div class="sidebar">
				<h2 class="title"><a >商铺信息</a></h2>
				<div class="shop_msg">
					<strong>店铺介绍：</strong>${fn:substring(list_merchant.note,0 ,50)}<br>
					<strong>经营范围：</strong>${list_merchant.scope }<br>
					<strong>联系电话：</strong>${list_merchant.storephone }
				</div>
			</div>	
			<div class="sidebar">
				<h2 class="title"><a >商铺二维码</a></h2>
				<div class="demo">
							<div id="qrcodeTable"></div> 
				</div>
			</div>	
			<!-- 该商家最热卖 -->
			
			<c:if test="${fn:length(list_goods) == 0}">
				<div class="sidebar" >
				<h2 class="title"><a >店长推荐</a></h2>
				<ul id="ajaxcnt">
				<c:forEach var="goods" items="${goods}" varStatus="status" begin="0" end="2" step="1">
					<li>
						<h3><a href="/get_merchantsgoods_details.shtml?id=${goods.id }" target="_blank"><img src="${goods.scopeimg }" alt="${goods.name}"></a></h3>
						<p><a href="/get_merchantsgoods_details.shtml?id=${goods.id }" target="_blank">${goods.name}</a></p>
						<cite>
							<strong>${goods.pay_maney}</strong>元+<strong>${goods.pay_integer }</strong>积分 
							<span><em>${goods.amount }人</em>兑换</span>
						</cite>
					</li>
				</c:forEach>
				</ul>
			</div>
			</c:if>
			
			<c:if test="${fn:length(list_goods) > 0}">
	
			<div class="sidebar" >
				<h2 class="title"><a >格子铺</a></h2>
				<ul id="ajaxcnt">
				<c:forEach var="goods" items="${list_goods}" varStatus="status" begin="0" end="2" step="1">
					<li>
						<h3><a href="/get_merchantsgoods_details.shtml?id=${goods.id }&tmid=${tmid}" target="_blank"><img src="${goods.scopeimg }" alt="${goods.name}"></a></h3>
						<p><a href="/get_merchantsgoods_details.shtml?id=${goods.id }&tmid=${tmid}" target="_blank">${goods.name}</a></p>
						<cite>
							<strong>${good.pay_maney}</strong>元+<strong>${goods.pay_integer }</strong>积分 
							<span><em>${goods.amount }人</em>兑换</span>
						</cite>
					</li>
				</c:forEach>
				</ul>

				<script>

					function buildfun(obj) {
						if(obj.length<=0) return;
						for(var item,i=0,res=[],l=obj.length;i<l;i++){
							item = obj[i];
							res.push('<li><h3><a href="/get_merchantsgoods_details.shtml?id='+item.id+'&tmid='+item.tmid);
							res.push('" target="_blank"><img src="'+item.scopeimg+'" alt="'+item.name+'"></a></h3>');
							res.push('<p><a href="/get_merchantsgoods_details.shtml?id='+item.ic+'&tmid='+item.tmid+'" target="_blank">'+item.name+'</a></p>');
							res.push('<cite><strong>0</strong>元+<strong>'+item.integral+'</strong>积分');
							res.push('<span><em>'+item.amount+'人</em>兑换</span></cite></li>');
						}
						document.getElementById('ajaxcnt').innerHTML = res.join('');
					}
				</script>

				<div class="ajaxpage" total="${total }" each="3" page="1"  url="${tempurl}"  buildfun="buildfun"></div> 

			</div>
			</c:if>

				
			
		</div>


		<div class="main">
			<%--
			<c:if test="${fn:length(merchants_vipcard) > 0}">
			<!-- 会员卡 -->
			<div class="list_card">
				<h2 class="title"><a class="active">会员卡</a></h2>
				<ul>
					<c:forEach var="merchants_vipcard" items="${merchants_vipcard}" varStatus="status">	
					<li>
						<h6><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}"><img src="${merchants_vipcard.vipphoto}" ></a></h6>
						<h4><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}"><img src="${merchants_vipcard.logo}"></a></h4>
						<span><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}">NO.00001</a></span>
						<h3><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}">${merchants_vipcard.username }</a></h3>
						<p><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}">最高可享全单${merchants_vipcard.upgrade1 }折优惠</a></p>
						<cite>
							<h4>${merchants_vipcard.username }会员卡</h4>
							<p>
								<b>${merchants_vipcard.rulename1}</b>：0≤累计消费＜${merchants_vipcard.discount2}元，享<font color="red">${merchants_vipcard.upgrade1}折</font><br>	
								<c:if test="${!empty merchants_vipcard.rulename2}">
									<b>${merchants_vipcard.rulename2}</b>：${merchants_vipcard.discount2}≤累计消费＜${merchants_vipcard.discount3}元，享<font color="red">${merchants_vipcard.upgrade2}折</font><br>
								</c:if>
								<c:if test="${!empty merchants_vipcard.rulename3}">
									<b>${merchants_vipcard.rulename3}</b>：${merchants_vipcard.discount3}≤累计消费＜${merchants_vipcard.discount4}元，享<font color="red">${merchants_vipcard.upgrade3}折</font><br>
								</c:if>
								<c:if test="${!empty merchants_vipcard.rulename4}">
									<b>${merchants_vipcard.rulename4}</b>：${merchants_vipcard.discount4}≤累计消费＜${merchants_vipcard.discount5}元，享<font color="red">${merchants_vipcard.upgrade4}折</font><br>
								</c:if>	
								<c:if test="${!empty merchants_vipcard.rulename5}">
									<b>${merchants_vipcard.rulename5}</b>：${merchants_vipcard.discount5}≤累计消费，享<font color="red">${merchants_vipcard.upgrade5}折</font>
								</c:if>		
							</p>	
						</cite>
					
						<a href="/toVipcardBindBank.shtml?mid=${merchants_vipcard.mid }" class="intocard">放入银行卡</a>
						
					</li>
					</c:forEach>
				</ul>
				
			</div>
			</c:if>
			--%>

	
			<c:if test="${fn:length(pageSupport.result) > 0}">
			<div class="lists">
				<h2 class="title"><a class="active" >该店可兑换</a></h2>
				<ul class="list_all">
			
				<c:forEach var="goods" items="${pageSupport.result}" varStatus="index" begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}" end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
					<li>
						<h3><a href="/get_merchantsgoods_details.shtml?id=${goods.id }" target="_blank"><img src="${goods.scopeimg }" alt="${goods.name}"></a></h3>
						<p><a href="/get_merchantsgoods_details.shtml?id=${goods.id }" target="_blank">${goods.name}</a></p>
						<cite>
							<strong>${goods.pay_maney}</strong>元+<strong>${goods.pay_integer }</strong>积分 
							<span><em>${goods.amount }人</em>兑换</span>
						</cite>
						<div class="lists_ctl">
							<!-- <a href="/get_exchange_goods.shtml?id=${goods.id }" class="exchange">积分兑换</a> -->
							<a href="/get_merchantsgoods_details.shtml?id=${goods.id }" class="exchange" target="_blank">积分兑换</a>

						</div>
					</li>
				</c:forEach>
				</ul>
				<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false" ></div> 
			</div>
			</c:if>


			<!-- 商店地图 -->
			<div class="map">
				<h2><strong>商铺位置:[${list_merchant.province}${list_merchant.city}${list_merchant.county}${list_merchant.address}]</strong> <!-- <i>展开地图</i> --></h2>
				
				<div class="mapbox">
					<div id="map" mapdata="${list_merchant.coordinates }" title="${list_merchant.username}" address="${list_merchant.address}" logo="${list_merchant.logo}" ajax="true"></div>
				</div>

			</div>

		</div>
		
		
	</div>




<!--页脚-->
<jsp:include page="/cglib/footer.jsp" flush="true"/>
<script type="text/javascript" src="js/jquery.qrcode.js"></script> 
<script type="text/javascript" src="js/qrcode.js"></script>


	<script>




	$(document).ready(function(){

		$("#qrcodeTable").qrcode({
			render	: "table",
			text	: "http://www.anzimall.com/getMerchantsDetails_wap.shtml?mid="+${list_merchant.id},
			width:"140",
			height:"140"
		});	


		// $('.aside .fuck').page({
		// 		buildfun:function(obj){

		// 			return [
		// 				'<tr>',
		// 				'<td>', obj.userId, '</td>',
		// 				'<td>', obj.username, '</td>',
		// 				'<td>', obj.sex, '</td>',
		// 				'<td>', obj.age, '</td>',
		// 				'<td>', obj.email, '</td>',
		// 				'<td>', obj.address, '</td>',
		// 				'<td>', obj.registerTime, '</td>',
		// 				'<td></td>',
		// 				'</tr>'
		// 			].join('');

		// 		},//构建内容函数
		// 		updateto:$('#ajaxcnt ul') //更新到目标
		// 	});
			
			
			
	});	



		// 销售记录切换
	

		// 细节图片点击
		//var propic_show = $('.shows').find('h2 img');
		//var shows_slides = $('.shows_slides').on('mouseenter','li',function(){

			//propic_show.attr('src',$(this).find('img').attr('src'));
		//}).on('click','i.totop',function(){
			//shows_slides.children('ul').animate({scrollTop:shows_slides.height()},500);
		//}).on('click','i.tobottom',function(){
			//shows_slides.children('ul').animate({scrollTop:0},500);
			
		//})





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
			// map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL})); 
			map.enableScrollWheelZoom();                 //启用滚轮放大缩小

			// map.addOverlay(new BMap.Marker(point));
			var marker = new BMap.Marker(point);
			var infoWindow = new BMap.InfoWindow('<h5><img src="'+$map.attr('logo')+'" style="height: 30px;vertical-align: bottom;">'+$map.attr('title')+'</h5><p>'+$map.attr('address')+'</p>');  // 创建信息窗口对象
			map.addOverlay(marker);
			marker.addEventListener("click",function(e){
				this.openInfoWindow(infoWindow);
			});

		}  

		window.onload = loadJScript;  //异步加载地图



</script>