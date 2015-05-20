<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<%
	request.setAttribute("css","global,backstage");
	request.setAttribute("js","global,fukrm,backstage");
%>

<jsp:include page="/cglib/header.jsp" flush="true"/>
<div class="main">
	
	<jsp:include page="/cglib/user/user_sidebar.jsp" flush="true"/>	

	<div class="content">
		<h2 style="color:#c66cdd;">
			<i class="icon icon-duihuan"></i>
			<strong>我的兑换</strong>
			<small>查看我兑换的商品，立即前往 <a href="/index.html">积分商城首页</a> 兑换您喜欢的商品吧！</small>
		</h2>

	 
		<form class="fukrm fukrm_small" action="/user_exchange_name.shtml" method="post">
			<span><i class="icon icon-riqixuanzetubiao"></i>起止日期：</span>

			<input type="text" name="start" class="datepicker" onclick="laydate()" value="" readonly="readonly" style="width:90px;" >

			<input type="text" name="end" class="datepicker" onclick="laydate()" value="" readonly="readonly" style="width:90px;" >
			<%--  <span class="exchange_date_link">
				<a href="#">今天</a>
				<a href="#">最近1个月</a>
				<a href="#">3个月</a>
				<a href="#">1年</a>
				<a href="#">1年前>></a>
			</span> -->
			--%>
		
			<!-- <div class="flots_slider"><input id="slider" type="slider" name="area" value="1;31" /></div> -->
			&nbsp;&nbsp;&nbsp;&nbsp;商品名称：<input type="text" name="name" value="" style="width:100px; maxlength=20;">
			<input type="submit" value="查询">
			&nbsp;&nbsp;&nbsp;&nbsp;状态：<select id="status"name="status" style="width:100px; maxlength=20; position:relative; z-index:99999; ">
                                    <option value="0" selected="selected">未发货</option>
                                    <option value="1">已发货</option>
                                    <option value="2">确认收货</option>
                                </select>
			<input type="submit" value="查询">
		</form>
		<br>

	</div>


	<div class="content exchange_list">

		<table border="0" cellspacing="0" cellpadding="0">
			<thead>
				<tr>
					<th class="egl_first">商品信息</th>
					<th>数量</th>
					<th>实付款</th>
					<th>兑换方式</th>
					<th class="egl_lasts">交易状态</th>
				</tr>
			</thead>
		
			<tbody>
				<tr class="egl_blank"><td colspan="5"></td></tr>
			<c:if test="${empty list}"><tr><td colspan='5'  align="center"><img src='/images/no_bg4.png'></td></tr></c:if>
			<c:forEach var="list" items="${pageSupport.result}" varStatus="index" begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}" end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">

				
				<tr class="egl_title">
					<td class="egl_first" colspan="6">
						<i class="icon icon-cantingguanli"></i>${list.storename }
						<em><i class="icon icon-shijian"></i><fmt:formatDate value="${list.getdate }" pattern="yyyy/MM/dd  HH:mm:ss"/></em>
					</td>
				</tr>
				<tr>
					<td class="egl_first egl_product">
						<h5><a href="/get_merchantsgoods_details.shtml?id=${list.gid }" target="_blank"><img src="${list.scopeimg}" width="100" height="90"></a></h5>
						<p><a href="/get_merchantsgoods_details.shtml?id=${list.gid }" target="_blank"><b></b></a><a href="/get_merchantsgoods_details.shtml?id=${list.gid }">${list.name}</a></p>
						<cite><strong>${list.pay_maney}</strong>元 +<strong>${list.pay_integer}</strong>积分</cite>
						<h6><a href="/get_merchantsgoods_details.shtml?id=${list.gid }" target="_blank"><i class="icon icon-search"></i>查看详情</a></h6>
					</td>

					<td class="egl_number">${list.number}</td>
						
					<td class="egl_actual">
						<strong>${list.paymoney}</strong>元 +
						<strong>${list.payintegral}</strong>积分
					</td>

					<td class="egl_way">
						<c:if test="${empty list.expressno}">
							<font color="#40BB3D">邮寄快递</font><br>
							<!-- 收货人姓名：<font color="#40BB3D">${list.username}</font><br/> -->
							<span><i class="icon icon-shouhuodizhi"></i>收货地址：<font color="#117BC8">${list.aaddress}</font></span><br>
							<span><i class="icon icon-shouhuodizhi"></i>运费：<font color="#117BC8">${list.freight*list.number}</font></span>
						</c:if>
						<c:if test="${empty list.aid}">
							<font color="#c66cdd">线下兑换</font><br>
							<span><i class="icon icon-duihuan"></i>兑换码：<font color="#117BC8">${list.expressno}</font></span><br>
							<span><i class="icon icon-duihuan"></i>兑换地址：<font color="#117BC8">${list.address}</font></span>
					</c:if>
					</td>

					<td class="egl_lasts egl_status">
						<c:if test="${list.type eq '0'}">
							<c:if test="${list.status eq '0'}"></c:if>未发货
							<c:if test="${list.status eq '1'}">已发货 <a href="/confirm_exchange.shtml?id=${list.id}">确认收货</a></c:if>
							<c:if test="${list.status eq '2'}">已完成</c:if>
						</c:if>
						<c:if test="${list.type eq '1'}">
							<c:if test="${list.status eq '0'}"><font color="#ee2323">未兑换</font></c:if>
							<c:if test="${list.status eq '1'}">已完成</c:if>
						</c:if>
					</td>
				</tr>
				<tr class="egl_blank"><td colspan="6"></td></tr>
			</c:forEach>
			</tbody>

		</table>

		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false" ></div> 
	</div>
</div>



<!--页脚-->
<jsp:include page="/cglib/footer.jsp" flush="true"/>
<!-- <script src="/js/jquery.slider.js"></script> -->
<script src="/js/laydate/laydate.js"></script>

<script type="text/javascript">



	// $("#slider").slider({from:1,to: 10,scale:(function(v){for(var i=0,r=[];i<v;){i++;r.push(i%2 == 0 ? '|' : i);}return r;})(10),limits:false,skin:"round_plastic",callback:function( value ){
	// 	// var v = value.split(';');
	// 	// v[0] = v[0]<10? '0'+v[0]:v[0];
	// 	// v[1] = v[1]<10? '0'+v[1]:v[1];
	// 	// begin.val(year+'-'+month+'-'+ v[0]);
	// 	// toend.val(year+'-'+month+'-'+ v[1]);
	// }});

</script>