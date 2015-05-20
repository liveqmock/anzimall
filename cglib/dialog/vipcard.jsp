<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<style>
	
.dialog_vipcard{width: 764px;overflow: hidden;}
.dialog_vipcard_ok{display: block;width: 190px;height: 40px;margin: 40px auto 30px; text-align: center;line-height: 40px;text-align: center;font-size: 16px;color: #fff;background: #ee2323;}

.dialog_vipcard_crd {position: relative; height: 162px;margin: 10px 0 10px 10px;font-style: normal;}
.dialog_vipcard_crd img{width: 100%;}
.dialog_vipcard_crd>h6{position: absolute;top: 10px;left:10px;width: 224px;}
.dialog_vipcard_crd>h3{position: absolute;width: 225px; font-size: 18px;line-height: 30px; font-weight: 500;color: #9c772c;top: 50%; margin-top: -15px;left: 10px;right: 0;text-align: center;}
.dialog_vipcard_crd>h4{position: absolute;top: 15px;left: 20px; width: 50px;margin-left: 6px;margin-top: 4px; }
.dialog_vipcard_crd>span{position: absolute;top: 15px;left: 180px;text-shadow:1px 1px 2px #402c03;  font-size: 12px;font-family: "宋体";color: #F5ED95;}
.dialog_vipcard_crd>p{position: absolute;width: 225px;left: 20px;bottom: 18px;color: #9c772c;font-size: 12px;}
.dialog_vipcard_crd cite {position: absolute;top: 0;left: 240px;padding-left: 20px; background: rgba(255,255,255,0.9);height: 100%;font-style: normal;}
.dialog_vipcard_crd cite h4{font-size: 16px;color: #000;line-height: 36px;}
.dialog_vipcard_crd cite p{height: 110px;overflow: hidden; font-size: 12px;line-height: 22px;color: #878787;white-space: nowrap;}
.dialog_vipcard_crd cite p b{color: #595757;}
.dialog_vipcard_crd cite p a{color: #ee2323;}

.dialog_vipcard_bank{clear: both;background: #fcfbf3;border-top:1px solid #e6e5e5;padding: 20px;}
.dialog_vipcard_bank h3{padding-left: 20px;line-height: 36px; font-size: 14px;color: #666;font-weight: normal;background: url(/images/icon_dialog_vipcard.png) no-repeat left center;}
.dialog_vipcard_bank ul{padding:10px;background: #eaeaea;border:1px solid #c9c7c7;overflow: hidden;}
.dialog_vipcard_bank li{float: left; position: relative;width: 224px;height: 141px; margin: 10px 5px;}
.dialog_vipcard_bank ul strong{position: absolute;font-size: 14px; right: 20px;top: 10px;color: #fff;}
.dialog_vipcard_bank ul span{position: absolute;white-space:nowrap;left: 20px;top: 50%;margin-top: 4px;line-height: 24px;color: #fff;font-size: 14px;text-shadow:1px 1px 2px #000;}


/*工商银行*/
.dialog_vipcard_bank_102{background: url(/images/bank_card_102.jpg);}





</style>



<div class="dialog_vipcard">

	<div class="dialog_vipcard_crd">
		<h6><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}"><img src="${url }${merchants_vipcard.vipphoto}" ></a></h6>
		<h4><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}"><img src="${url}${merchants_vipcard.logo}"></a></h4>
		<span><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}">NO.00001</a></span>
		<h3><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}">${merchants_vipcard.username}</a></h3>
		<p><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}">最高可享全单${merchants_vipcard.discount}折优惠</a></p>
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
	</div>

	<div class="dialog_vipcard_bank">
		<h3>加入该会员卡,当您使用您的下列银行卡刷卡时可享受更多折扣！</h3>
		<ul>
		<c:forEach var="userlist" items="${userlist}" varStatus="status">	
			<li class="dialog_vipcard_bank_102"><strong>${userlist.bankname}</strong><span>${userlist.bankcardno}</span></li>
		</c:forEach>	
		</ul>
		<a href="/user_add_vipcard.shtml?vid=${merchants_vipcard.id}" class="dialog_vipcard_ok">确定加入</a>
	</div>

</div>


<script>
	

	$('.dialog_vipcard_ok').on('click',function () {

		$.ajax({
			type: "POST",
			dataType:'text',
			url: $(this).attr('href'),
			success: function(text) { 
				dialog.html(text).dialog('open');
			},
			error:function(){
				// results('服务器繁忙，请稍后再试');
			}
		});

		dialog.dialog('close');
		return false;
	});



</script>
