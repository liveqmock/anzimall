<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
request.setAttribute("head","vipcard");
request.setAttribute("css","global,list");
request.setAttribute("js","global,fukrm,list");

%>
		
<jsp:include page="/cglib/header.jsp" flush="true"/>


	<div class="mainbox">
		
		<div class="listad">
			<div class="listad_imp">
				<ul>
				<c:forEach var="goods" items="${goods}" varStatus="status" >
					<li><a href="/get_merchantsgoods_details.shtml?id=${goods.id}"><img src="${url }${goods.advertisingimg }"></a></li>
				</c:forEach>
				</ul>
			</div>
			<i class="toleft">&lt;</i><i class="toright">&gt;</i>
			<div class="listad_lst">
			<ul>
					
			<c:forEach var="merchants_user" items="${merchants_user}" varStatus="status" begin="0" end="11" step="1">
				<li><a href="/get_merchants_details.shtml?mid=${ merchants_user.id}"><img src="${url }${merchants_user.logo}" alt="${merchants_user.username}"></a></li>
			</c:forEach>
			
				</ul>
			</div>
		</div>
		
		
		<!--
	

	<div class="filter">
		<h2 class="title"><b class="active">在<font color="#ee2323">补水</font>中筛选</b></h2>

		<div class="filter_con">
			<div class="filter_tit">品牌：</div>
			<div class="filter_attrs">
				<ul>
				<c:forEach var="goodsBrand" items="${goodsBrand}" varStatus="status" begin="0" end="8" step="1">
					<li><a href="/get_more_brand.shtml?brand=${goodsBrand.brand }">${goodsBrand.brand }</a></li>
				</c:forEach>
				</ul>
			</div>
		</div>
		<div class="filter_con">
			<div class="filter_tit">分类：</div>
			<div class="filter_attrs" id="filter_cat">
				<ul>
				
				<c:forEach var="goodsType" items="${goodsType}" varStatus="status" begin="0" end="8" step="1">
					<li><a href="/get_more_tid.shtml?tid=${goodsType.tid }">${goodsType.tid }</a></li>
				</c:forEach>
				
				</ul>
			</div>
		</div>
	</div>


	-->
	
	
	<!--<div class="lists">
		<div class="list_tle">
			<div class="list_tle_queue">
				<a href="#" class="list_tle_strong">综合 <span>↑</span></a>
				<a href="#">人气 <span>↓</span></a>
				<a href="#">新品 <span>↓</span></a>
				<a href="#">销量 <span>↓</span></a>
				<a href="#">价格 <span>↕</span></a>
			</div>
			
			<div class="list_tle_view">
				<a href="#"><img src="/images/list_view_shop.png">商铺</a>
				<a href="/get_moreall.shtml"><img src="/images/list_view_pig.png">大图</a>
				<a href="/get_more.shtml" class="list_tle_strong"><img src="/images/list_view_list_hot.png">列表</a>
				<a href="#"><img src="/images/icon_list_his.png">最近浏览 </a>
			</div>
			
			<div class="list_tle_page">
				<span><font color="#ee2323">1</font>/5</span>
				<a href="#">&lt;</a>
				<a href="#">&gt;</a>
			</div>
			

		</div>

		-->


		<!-- 	<li>
				<h6><a href="#"><img src="/images/membercard_bkg.png" ></a></h6>
				<h4><a href="#"><img src="/images/membercard_bkg.png" ></a></h4>
				<span><a href="#">NO.00001</a></span>
				<h3><a href="#">会员卡</a></h3>
				<p><a href="#">最高可享全单折优惠</a></p>
				<cite>
					<h4>会员卡</h4>
					<p>
						<b>体验卡：</b>0元累计消费10000元，<a href="#">享全单9.9折</a><br>
						<b>普通卡：</b>10000元累计消费20000元，<a href="#">享全单9.8折</a><br>
						<b>贵宾卡：</b>20000元累计消费30000元，<a href="#">享全单9.7折</a><br>
						<b>白银卡：</b>累计消费40000元，<a href="#">享全单9.6折</a>
					</p>
					<a href="#" class="membercard_btn">放入银行卡</a>
				</cite>
			</li>
 -->

 
	<div class="lists">
		<ul class="list_card">
	
			<c:forEach var="merchants_vipcard" items="${pageSupport.result}" varStatus="index" begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}" end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">

				<li>
					<h6><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}"><img src="${url }${merchants_vipcard.vipphoto}" ></a></h6>
					<h4><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}"><img src="${url}${merchants_vipcard.logo}"></a></h4>
					<span><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}">NO.00001</a></span>
					<h3><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}">${merchants_vipcard.username}</a></h3>
					<p><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}">最高可享全单${merchants_vipcard.upgrade1}折优惠</a></p>
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
					<div class="card_cnt_btn">
						<a href="/toVipcardBindBank.shtml?mid=${merchants_vipcard.mid }" class="intocard">放入银行卡</a>
						<a href="/get_merchants_details.shtml?mid=${ merchants_vipcard.mid}" class="gotolook">进入店铺</a>
					</div>
				</li>
			</c:forEach>
		</ul>
		
		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false" ></div> 

	</div>
		




<jsp:include page="/cglib/footer.jsp" flush="true"/>
