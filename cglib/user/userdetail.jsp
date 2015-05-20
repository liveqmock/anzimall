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
		
		<h2 style="color:#f92d11;">
			<i class="icon icon-jibenxinxi"></i>
			<strong>基本信息</strong>
			<small>您的资料将处于绝对保密状态。为了您的账户安全，请经常 <a href="/to_user_password.shtml">修改密码</a></small>
		</h2>


		<div class="g-myjuooo">
			<div class="mt-avatar">
				<dl class="clearfix">
					<dt><a><img src="${userdetail.portrait }" onerror="this.src='/images/big-Head.png'"><%--<p class="up"></p> --%></a></dt>
				</dl>
				<div class="mt-edit-security">
					<a href="/to_user_password.shtml">修改密码</a>　|　
					<a href="/cglib/user/userdetail_reset.jsp">修改基本信息</a>
				</div>
			</div>
			<div class="mt-integral">
				<div class="h4_tit">积分总额</div>
				<div class="num"><em>${integer}</em>积分</div>
				<div class="mt-btn"><a href="/index.shtml">前去兑换</a></div>
			</div>
			<div class="mt-secure">
				<h5>信息完善度：</h5>
				<div class="mod_progress">

				<c:if test="${flag ==0}">
					<div class="inner"><div class="rate" style="width:0%"></div></div><span class="secure-lv-txt">0</span>
				</c:if>
				<c:if test="${flag ==1}">
					<div class="inner"><div class="rate" style="width:33%"></div></div><span class="secure-lv-txt">低</span>
				</c:if>
				<c:if test="${flag ==2}">
					<div class="inner"><div class="rate" style="width:66%"></div></div><span class="secure-lv-txt">中</span>
				</c:if>
				<c:if test="${flag ==3}">
					<div class="inner"><div class="rate" style="width:100%"></div></div><span class="secure-lv-txt">高</span>
				</c:if>

				</div>
				<div class="secure-tip">为让你有更好的积分兑换体验，请完善个人信息。</div>
				<div class="secure-binding">
					<ul>
						<li><b class="icon-secure s-icon-mobile"></b>我的商圈：
							<c:if test="${fn:length(cbdlist) < 1}"><a href="/user_cbd.shtml" class="c1">未添加</a></c:if>
							<c:if test="${fn:length(cbdlist) > 0}"><a href="/user_cbd.shtml" class="c2">已添加${fn:length(cbdlist)}个</a></c:if>
						</li>
						<li><b class="icon-secure s-icon-mial"></b>收货地址：
							<c:if test="${fn:length(addresslist) < 1}"><a href="/user_address.shtml" class="c1">未添加</a></c:if>
							<c:if test="${fn:length(addresslist) > 0}"><a href="/user_address.shtml" class="c2">已添加${fn:length(addresslist)}个</a></c:if>
						</li>
						<li><b class="icon-secure s-icon-mobile"></b>我的银行卡：
							<c:if test="${fn:length(bankcardlist) < 1}"><a href="/user_bankcard.shtml" class="c1">未添加</a></c:if>
							<c:if test="${fn:length(bankcardlist) > 0}"><a href="/user_bankcard.shtml" class="c2">已添加${fn:length(bankcardlist)}个</a></c:if>
						</li>
					</ul>
				</div>
			</div>
		</div>


		<div  class="userdetail_msg_tle"><p><span>基本信息</span></p></div>

		<table class="userdetail_msg">
			<tbody>
				<tr><td><i style="color:#5ddbff" class="icon icon-yonghuming"></i>用户名：</td><td>${userdetail.username }</td></tr>
				<tr><td><i style="color:#ff5d92" class="icon icon-xingbie"></i>性别：</td><td><c:if test="${userdetail.sex eq '1'}">男</c:if><c:if test="${userdetail.sex eq '0'}">女</c:if><c:if test="${userdetail.sex eq '2'}">保密</c:if></td></tr>
				<tr><td><i style="color:#ffd75d" class="icon icon-shengri"></i>生日：</td><td>${userdetail.birthday }</td></tr>
				<tr><td><i style="color:#5dbcff" class="icon icon-xieyiyouxiang"></i>邮箱：</td><td>${userdetail.email }</td></tr>
				<tr><td><i style="color:#ce95fa" class="icon icon-qq"></i>QQ：</td><td>${userdetail.qq }</td></tr>
				<tr><td><i style="color:#ff685d" class="icon icon-yingyuandizhi"></i>地址：</td><td>${userdetail.province }${userdetail.city }${userdetail.county }</td></tr>
			</tbody>
		</table>

		<div class="userdetail_qrcode">
		<a class="qrcodeTable " href="http://www.anzimall.com/to_register_info.shtml?tg_sigen=${tg_sigen}" target="_blank"></a>
		<span>邀朋友注册享消费返利</span>
		</div>
	</div>
	
		
	<div class="content">
		<div style="height: 220px;margin:1px;" id="map"></div>
		<div class="userdetail_map">
			<img src="/images/map_poin.png" alt="">
			<strong>113.980066,22.543784</strong><br>
			<script>var defultpoin = '${userdetail.location}';</script>
			<span>${userdetail.province }${userdetail.city }${userdetail.county }</span>
		</div>
	</div>


	<div class="content userdetail_lists" >
		<h4 class="tit"><b></b>推荐商品</h4>
		<ul>
		<c:forEach var="goodslist" items="${goodslist}" varStatus="status" begin="0" end="3" step="1">
			<li>
				<h3><a href="/get_merchantsgoods_details.shtml?id=${goodslist.id }" target="_blank"><img src="${url }${goodslist.advertisingimg }" alt="${goodslist.name }"></a></h3>
				<p><a  href="/get_merchantsgoods_details.shtml?id=${goodslist.id }" target="_blank">${goodslist.name }</a></p>
				<cite>
					<strong>0</strong>元+<strong>${goodslist.integral }</strong>积分 
					<span><em>${goodslist.amount }人</em>兑换</span>
				</cite>
			</li>
		</c:forEach>

			
			
		</ul>
	</div>

	



