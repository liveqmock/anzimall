<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	request.setAttribute("head","nearby");
	request.setAttribute("css","global,index");
	request.setAttribute("js","global,fukrm");

%>
		
<jsp:include page="/cglib/header.jsp" flush="true"/>

<style>
	.mainbox{width: 1000px;background: #fff;border: 1px solid #d4d4d4;border-bottom: none; padding: 40px 0 1px;margin-bottom: 0;}
	.mainbox h2{border-bottom: 2px solid #ee2323;}
	.more{font-size: 12px;position: absolute;right: 0;}
	.mainbox form{margin: 0 20px 10px;line-height: 30px;}
	.mainbox .fukrm input{padding: 5px;width: 200px;}
	.mainbox .fukrm input[type=submit]{height: 30px;line-height: 20px;width: 80px;}
	.js-form-city{display: inline-block;}
	.fukrm_select_cnt{top: 29px;}
	.mapbox{border:1px solid #d4d4d4; margin: 0 20px 20px; overflow: hidden;}
	#map{float: left;width: 740px; height:600px;}
	.maplist{float: left;width: 217px; border-left: 1px solid #d4d4d4;overflow: auto;height: 600px;}
	.maplist li{margin: 5px; background: url(/images/map_marker.png) no-repeat left 0px; border-bottom: 1px #f5f5f5 solid;padding-left: 25px;}
	.maplist li.nodata{background: none;font-size: 14px;line-height: 36px;}
	.maplist h5{color: #7B7B7B;line-height: 26px;font-weight: normal;}
	.maplist h5 img{display: none;}
	.maplist p{font-size: 12px;color: #999;display: none;}

	.maplist a{display: block;}
	.maplist a:hover{color: #ee2323;}
</style>

<div class="mainbox">
	
	<form action="#" class="fukrm">
		<div class="js-form-city" >
			<select class="prov" name="province" value="${user.province}" default="广东"  style="width: 90px;"></select>
			<select class="city" name="city" value="${user.city }" default="深圳市" style="width:120px;"></select>
			<!-- <select class="town" name="key" style="width:180px;"></select> -->
		</div>

		<!-- <input type="text" name="serch"> -->
		<input type="submit" value="搜索">
	</form>

	<div class="mapbox">
		<h2 class="title">我附近的商圈<!-- <a class="more">我的位置[深圳] 切换城市</a> --></h2>
		<div id="map" ></div>
		
		<ul class="maplist"></ul>
	</div>

</div>



<script>
	var defult = '${userlocation}';
</script>

<script type="text/javascript" src="http://api.map.baidu.com/library/GeoUtils/1.2/src/GeoUtils_min.js"></script>
<jsp:include page="/cglib/footer.jsp" flush="true"/>



<script>

	var map;
	var data = [];
	var his = {};

	var maplist = $('.maplist').on('mouseenter','li',function(){
		if(this.getAttribute('class') == 'nodata') return;
		var d = data[$(this).attr('idx')];
		d.marker.openInfoWindow(d.info);	
	})
	
	var markers = function(){

		var res = [];
		var chep = BMapLib.GeoUtils.isPointInRect;
		var poin ;
		for(i=0,l=data.length;i<l;i++){

			if(chep(data[i].point, map.getBounds()) == true){
				map.addOverlay(data[i].marker);
				res.push('<li idx="'+i+'">'+data[i].html+'</li>');

			} else{
				map.removeOverlay(data[i].marker);
			} 
		}

		if(res.length>0){
			$('.maplist').html(res.join('\n'))
		}else{
			$('.maplist').html('<li class="nodata">此地区暂无加盟商</li>')
		}
	}


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
		// map.removeOverlay(circle);
		// circle = new BMap.Circle(poin, 1000, {
		// 	fillColor: "blue",
		// 	fillOpacity: 0.1,
		// 	strokeWeight: 1,
		// 	strokeOpacity: 0.3
		// });
		// map.addOverlay(circle);
		


		// 通过位置获取城市
		// geoc.getLocation(poin, function(rs){
		// 	var addComp = rs.addressComponents;

		// 	if(his[addComp.provincer]){return;}
		// 	his[addComp.provincer] = true;

		// 	// 获取城市商户数据
		// 	$.ajax({
		// 		type: "POST",
		// 		url: 'get_merchantslocation.shtml',
		// 		dataType: "json",
		// 		data:{city:addComp.provincer},
		// 		success: function(json){
		// 			// 标商户位置
		// 			for(var i=0,l=json.length;i<l;i++){
		// 				var res = json[i].coordinates.split(',');
		// 				var x = parseFloat(res[0]);
		// 				var y = parseFloat(res[1]);

		// 				var marker = new BMap.Marker(new BMap.Point(x,y));
		// 				var infoWindow = new BMap.InfoWindow('<h5><img src="'+json[i].logo+'" style="height: 30px;vertical-align: bottom;">'+json[i].storename+'</h5><p>'+json[i].note+'</p>');  // 创建信息窗口对象
		// 				map.addOverlay(marker);
		// 				marker.addEventListener("click",function(e){
		// 					this.openInfoWindow(infoWindow);
		// 				});


		// 				// map.addOverlay();
		// 			}
		// 		}
		// 	});
		// }); 



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
		map.addControl(new BMap.OverviewMapControl({isOpen:true, anchor: BMAP_ANCHOR_BOTTOM_RIGHT})); //方位
		map.enableScrollWheelZoom();                 //启用滚轮放大缩小



		// 初始化
		// 如果有值，则设值为中点，如果没值，则取ip地址找中点
		if(defult.length>0){
			var p = defult.split(',');
			changeCity(new BMap.Point(p[0],p[1]));
		}else{
			// (new BMap.LocalCity()).get(function(res) {changeCity(res.center);});
			changeCity(mPoint);
		}



		$.ajax({
			type: "POST",
			url: 'get_merchantslocation.shtml',
			dataType: "json",
			data:{city:''},
			success: function(json){

				// 标商户位置
				for(var i=0,l=json.length;i<l;i++){
					var res = json[i].coordinates.split(',');
					var x = parseFloat(res[0]);
					var y = parseFloat(res[1]);
					var poin = new BMap.Point(x,y);
					var mark = new BMap.Marker(poin);
					var html = '<h5><a href="/get_merchants_details.shtml?mid='+json[i].id+'"><img src="${url}'+json[i].logo+'" style="height: 30px;vertical-align: bottom;">'+json[i].storename+'</a></h5><p>'+json[i].note+'</p>';

					var info = new BMap.InfoWindow(html);
					(function(html){mark.addEventListener("click",function(e){this.openInfoWindow(html);});})(info);

					data.push({point:poin,marker:mark,name:json[i].username,html:html,info:info});
					markers();
				}
			}
		});


		// map.addEventListener("click", function(e) {changeCity(e.point)});

		map.addEventListener("tilesloaded",markers);
		map.addEventListener("zoomend",markers);
		map.addEventListener("moveend",markers);
		map.addEventListener("dragend",markers);
		markers();


		$('.mainbox').find('select[name=city]').on('change',function(){
			var myGeo = new BMap.Geocoder();

			// 将地址解析结果显示在地图上,并调整地图视野
			myGeo.getPoint($(this).val(), function(point){
				if (point) {
					changeCity(point);
				}
			});
			
		});

		$('.mainbox').find('form').on('submit',function(){

			// 将地址解析结果显示在地图上,并调整地图视野
			(new BMap.Geocoder()).getPoint($(this).find('select[name=city]').val(), function(point){
				if (point) {
					changeCity(point);
				}
			});

			return false;
		})

	}  


	window.onload = loadJScript;  //异步加载地图




		
	


</script>
