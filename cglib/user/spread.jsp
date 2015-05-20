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
		<h2 style="color:#0eb5c4;">
			<i class="icon icon-chaopiao"></i>
			<strong>我的推广</strong>
			<small>赚更多积分，享受更多优惠！</small>
		</h2>

		<div class="spread">
			<a style="color:#87c149">
				<i class="icon icon-circle-outline spread_bkg"></i>
				<span><b>${totalintegral}</b>积分</span>
				<strong style="color:#e97105;">返利总额</strong>
			</a>
			<a href="/cglib/dialog/tuiguang.jsp" class="opendialog" style="color:#f8ce0c">
				<i class="icon icon-circle-outline spread_bkg"></i>
				<i class="icon icon-11zhuanhuan spread_icon"></i>
				<strong style="color:#f80c65;">怎样推广赚积分？</strong>
			</a>
			<%--<a href="/cglib/dialog/tuiguang.jsp" class="opendialog" style="color:#1dc1ea">
				<i class="icon icon-circle-outline spread_bkg"></i>
				<i class="icon icon-iconziti44 spread_icon"></i>
				<strong style="color:#1dc1ea;">我的返利账号</strong>
			</a>--%>
		</div>
		<div class="userdetail_qrcode" style="position: absolute;left: 330px;top: 85px;">
		<a class="qrcodeTable " href="http://www.anzimall.com/to_register_info.shtml?tg_sigen=${tg_sigen}" target="_blank"></a>
			<span>邀朋友注册享消费返利</span>
		</div>

	<!-- <div style="position: absolute; right:0;top:17px;font-size: 20px;color: #036eb8;">
			
			返利总额：<span style="font-size: 20px;color:#ee2323;">${totalintegral }</span>&nbsp;积分<br>
			<a class="color_red opendialog" style="font-size: 14px;" data="${code}" url="${url}">怎样推广赚积分？</a> 
			
		</div>
 -->
	
	</div>

	<div class="content">
		
		<h4 class="tit"><b></b>我推广的用户</h4>
		<div class="table" style="margin: 0 10px;">
			<table border="0" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th>推广用户</th>
						<th>注册时间</th>
						<th>获利积分</th>
					</tr>
				</thead>
			<tbody align="center">
		
				<c:if test="${empty list}"><tr><td colspan='3'  align="center"><img src='/images/no_bg4.png'></td></tr></c:if> 
				
				<c:forEach var="list" items="${pageSupport.result}" varStatus="index" begin="${pageSupport.currentPageNo*pageSupport.pageSize-pageSupport.pageSize}" end="${pageSupport.currentPageNo*pageSupport.pageSize-1}">
					<tr <c:if test="${index.count%2 != '1'}">style="background:#fafafa"</c:if>>
						<td>${list.phone}</td>
						<td><font color="#4DA077">${list.regdate}</font></td>
						<td><a >${list.integral}</a></td>
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
<script type="text/javascript" src="/js/jquery.qrcode.js"></script> 
<script type="text/javascript" src="/js/qrcode.js"></script>

	<script type="text/javascript">

	var qrcodeTable = $(".qrcodeTable");
	qrcodeTable.qrcode({render: "img",text:qrcodeTable.attr('href'),width:80,height:80});


		$(function(){
			$('.opendialog').click(function(){
				$.ajax({
					url:this.getAttribute('href'),
					data:{},
					dataType:"text",
					type:"post",
					success:function(data){
						dialog.html(data);
						dialog.dialog('open');		
					}
				});		
				return false;
			})
		
		
		$('.opendvip').click(function(){
			$.ajax({
					url:"/getVip.shtml",
					data:{},
					dataType:"text",
					type:"post",
					success:function(data){
					dialog.html(data);
					dialog.dialog('open');		
				}
			});		
			
		})
	})
	</script>