</div>









<!--页脚-->
<jsp:include page="/cglib/footer.jsp" flush="true"/>
<script type="text/javascript" src="/js/jquery.qrcode.js"></script> 
<script type="text/javascript" src="/js/qrcode.js"></script>

<script>



	// var integer_value = $('.integer_value');
	// setInterval(function(){
	// 	$.ajax({
	// 		type: "POST",
	// 		dataType:'json',
	// 		url: "/getUserTotalIntegral.shtml",
	// 		success: function(json) { 
	// 			if(json.status && json.status === '10000'){integer_value.html(json.integer);}
	// 			// console.log('积分',json);
	// 		}
	// 	});

	// },1000);

	
	var qrcodeTable = $(".qrcodeTable");
	qrcodeTable.qrcode({render: "img",text:qrcodeTable.attr('href'),width:120,height:120});

	
	var map;
	var his = {};
	var marker;
	var geoc;
	var circle;


	// 传入新地址经纬度
	var changeCity = function(poin){


		//修改位置
		map.removeOverlay(marker);
		marker = new BMap.Marker(poin,{icon:new BMap.Icon("/images/map_head.png", new BMap.Size(39,25))});  // 创建标注
		map.addOverlay(marker);
		map.setCenter(poin);

		// 修改商圈
		map.removeOverlay(circle);
		circle = new BMap.Circle(poin, 1000, {
			fillColor: "blue",
			fillOpacity: 0.1,
			strokeWeight: 1,
			strokeOpacity: 0.3
		});
		map.addOverlay(circle);
		
	

		// 通过位置获取城市
		geoc.getLocation(poin, function(rs){
			var addComp = rs.addressComponents;

			if(his[addComp.provincer]){return;}
			his[addComp.provincer] = true;

			// 获取城市商户数据
			$.ajax({
				type: "POST",
				url: 'get_merchantslocation.shtml',
				dataType: "json",
				data:{city:addComp.provincer},
				success: function(json){
					// 标商户位置
					for(var i=0,l=json.length;i<l;i++){
						var res = json[i].coordinates.split(',');
						var x = parseFloat(res[0]);
						var y = parseFloat(res[1]);
						map.addOverlay(new BMap.Marker(new BMap.Point(x,y)));
					}
				}
			});
		}); 



	}


	

	function loadJScript() {
		var script = document.createElement("script");
		script.type = "text/javascript";
		script.src = "http://api.map.baidu.com/api?v=2.0&ak=6MnMg2PV1zdUKf99lHPmfduG&callback=init";
		document.body.appendChild(script);
	}
	function init() {

		// 百度地图API功能
		map = new BMap.Map("map");            	// 创建Map实例
		geoc = new BMap.Geocoder();          	//创建位置解析地址实例
		var mPoint = new BMap.Point(113.980066,22.543784); //中点

		map.centerAndZoom(mPoint, 15);
		map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT}));
		map.addControl(new BMap.NavigationControl()); 
		// map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL})); 
		map.addControl(new BMap.OverviewMapControl({isOpen:true, anchor: BMAP_ANCHOR_BOTTOM_RIGHT})); //方位
		map.enableScrollWheelZoom();                 //启用滚轮放大缩小



		

		map.addEventListener("click", function(e) {changeCity(e.point)});
		$('.mainbox').find('select[name=city]').on('change',function(){
			var myGeo = new BMap.Geocoder();

			// 将地址解析结果显示在地图上,并调整地图视野
			myGeo.getPoint($(this).val(), function(point){
				if (point) {
					changeCity(point);
				}
			});
			
		});


	

		// 初始化
		// 如果有值，则设值为中点，如果没值，则取ip地址找中点
		if(defultpoin.length>0){
			var p = defultpoin.split(',');
			changeCity(new BMap.Point(p[0],p[1]));
		}else{
			(new BMap.LocalCity()).get(function(res) {changeCity(res.center);});

		}



	}  


	window.onload = loadJScript;  //异步加载地图
</script>