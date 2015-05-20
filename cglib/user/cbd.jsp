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
		<h2 style="color:#f9b206;">
			<i class="icon icon-shanghu01"></i>
			<strong>我的商圈</strong>
			<small>添加您居住、工作/学校的地址，或常去商圈。以便为您发现周边优惠。</small>
		</h2>
		
		<div class="circle" >
			<c:choose>  
				<c:when test="${fn:length(list) == 0}">
					<div class="circle_note"><i class="icon icon-tishi" style="color:#ee2323;"></i>您还未添加商圈，请 <font color="#ee2323">添加商圈</font></div>
				</c:when> 
				<c:when test="${fn:length(list) >=5}"><div class="circle_note">您的商圈<font color="#ee2323">已满</font>，如需添加，请删除不常用商圈</div></c:when> 
				
				<c:otherwise> 
				 	<div class="circle_note circle_crl_add">
				 		<span>您已添加${fn:length(list)}个商圈，还可以添加<b>${5-fn:length(list)}</b>个。</span>
				 		<a href="#" class="add">新增地址</a>
				 	</div>
				 	<br>
				</c:otherwise>  
			</c:choose>

			<form action="/addUserCdb.shtml" class="fukrm fukrm-ajax circle_form" <c:if test="${fn:length(list) == 0}">style="height:auto;"</c:if>>
				<br>
				<label>
					<span>您的省市区地址：</span>
					<div class="js-form-city">
						<select class="prov" name="province"  style="width: 90px;" default="广东"></select>
						<select class="city" name="city" style="width:120px;" default="深圳市"></select>
						<select class="town" name="county" style="width:180px;" default="南山区"></select>
					</div>
				</label>
				<label>
					<span>详细地址：</span>
					<input type="text" name="address" class="input_style" value="" check="required" style="width:500px;">
				</label>
				<label>
					<span><em>*</em>地图位置：</span>
					<div  class="circle_map"  id="map" style="width:430px;height:300px;margin-bottom: 10px;"></div>
					<input type="text" name="location" class="mapval" check="required" value="113.980066,22.543784" >
					<p>在地图中点击选择你的地图坐标,方便我们给你提供最近最方便的兑换地点</p>
				</label>

				<br>
				<label><input type="submit" value="添加"></label>
			</form>
		</div>


	</div>

	<div class="content">
		<h4 class="tit"><b></b>我常去的商圈</h4>
		<div class="table circle_table" style="width: 825px;margin:0 auto;">
			<table border="0" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th>地区</th>
						<th>详细地址</th>
						<th style="width:50px">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${list}" varStatus="status">
					<tr>
						<td>${list.province}${list.city}${list.county}</td>
						<td>${list.address}</td>
						<td style="text-align: center;">
							<a href="#" class="rewrite"><i class="icon icon-xiugai"></i></a>
							<a class="delete" href="/delUserCdb.shtml?id=${list.id}" onclick="return confirm('确认删除该商圈吗')"><i class="icon icon-shanchu delete"></i></a>
						</td>
						<td class="circle_form">
							<form action="/updateUserCdb.shtml" method="post" class="fukrm fukrm-ajax ">
								
								<br>
								<label>
									<span>您的省市区地址：</span>
									<div class="js-form-city">
										<select class="prov" name="province"  style="width: 90px;" default="${list.province}"></select>
										<select class="city" name="city" style="width:120px;" default="${list.city}"></select>
										<select class="town" name="county" style="width:180px;" default="${list.county}"></select>
									</div>
								</label>
								<label>
									<span>详细地址：</span>
									<input type="text" name="address" class="input_style" value="${list.address}">
								</label>
								<label>
									<span><em>*</em>地图位置：</span>
									<div class="circle_map" id="map${list.id}" style="width:430px;height:300px;margin-bottom: 10px;"></div>
									<input type="text" name="location" class="mapval" check="required"  value="${list.location}" >
									<p>在地图中点击选择你的地图坐标,方便我们给你提供最近最方便的兑换地点</p>
								</label>
								<input type="hidden" name="id" value="${list.id }">
								<label>
									<input type="submit" value="修改"> &nbsp;&nbsp;&nbsp;&nbsp; 
									<a href="#" class="turnback">不修改，直接返回>></a>
								</label>
								<i class="icon icon-xiangshangshouqi closed"></i>
							</form>
						</td>
					</tr>
					</c:forEach>
					
				</tbody>
			</table>
		</div>
		<img src="/images/cbd.jpg" alt=""></td>
				

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
		// 百度地图API功能

		$('.circle').add('.circle_form').find('form').each(function(){
			var $this = $(this);
			var mappoin = $this.find('.mapval').val().split(',');

			var map = new BMap.Map($this.find('.circle_map').attr('id'));
			var poin = new BMap.Point(mappoin[0],mappoin[1]);
			map.centerAndZoom(poin, 11);
			map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT}));
			map.addControl(new BMap.NavigationControl()); 
			map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL})); 
			map.enableScrollWheelZoom();                 //启用滚轮放大缩小

			var marker = new BMap.Marker(poin);
			map.addOverlay(marker);
			map.setCenter(poin);

			map.addEventListener("click", function(e){
				$this.find('.mapval').val(e.point.lng + ", " + e.point.lat);
				
				map.removeOverlay(marker);
				marker = new BMap.Marker(e.point);  // 创建标注
				map.addOverlay(marker);
			});
		});
		
	}  

	window.onload = loadJScript;  //异步加载地图


$(function(){


	// 我的商圈修改地址
	$('.circle').on('click','a.add',function(){
		if(this.open){
			$(this).css('background-color','#67D013').html('新增地址').closest('.circle').find('.circle_form').animate({height:0},500);
			this.open = false;
		}else{
			$(this).css('background-color','#aaa').html('取消添加').closest('.circle').find('.circle_form').animate({height:590},500);
			this.open = true;
		}
		return false;
	});

	var mapsChange = function($form){
		$form.animate({height:0},500,function(){
			var $this = $(this);
			var tr = $this.closest('tr');
			$this.appendTo(tr.prev().find('td').last()).closest('tr').find('a.rewrite').get(0).open = false;
			tr.remove();
		});
	}

	$('.circle_table').on('click','a.rewrite',function(){

		var tr = $(this).closest('tr');
		if(this.open) {
			mapsChange(tr.next().find('form'));
		}else{
			this.open = true;
			tr.after('<tr><td colspan="3" style="height: 0;padding:0;overflow: hidden;"></td></tr>');
			tr.find('form').appendTo(tr.next().find('td')).animate({height:590},500);
		}
		return false;

	}).on('click','a.turnback,i.closed',function(){
		mapsChange($(this).closest('tr').find('form'));
		return false;
		
	});


});

</script>

