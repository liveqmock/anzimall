<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
request.setAttribute("head","exchange");
request.setAttribute("css","global,list");
request.setAttribute("js","global,fukrm,list");

%>
		
<jsp:include page="/cglib/header.jsp" flush="true"/>


	<div class="mainbox">
		
		<div class="listad">
			<div class="listad_imp">
				<ul>
					
				<c:forEach var="goods" items="${goods}" varStatus="status" >
					<li><a href="/get_merchantsgoods_details.shtml?id=${goods.id}" target="_blank"><img src="${goods.advertisingimg }"></a></li>
				</c:forEach>
				
				</ul>
			</div>
			<i class="toleft">&lt;</i><i class="toright">&gt;</i>
		

			<div class="listad_lst">
				<ul>
					
			<c:forEach var="merchants_user" items="${merchants_user}" varStatus="status" begin="0" end="11" step="1">
				<li><a href="/get_merchants_details.shtml?mid=${ merchants_user.id}" target="_blank"><img src="${merchants_user.logo}" alt="${merchants_user.username}"></a></li>
			</c:forEach>
			
				</ul>
			</div>
		</div>
	
	<div class="filter">
		<!--<h2 class="title"><b class="active">在<font color="#ee2323">补水</font>中筛选</b></h2>-->
		<div class="filter_con">
			<div class="filter_tit">分类：</div>
			<div class="filter_attrs" id="filter_cat">
				<ul>
				
				<c:forEach var="goodsType" items="${goodsType}" varStatus="status" begin="0" end="8" step="1">
					<li><a href="/get_more.shtml?tid=${goodsType.tid }">${goodsType.tid }</a></li>
				</c:forEach>
				
				</ul>
			</div>
		</div>
		<div class="filter_con">
			<!--<div class="filter_tit">热门：</div>
			<div class="filter_attrs">
				<ul>
				<c:forEach var="goodsBrand" items="${goodsBrand}" varStatus="status" begin="0" end="8" step="1">
					<li><a href="/get_more.shtml?brand=${goodsBrand.brand }">${goodsBrand.brand }</a></li>
				</c:forEach>
				</ul>
			</div>
		--></div>
		
	</div>


	<div class="lists">
		<div class="list_tle">
		
		<!--
		
			<div class="list_tle_queue">
				<a href="#" class="list_tle_strong">综合 <span>↑</span></a>
				<a href="#">人气 <span>↓</span></a>
				<a href="#">新品 <span>↓</span></a>
				<a href="#">销量 <span>↓</span></a>
				<a href="#">价格 <span>↕</span></a>
			</div>
			
			-->
			
			<div class="list_tle_view">
			
				<!--<a href="#"><img src="/images/list_view_shop.png">商铺</a>-->
				
				<a href="/get_moreall.shtml${str }"><img src="/images/list_view_pig.png">大图</a>
				<a href="/get_more.shtml${str }" class="list_tle_strong"><img src="/images/list_view_list_hot.png">列表</a>
				
				<!--<a href="#"><img src="/images/icon_list_his.png">最近浏览 </a>-->
				
			</div>
			<!--<div class="list_tle_page">
				<span><font color="#ee2323">1</font>/5</span>
				<a href="#">&lt;</a>
				<a href="#">&gt;</a>
			</div>-->
		</div>
		
		<ul class="list_item">
			<c:if test="${list_goods_size eq 0 }">
				<span style="margin-left: 32px;line-height: 32px;padding-left: 10px;font-size: 14px;font-weight: 700;color: #f60;">抱歉，没有找到与“
					<em style="color:black;">${newword }</em> ”相关的商品
				</span>
			</c:if></br>
		
		
		<c:forEach var="list_goods" items="${pageSupport.result}" varStatus="index" begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}" end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
			<li>
				<h3><a href="/get_merchantsgoods_details.shtml?id=${list_goods.id }" target="_blank"><img src="${list_goods.scopeimg }" alt="${list_goods2.name}"></a></h3>
				<h4><a href="/get_merchantsgoods_details.shtml?id=${list_goods.id }" target="_blank"><strong>${list_goods.name}</strong></a></h4>
				<p><em>商户地址：${list_goods.province }${list_goods.city }${list_goods.county }${list_goods.address }</em></p>
				<cite>
					<strong>${list_goods.pay_maney}</strong>元+<strong>${list_goods.pay_integer}</strong>积分<br>
					<span><em>${list_goods.amount }人</em>兑换</span>
				</cite>
				<div class="lists_ctl"><a href="/get_merchantsgoods_details.shtml?id=${list_goods.id }" class="exchange" target="_blank">积分兑换</a></div>
			</li>
		</c:forEach>
		</ul>
		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false" ></div>
		

	</div>
		




<jsp:include page="/cglib/footer.jsp" flush="true"/>