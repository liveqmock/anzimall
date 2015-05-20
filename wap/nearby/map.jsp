<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="/wap/header.jsp" flush="true"/>

<style>
	html{height: 100%;}
	body{ 
		display: -webkit-box;
		display: -webkit-flex;
		display: -ms-flexbox;
		display: flex;
		-webkit-box-orient: vertical;
		-webkit-box-direction: normal;
		-webkit-flex-direction: column;
		-ms-flex-direction: column;
		flex-direction: column;       
		height: 100%; 
	}
	body>.main{ 
		-webkit-box-flex: 1;  
		-moz-box-flex: 1;     
		-webkit-flex: 1;      
		-ms-flex: 1;          
		flex: 1;              
		position: relative;
		width: 100%; 
	}
	.nearby{position: absolute;left: 0.8rem;right: 0.8rem; top: 0.8rem;bottom: 0.8rem;padding: 0.4rem; background: #fff;border:1px solid #ddd;}
	.nearby #map{width: 100%;height: 100%;}
	nav{margin-top: 0;}
</style>

<div class="main">

	<section class="nearby">
		<div id="map" ></div>
		<script>var defult = '${userlocation}';</script>
	</section>

</div>

<jsp:include page="/wap/footer.jsp" flush="true"/>

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

		// var res = [];
		// var chep = BMapLib.GeoUtils.isPointInRect;
		// var poin ;
		// for(i=0,l=data.length;i<l;i++){

		// 	if(chep(data[i].point, map.getBounds()) == true){
		// 		map.addOverlay(data[i].marker);
		// 		res.push('<li idx="'+i+'">'+data[i].html+'</li>');

		// 	} else{
		// 		map.removeOverlay(data[i].marker);
		// 	} 
		// }

		// if(res.length>0){
		// 	$('.maplist').html(res.join('\n'))
		// }else{
		// 	$('.maplist').html('<li class="nodata">此地区暂无加盟商</li>')
		// }
	}




	function init() {
		var p = defult.length>0? defult.split(',') : [113.980066,22.543784];
		var map = new BMap.Map("map");            	// 创建Map实例
		var point = new BMap.Point(p[0],p[1]);  	//中点
		map.centerAndZoom(point, 14);   
		map.addOverlay(new BMap.Marker(point,{icon:new BMap.Icon("/images/map_head.png", new BMap.Size(39,25))}));

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
					var html = '<h5><a href="/get_merchants_details.shtml?mid='+json[i].id+'"><img src="http://114.215.239.103:8085/'+json[i].logo+'" style="height: 30px;vertical-align: bottom;">'+json[i].storename+'</a></h5><p>'+json[i].note+'</p>';

					var info = new BMap.InfoWindow(html);
					(function(html){mark.addEventListener("click",function(e){this.openInfoWindow(html);});})(info);

					// data.push({point:poin,marker:mark,name:json[i].username,html:html,info:info});
					map.addOverlay(mark);
					markers();
				}
			}
		});

		map.addEventListener("tilesloaded",markers);
		map.addEventListener("zoomend",markers);
		map.addEventListener("moveend",markers);
		map.addEventListener("dragend",markers);
		markers();
	}

	

	var script = document.createElement("script");
	script.type = "text/javascript";
	script.src = "http://api.map.baidu.com/api?type=quick&ak=6MnMg2PV1zdUKf99lHPmfduG&callback=init";
	document.body.appendChild(script);


</script>