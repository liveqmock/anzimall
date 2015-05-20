<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<%
	request.setAttribute("css","global,backstage");
	request.setAttribute("js","global,fukrm,backstage");
%>
<jsp:include page="/cglib/header.jsp" flush="true"/>
	<div class="main">
	
	<jsp:include page="/cglib/user/user_sidebar.jsp" flush="true"/>	


	<div class="usr_title">
		<i class="usr_title_img" style="background:none;"><img src="/images/vip.png" width="70px" height="70px" style="margin-top:-6px;"></i>
		<h3>我的会员卡</h3>
		<p>查看你的银行卡绑定的会员卡信息</p>
	</div>

<!-- 
	<form class="fukrm table_tle" action="/to_queryVipCardByCondition" method="post">
		商户名：<input type="text" name="storename" value="" style="width:100px;" maxlength="20">
		<input type="submit" value="查询">
	</form>
 -->

 	<c:if test="${empty list}"><div style="text-align: center;"><img src='/images/no_bg4.png'></div></c:if>


	<ul class="list_card">
		<c:forEach var="list" items="${pageSupport.result}" varStatus="index" begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}" end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
			<li>
				<h6><a href="/get_merchants_details.shtml?mid=${list.mid}"><img src="${url}${list.vipphoto}" ></a></h6>
<%--				<h4><a href="/get_merchants_details.shtml?mid=${list.mid}"><img src="${url}${list.logo}"></a></h4>--%>
				<span><a href="/get_merchants_details.shtml?mid=${list.mid}">NO.00001</a></span>
				<h3><a href="/get_merchants_details.shtml?mid=${list.mid}">${list.name}</a></h3>
				<p><a href="/get_merchants_details.shtml?mid=${list.mid}">最高可享全单${list.discount}折优惠</a></p>
				<cite>
					<h4>${list.name }</h4>
					<p>
					<b>${list.rulename1}</b>：0≤累计消费＜${list.discount2}元，享<font color="red">${list.upgrade1}折</font><br>	
					<c:if test="${!empty list.rulename2}">
						<b>${list.rulename2}</b>：${list.discount2}≤累计消费＜${list.discount3}元，享<font color="red">${list.upgrade2}折</font><br>
					</c:if>
					<c:if test="${!empty list.rulename3}">
						<b>${list.rulename3}</b>：${list.discount3}≤累计消费＜${list.discount4}元，享<font color="red">${list.upgrade3}折</font><br>
					</c:if>
					<c:if test="${!empty list.rulename4}">
						<b>${list.rulename4}</b>：${list.discount4}≤累计消费＜${list.discount5}元，享<font color="red">${list.upgrade4}折</font><br>
					</c:if>	
					<c:if test="${!empty list.rulename5}">
						<b>${list.rulename5}</b>：${list.discount5}≤累计消费，享<font color="red">${list.upgrade5}折</font>
					</c:if>		
					</p>	
				</cite>
				<div class="vipcard_status">
					<br>
					累计消费金额：<em>${list.consumetotal}</em>元<br>
					当前等级：<span style="color:#0CAB14">${list.type}</span><br>
					加入时间：<i><fmt:formatDate value="${list.getdate}" pattern="yyyy/MM/dd  HH:mm:ss"/></i><br>
					<a class="gotolook" href="/get_merchants_details.shtml?mid=${ list.mid}">进入店铺</a>
					<a class="delete"  href="/del_uservipcard.shtml?id=${list.vid}" onclick="return confirm('确认删除该会员卡吗')"><img src="/images/icon_delete.png" title="删除"></a>
				</div>
			</li>
		</c:forEach>
	</ul>

	<%--<div class="table">
		<table border="0" cellspacing="0" cellpadding="0" >
			
			<thead>
				<tr>
					<th>商铺名称</th>
					<th>获得时间</th>
					<th>类型</th>
					<th>累计消费金额</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
			
			<c:if test="${empty list}"><tr><td colspan='5'><div style="text-align: center;"><img src='/images/no_bg4.png'></div></td></tr></c:if>
	
			<c:forEach var="list" items="${pageSupport.result}" varStatus="index" begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}" end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
				<tr class="t" <c:if test="${index.count%2 != '1'}">style="background-color:#fafafa"</c:if>>
					<td style="text-align:center">${list.storename }</td>
					<td style="text-align:center"><font color="#ee2323"><fmt:formatDate value="${list.getdate}" pattern="yyyy/MM/dd  HH:mm:ss"/></font></td>
					<td style="text-align:center">${list.type }</td>
					<td style="text-align:center">${list.consumetotal }</td>
					<td style="text-align:center">
					<a class="delete" href="/del_uservipcard.shtml?id=${list.id}" onclick="return confirm('确认删除会员卡吗')"><font color="#ee2323">删除</font></a>
					<a class="delete" href="/get_merchants_details.shtml?mid=${list.mid }" target="_blank"><font color="#117BC8">详细</font></a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
			 
		</table>
		</div>
		--%>
		<c:if test="${!empty list}">
		<div class="ajaxpage" total="${pageSupport.totalRecordCount}" each="${pageSupport.pageSize}" page="${pageSupport.currentPageNo}" ajax="false" ></div> 
		</c:if>

		
	

	<div class="user_note ts">
		<p class="bold">温馨提示：</p>
		<p>1、您可以进入会员卡列表页或是商铺详情面选择商户的会员卡与账号进行绑定。</p>
		<p>2、会员卡绑定成功后，您在使用您名下绑定的所有银行卡都将享受到会员优惠。</p>
		<p>3、会员卡在使用过程中会累计您的消费金额，达到一定的数额时将会自动为您升级，即时您将享受到更加优惠的折扣。</p>
	</div>

</div>



<!--页脚-->
<jsp:include page="/cglib/footer.jsp" flush="true"/>



<script type="text/javascript">
function vipcard_selling(uvcid){
	var sellingprice=$("#sellingprice").val();
	if(sellingprice==""){
		alert("出售价不能为空");return;	
	}
	if(isNaN(sellingprice)){
		alert("售价必须为数字");return;
	}
	arr=sellingprice.split(".");
	if(arr.length>1){
		alert("售价不能含有小数点");return;		
	}
	sellingprice=parseInt(sellingprice);
	if(sellingprice<1){
		alert("售价必须大于1");return;	
	}
	url="/user/vipcard/ajax/?action=selling&uvcid="+uvcid+"&sellingprice="+sellingprice;
	txt=ajaxhtml(url);
	if(txt=="ok"){
		alert("设置出售成功！");
		document.location.reload();	
	}else{
		alert(txt);
	}
	return false;
}
function vipcard_transfer(uvcid){
	var tomobile=$("#tomobile").val();
	var tocard=$("#tocard").val();
	if(tomobile==""){
		alert("对方手机号码不能为空");return;	
	}
	if(isNaN(tomobile)){
		alert("对方手机号码必须为数字");return;
	}
	if(tomobile.length!=11){
		alert("银行卡号格式有误");return;	
	}
	if(tocard==""){
		alert("对方银行卡号不能为空");return;	
	}
	if(isNaN(tocard)){
		alert("对方银行卡号必须为数字");return;
	}
	
	url="/user/vipcard/ajax/?action=transfer&uvcid="+uvcid+"&tomobile="+tomobile+"&tocard="+tocard;
	txt=ajaxhtml(url);
	if(txt=="ok"){
		alert("转让成功！");
		document.location.reload();	
	}else{
		alert(txt);
	}
	return false;
}
function openpointok(){
	$('#chushouarea').show();
	$('#jihuoarea').hide();
	$('#openpointIframe').hide();	
}
</script>