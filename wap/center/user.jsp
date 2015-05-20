<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="用户中心" /></jsp:include>


<h1 class="user_tle"><img src="${portrait}" alt=""><br>
	<strong>账户：${phone }<br>账户总额:${integer } 积分</strong>

</h1>

<div class="main">
	<section class="user">
		
		<ul>
			<li><a href="/queryUserDetail_wap.shtml"><span><img src="/wap/images/icon_1.png">基本信息 </span><em><img src="/wap/images/basic_link.png" ></em></a></li>
			<li><a href="/getUserExchangeList_wap.shtml"><span><img src="/wap/images/icon_20.png">我的兑换</span><em><img src="/wap/images/basic_link.png" ></em></a></li>
			<%--<li><a href="/queryUserVip_wap.shtml"><span><img src="/wap/images/icon_21.png">我的会员卡</span><em><img src="/wap/images/basic_link.png" ></em></a></li>--%>
			<li><a href="/getUserIntegralDeductionList_wap.shtml"><span><img src="/wap/images/icon_17.png">我的积分</span><em><img src="/wap/images/basic_link.png" ></em></a></li>
			<li><a href="/queryUserBankCard_wap.shtml"><span><img src="/wap/images/icon_4.png">我的银行卡</span><em><img src="/wap/images/basic_link.png" ></em></a></li>
			<li><a href="/toUserResetPassword_wap.shtml"><span><img src="/wap/images/icon_22.png">修改密码</span><em><img src="/wap/images/basic_link.png" ></em></a></li>
			<li><a href="/queryUserCbd_wap.shtml"><span><img src="/wap/images/icon_23.png">我的商圈</span><em><img src="/wap/images/basic_link.png" ></em></a></li>
			<li><a href="/queryUserAddress_wap.shtml"><span><img src="/wap/images/icon_5.png">收货地址</span><em><img src="/wap/images/basic_link.png" ></em></a></li>
			<li><a href="/to_queryUserSpread_wap.shtml"><span><img src="/wap/images/Lottery.png">推广反利</span><em><img src="/wap/images/basic_link.png" ></em></a></li>
		</ul>
	</section>

</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>
<script>$('.header_user').attr('href','out_wap.shtml').attr('class','header_load').html('退出')</script>