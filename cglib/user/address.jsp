<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%> 
<%
	request.setAttribute("css","global,backstage");
	request.setAttribute("js","global,fukrm,backstage");
%>
<jsp:include page="/cglib/header.jsp" flush="true"/>

<div class="main">
		
	<jsp:include page="/cglib/user/user_sidebar.jsp" flush="true"/>	


	<div class="content">
		<h2 style="color:#05c99e;">
			<i class="icon icon-shouhuodizhi"></i>
			<strong>收货地址</strong>
			<small>为了便于积分兑换礼品后，礼品能准确送达。请填写正确的收货地址。。</small>
		</h2>

		<div class="circle" >
			<c:choose>  
				<c:when test="${fn:length(list) == 0}">
					<div class="circle_note"><i class="icon icon-tishi" style="color:#ee2323;"></i>您还未添加收货地址，请 <font color="#ee2323">添加地址</font></div>
				</c:when> 
				<c:when test="${fn:length(list) >=5}"><div class="circle_note">您的收货地址<font color="#ee2323">已满</font>，如需添加，请删除不常用收货地址</div></c:when> 
				
				<c:otherwise> 
				 	<div class="circle_note circle_crl_add">
				 		<span>您已添加${fn:length(list)}个收货地址，还可以添加<b>${5-fn:length(list)}</b>个。</span>
				 		<a href="#" class="add">添加地址</a>
				 	</div>
				 	<br>
				</c:otherwise>  
			</c:choose>

			<form action="/addUserAddress.shtml" class="fukrm fukrm-ajax circle_form" <c:if test="${fn:length(list) == 0}">style="height:auto;"</c:if>>
				<cite>
					<span>收货人姓名：</span>
					<label><input type="text" name="name" placeholder="请输入收货人姓名" check="required"></label>
				</cite>
				<cite>
					<span>收货人电话：</span>
					<label><input type="text" name="phone" placeholder="请输入收货人联系电话" check="required"></label>
				</cite>
				<cite class="js-form-city">
					<span>地址：</span>
					<select class="prov" name="province" default="广东" style="width: 100px;"></select>
					<select class="city" name="city" default="深圳市" style="width:180px;"></select>
					<select class="town" name="county" default="南山区" style="width:250px;"></select>
				</cite>
				<cite>
					<span>详细地址：</span>
					<label><input type="text" name="address" placeholder="请输入收货人详细地址，精确到门牌号" check="required"></label>
				</cite>
				<cite>
					<span>设置默认地址：</span>
					<label>
						<input type="radio" name="defaultstate" value="1" >是
						<input type="radio" name="defaultstate" value="0" checked="checked">否
					</label>
				</cite>
				<cite><input type="submit" value="添加"></cite>
			</form>
		</div>
	</div>


	<div class="content">
		<h4 class="tit"><b></b>我的收货地址</h4>

		<div class="table circle_table" style="width: 825px;margin:0 auto 10px; ">
			<table border="0" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th>姓名：</th>
						<th>地址：</th>
						<th>联系方式：</th>
						<th style="width:50px">操作</th>
						<th style="width:80px"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${list}" varStatus="status">
					<tr>
						<td>${list.name}</td>
						<td>${list.province}${list.city }${list.county }${list.address}</td>
						<td>${list.phone}</td>
						<td style="text-align: center;">
							<a href="#" class="rewrite"><i class="icon icon-xiugai"></i></a>
							<a class="delete" href="delUserAddress.shtml?id=${list.id}" onclick="return confirm('确认删除该收货地址吗')"><i class="icon icon-shanchu delete"></i></a>
						</td>
						<td style="text-align: center;">
							<c:if test="${list.defaultstate == '0'}">
								<a href="/setUserAddress.shtml?id=${list.id}" class="default">设为默认</a>
							</c:if> 
							<c:if test="${list.defaultstate == '1'}">
							 <b class="default">默认地址</b>
							</c:if> 
						</td>
						<td class="circle_form">
							<form action="/updateUserAddress.shtml" method="post" class="fukrm fukrm-ajax circle_form">
								<br>
								<cite><span>收货人姓名：</span><input type="text" name="name" value="${list.name }" class="input_style"></cite>
								<cite><span>联系方式：</span><input type="text" name="phone" value="${list.phone }" class="input_style" ></cite>
								<cite><span>选择省市区：</span>
									<div class="js-form-city">
										<select class="prov" name="province"  style="width: 90px;" default="${list.province}"></select>
										<select class="city" name="city" style="width:120px;" default="${list.city}"></select>
										<select class="town" name="county" style="width:180px;" default="${list.county}"></select>
									</div>
								</cite>

								<cite><span>详细地址：</span><input type="text" name="address"  value="${list.address }" class="input_style" ></cite>
								<cite>
									<span>设置默认地址：</span>
									<c:if test="${list.defaultstate == '0'}">
										<label>
											<input type="radio" name="defaultstate" value="1" >是
											<input type="radio" name="defaultstate" value="0" checked="checked">否
										</label>
									</c:if>
									<c:if test="${list.defaultstate == '1'}">
										<label>
											<input type="radio" name="defaultstate" value="1" checked="checked">是
											<input type="radio" name="defaultstate" value="0" >否
										</label>
									</c:if>
								</cite>
								<input type="hidden" name="id" value="${list.id }">
								<cite><input type="submit" value="修改"> &nbsp;&nbsp;&nbsp;&nbsp; <a href="#" class="turnback">不修改，直接返回>></a></cite>
								<i class="icon icon-xiangshangshouqi closed"></i>
							</form>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<div class="content userdetail_lists" >
		<h4 class="tit"><b></b>猜你喜欢</h4>
		<ul>
		<c:forEach var="goodslist" items="${goodslist}" varStatus="status" begin="0" end="3" step="1">
			<li>
				<h3><a href="/get_merchantsgoods_details.shtml?id=${goodslist.id }" target="_blank"><img src="${url }${goodslist.advertisingimg }" alt="${goodslist.name }"></a></h3>
				<p><a  href="/get_merchantsgoods_details.shtml?id=${goodslist.id }" target="_blank">${goodslist.name }</a></p>
				<cite>
					<strong>${goodslist.pay_maney}</strong>元 +<strong>${goodslist.pay_integer}</strong>积分
					<span><em>${goodslist.amount }人</em>兑换</span>
				</cite>
			</li>
		</c:forEach>
		</ul>
	</div>


</div>




<jsp:include page="/cglib/footer.jsp" flush="true"/>
<script>
	
	// 添加收货地址
	$('.circle').on('click','a.add',function(){
		if(this.open){
			$(this).css('background-color','#67D013').html('添加地址').closest('.circle').find('.circle_form').animate({height:0},500);
			this.open = false;
		}else{
			$(this).css('background-color','#aaa').html('取消添加').closest('.circle').find('.circle_form').animate({height:350},500);
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
			tr.after('<tr><td colspan="5" style="height: 0;padding:0;overflow: hidden;"></td></tr>');
			tr.find('form').appendTo(tr.next().find('td')).animate({height:370},500);
		}
		return false;

	}).on('click','a.turnback,i.closed',function(){
		mapsChange($(this).closest('tr').find('form'));
		return false;
		
	});


</script>

