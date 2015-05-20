<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	request.setAttribute("head", "home");
	request.setAttribute("css", "global,backstage");
	request.setAttribute("js", "global,Validform.min");
%>
<jsp:include page="/cglib/header.jsp" flush="true" />


<img src="/images/pay_submit_hot.png" style="display: none;">
<div class="pay">
	
	<div class="pay_value">
		订单号：${ordernumber}
		<span>金额：<strong>${money }</strong>元</span>
	</div>




	<form action="readem_pay.shtml" class="pay_form" method="post">
		<input type="hidden" name="orderno" value="${ordernumber}">
		<input type="hidden" name="card" class="cardnumber">



		<div class="pay_way_tab">
			<strong>付款方式:</strong>
			<label class="active" to=".pay_way_had_card1"><input type="radio" name="type" value="1" checked="checked">储蓄卡</label>
			<label to=".pay_way_had_card2"><input type="radio" name="type" value="2">信用卡</label>
		</div>

		<c:if test="${fn:length(resultList1) > 0 || fn:length(resultList2) > 0}">
		<div class="pay_way_had ">
			<h3>已绑定银行卡：</h3>
			
		
			<div class="pay_way_had_card1">
				<!-- 储蓄卡 -->
				<c:forEach var="result" items="${resultList1}" >
					<label><input type="radio" name="bankno" value="${result.bankno}" card="${result.cardno}" ><span><img src="/images/${fn:substring(result.bankno, 0, 3)}.png"></span></label>
				</c:forEach>
			</div>

			<div class="pay_way_had_card2">
				<!-- 信用卡 -->
				<c:forEach var="result" items="${resultList2}" >
					<label><input type="radio" name="bankno" value="${result.bankno}" card="${result.card}"><span><img src="/images/${fn:substring(result.bankno, 0, 3)}.png"></span></label>
				</c:forEach>
			</div>

		</div>
		</c:if>

		<div class="pay_way_new">
			<h3>使用新银行卡支付：</h3>
			<label><input type="radio" name="bankno" value="103"><span><img src="/images/103.png"></span></label>
			<label><input type="radio" name="bankno" value="102"><span><img src="/images/102.png"></span></label>
			<label><input type="radio" name="bankno" value="105"><span><img src="/images/105.png"></span></label>
			<label><input type="radio" name="bankno" value="305"><span><img src="/images/305.png"></span></label>
			<label><input type="radio" name="bankno" value="403"><span><img src="/images/403.png"></span></label>
			<label><input type="radio" name="bankno" value="104"><span><img src="/images/104.png"></span></label>
			<label><input type="radio" name="bankno" value="307"><span><img src="/images/307.png"></span></label>
			<label><input type="radio" name="bankno" value="310"><span><img src="/images/310.png"></span></label>
			<label><input type="radio" name="bankno" value="308"><span><img src="/images/308.png"></span></label>
			<label><input type="radio" name="bankno" value="301"><span><img src="/images/301.png"></span></label>
			<label><input type="radio" name="bankno" value="304"><span><img src="/images/304.png"></span></label>
			<label><input type="radio" name="bankno" value="303"><span><img src="/images/303.png"></span></label>

		</div>


		<br><br>
		<input type="submit" value="下一步" class="pay_submit">
		<br><br><br><br>
	</form>

</div>



<!-- 页脚 -->
<jsp:include page="/cglib/footer.jsp" ></jsp:include>
<script>
		
			
		$('.pay_way_tab').on('click','label',function () {

			var the = $(this)
			the.addClass('active').siblings('label').removeClass('active');

			$('.pay_way_had').children('div').hide();
			$(the.attr('to')).show().find('input[name=bankno]').add('.pay_way_new input[name=bankno]').eq(0).trigger('click');
		});


		$('.pay_way_new').on('click','h3',function(){


			if(this.open){
				$(this).parent().animate({height:24},300);
				this.open = false;
			}else{

				$(this).parent().animate({height:275},300);
				this.open = true;
			}

		});


		$('.pay_form').find('input[name=bankno]').on('change',function(){
			$('.cardnumber').val(this.getAttribute('card'));

		}).eq(0).trigger('click');






</script>