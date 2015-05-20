var mapObj;
function setCity(city){
	mapObj.setCity(city);
	mapObj.setZoom(15);
	$("#locity").html(city+"<b></b>");
	url="/user/cbd/map?action=county&city="+encodeURI(city);
	txt=ajaxhtml(url);
	$(".hot_map_area").html(txt);
}

function mapInit(){
	var opt = {
	level:15,//初始地图视野级别
	center:new MMap.LngLat(114.0378,22.5430),//设置地图中心点	
	doubleClickZoom:false,//双击放大地图
	scrollwheel:true//鼠标滚轮缩放地图
	}
	mapObj = new MMap.Map("iCenter",opt);
	mapObj.plugin(["MMap.ToolBar","MMap.OverView","MMap.Scale"],function()
	{ 
	toolbar = new MMap.ToolBar();
	toolbar.autoPosition=false; //加载工具条 
	mapObj.addControl(toolbar);  	
	overview = new MMap.OverView(); //加载鹰眼
	mapObj.addControl(overview);  	
	scale = new MMap.Scale(); //加载比例尺
	mapObj.addControl(scale);
	}); 	
	mapObj.bind(mapObj,"click",mapclick);
	
	TypeAheadPlugin.init('keyword','list',$('#locity').text());
	TypeAheadPlugin.setPositionOrStyle(function(){
		var list=document.getElementById('list');
		var input=document.getElementById('keyword');
		list.style.width=input.clientWidth;
		list.style.marginLeft='50px';
	});
	TypeAheadPlugin.isShowCity(true);	
	
	
}
function mapclick(e){
	addMarker(e.lnglat.lng,e.lnglat.lat);
	$("#lngX").val(e.lnglat.lng);
	$("#latY").val(e.lnglat.lat);	
};
function addMarker(x,y){
	$("#lngX").val(x);
	$("#latY").val(y);	
	var lnglatXY=new MMap.LngLat(x,y);
	var GeocoderOption = {
		range:100,//范围
		crossnum:1,//道路交叉口数
		roadnum	:1,//路线记录数
		poinum:1//POI点数
	};	
	var geo = new MMap.Geocoder(GeocoderOption);
	geo.regeocode(lnglatXY,poiToAddressSearch_CallBack);
	
	var marker = new MMap.Marker({ 					 
	   id:"m", //marker id 					 
	   position:new MMap.LngLat(x,y), //位置 
	   icon:"/images/icon/p0_5.png",//图片
	   offset:new MMap.Pixel(-10,-22), //基点为图片左上角，设置相对基点的图片位置偏移量，向左向下为负
	   draggable:true, //可拖动 
	   visible:true,//可见
	   zIndex:1//设置点叠加顺序，在加载多个点有效果，详见设置点叠加顺序示例
    }); 
	mapObj.addOverlays(marker);
	mapObj.setFitView([marker]);
	inforWindow = new MMap.InfoWindow({
	  isCustom:true,
	  content:"<div class=\"ico_alert\"><div class=\"map_mod\"><a class=\"alert_close\" href=\"javasrcipt:void(0);\" onclick=\"$('.ico_alert').hide()\"></a><p class=\"bold\"><span id=\"showaddress\">"+document.getElementById("address").value+"</span></p><p class=\"top20\"><a href=\"javascript:void(0)\" class=\"ico_bnt bnt\" onclick=\"checkaddress()\">确定</a></p></div></div>",
	  offset:new MMap.Pixel(-106,-61)
	});
	inforWindow.open(mapObj,marker.getPosition());	
	mapObj.bind(marker,"dragend",function(e){
		var ove=mapObj.getOverlays("m");
		var xy=ove.getPosition();
		mapObj.clearMap();
		$("#lngX").val(xy.lng);
		$("#latY").val(xy.lat);	
		addMarker(xy.lng,xy.lat);
	})

}

function poiToAddressSearch_CallBack(data){
	var resultStr="";
	if(data.status=="E0"){
		for(var i=0;i<data.list.length;i++){
			if(i==0){
				resultStr=data.list[i].province.name+data.list[i].city.name+data.list[i].district.name;
			}			
			for(var j=0;j<data.list[i].roadlist.length;j++){
				if(j==0){
					resultStr+=data.list[i].roadlist[j].name;	
				}
			}
			for (var j=0; j< data.list[i].poilist.length; j++) {
				if(j==0){
					resultStr+=data.list[i].poilist[j].name;	
				}
			}
		}
	}
	$("#address").val(resultStr);
	$("#showaddress").html(resultStr);
}


function keywordSearch(){
	var keywords = $("#keyword").val();;
	var city =$("#locity").text();
	city=city=='全国'?'total':city;
	var PoiSearchOption = {
		srctype:"POI",//数据来源
		type:"",//数据类别
		number:1,//每页数量,默认10
		batch:1,//请求页数，默认1
		range:3000,	//查询范围，默认3000米
		ext:""//扩展字段
	};
	var MSearch = new MMap.PoiSearch(PoiSearchOption);
	MSearch.byKeywords(keywords,city,searchPoilist_CallBack);
	$("#list").hide();
}

var markers=[],infos=[];
function searchPoilist_CallBack(data){
	mapObj.clearOverlaysByType('marker');
	mapObj.clearInfoWindow();
	if(data.status=='E0'){
		if(data.bounds){
			var a=data.bounds.split(';');
			if(a.length==2){
				var b=a[0].split(','),c=a[1].split(',');
				mapObj.setBounds(new MMap.Bounds(new MMap.LngLat(b[0],b[1]),new MMap.LngLat(c[0],c[1])));
			}else{//只返回一条数据时
				var d=a[0].split(',');
				mapObj.setCenter(new MMap.LngLat(d[0],d[1]));
				addMarker(d[0],d[1]);
			}
		}	
		var list='<ul id="poisearchUl">';markers=[];infos=[];
		for(var i=0,l=data.list.length;i<l;i++){
			if(i==0){
				addMarker(data.list[i].x,data.list[i].y);	
			}
		}
	}else{
		 alert("未找到任何结果");
	}
}





function checkaddress(){
	var lng=$("#lngX").val();
	var lat=$("#latY").val();
	var address=$("#address").val();
	var addresstype=$("#addresstype").val();
	var cbdid=$("#cbdid").val();
	if(lng=="" || lat=="" || address=="" || lng==undefined || lat==undefined || address==undefined || addresstype==undefined){
		alert("定位资料未完整，请重新定位！");return false;	
	}
	var url="/user/cbd/map/?action=add&cbdid="+cbdid+"&addresstype="+addresstype+"&lng="+lng+"&lat="+lat+"&address="+encodeURI(address);
	txt=ajaxhtml(url);
	if(txt=="ok"){
		parent.document.location.reload();	
	}else{
		alert(txt);	
	}
}