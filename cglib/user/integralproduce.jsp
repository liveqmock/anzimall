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
		<h2 style="color:#fe6c6d;">
			<i class="icon icon-jifen"></i>
			<strong>我的积分</strong>
			<small>查看我的积分收入，使用记录。<a href="/user_spread.shtml">推广好友</a>可以获得积分哦</small>
		</h2>

		<h3 class="integral">积分总额：<strong> ${integer}</strong>   还在期待什么，马上<a href="/get_moremallall.shtml" class="btn_blue"> 兑换商品 </a>吧！</h3>

		
	</div>
	

	<div class="content">
		<h4 class="tit"><b></b>积分获得明细
			<a href="/user_integraldeduction.shtml" style="top:56px;">查看积分使用明细</a>
		</h4>

		<form class="fukrm fukrm_small" action="/user_integralproducebycondition.shtml" method="post">
			<span><i class="icon icon-riqixuanzetubiao"></i>起止日期：</span>
			<input type="text" name="start" class="datepicker" onclick="laydate()" value="" readonly="readonly" style="width:90px;" >
			-
			<input type="text" name="end" class="datepicker" onclick="laydate()" value="" readonly="readonly" style="width:90px;" >
			&nbsp;&nbsp;&nbsp;<input type="submit" value="查询">
			<!-- <span class="exchange_date_link">
				<a href="#">今天</a>
				<a href="#">最近1个月</a>
				<a href="#">3个月</a>
				<a href="#">1年</a>
				<a href="#">1年前>></a>
			</span> -->
			<!-- <div class="flots_slider"><input id="slider" type="slider" name="area" value="1;31" /></div> -->
		</form>

		<div class="table" style="margin:0 10px;">
			<table border="0" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th>时间</th>
						<th>原金额</th>
						<th>抵扣后金额</th>
						<th>消费方式</th>
						<th>产生积分</th>
						<th>订单号</th>
					</tr>
				</thead>
				<tbody align="center">
					<c:if test="${empty list}"><tr><td colspan='6' style="text-align: center;"><img src='/images/no_bg4.png'></td></tr></c:if>
				<c:forEach var="list" items="${pageSupport.result}" varStatus="index" begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}" end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
					<tr class="t"<c:if test="${index.count%2 != '1'}">style="background:#fafafa"</c:if>>
						<td><font color="#4DA077"><fmt:formatDate value="${list.endpaydate}" pattern="yyyy/MM/dd  HH:mm:ss"/></font></td>
						<td>${list.originalmoney}</td>
						<td>${list.discountmoney}</td>
						<td style="text-align: left;padding-left: 30px;">
							<c:if test="${empty list.bankcard}"><span class="btn_blue">线上消费</span></c:if>
							<c:if test="${!empty list.bankcard}">
								<span class="credit_card" >
									<span class="btn_green">刷卡消费</span><br> 
									<span><i class="icon icon-yinxingqia"></i>银行卡：${list.bankcard}</span>
								</span>
							</c:if>
						</td>
						<td><font color="#ee2323" font-size="20px;">${list.uobtainintegral}</font></td>
						<td>${list.ordernumber}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		
		</div>
		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false" ></div>
	</div>
</div>



<!--页脚-->
<jsp:include page="/cglib/footer.jsp" flush="true"/>
<script src="/js/laydate/laydate.js"></script>
<script>
	$('.head_nav li a').filter(function(){return /我的积分/.test(this.innerHTML);}).closest('li').addClass('active');
</script>