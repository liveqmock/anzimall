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
		<h2 style="color:#ef7805;">
			<i class="icon icon-yinxingqia"></i>
			<strong>我的银行卡</strong>
			<small>添加银行卡，则银行卡下的积分会导入到您的账户，您使用账户下任意银行卡都可以享受优惠，最多5张</small>
		</h2>

		<div class="circle" >
			<c:choose>  
				<c:when test="${fn:length(list) == 0}">
					<div class="circle_note"><i class="icon icon-tishi" style="color:#ee2323;"></i>您还未添加银行卡，请 <font color="#ee2323">添加银行卡</font></div>
				</c:when> 
				<c:when test="${fn:length(list) >=5}"><div class="circle_note">您的银行卡<font color="#ee2323">已满</font>，如需添加，请删除不常用银行卡</div></c:when> 
				
				<c:otherwise> 
				 	<div class="circle_note circle_crl_add">
				 		<span>您已添加${fn:length(list)}张银行卡，还可以添加<b>${5-fn:length(list)}</b>张。</span>
				 		<a href="#" class="add">添加银行卡</a>
				 	</div>
				 	<br>
				</c:otherwise>  
			</c:choose>
			
			<form action="/userAddBankcard.shtml" class="fukrm fukrm-ajax circle_form" <c:if test="${fn:length(list) == 0}">style="height:auto;"</c:if>>
			
				<cite>
					<span><em>*</em>银行卡号：</span>
					<input type="text" name="bankcardno" check="required,bank" placeholder="请输入您的银行卡号" class="fukrm_save">
				</cite>
				<cite>
					<span><em>*</em>开户行：</span>
					<select name="bankno" style="width: 312px;" class="bankno">
						<option value="102100099996">中国工商银行</option>
						<option value="103100000026">中国农业银行</option>
						<option value="104100000004">中国银行</option>
						<option value="105100000017">中国建设银行</option>
						<option value="303100000006">中国光大银行</option>
						<option value="305100000013">中国民生银行</option>
						<option value="403100000004">中国邮政储蓄银行</option>
						<option value="301290000007">交通银行</option>
						<option value="302100011000">中信银行</option>
						<option value="304100040000">华夏银行</option>
						<option value="307584007998">平安银行</option>
						<option value="308584000013">招商银行</option>
						<option value="309391000011">兴业银行</option>
						<option value="310290000013">上海浦东发展银行</option>
						<option value="313100000013">北京银行</option>
						<option value="313110000017">天津银行</option>
						<option value="313121006888">河北银行</option>
						<option value="313131000016">邢台银行</option>
						<option value="313141052422">承德银行</option>
						<option value="313143005157">沧州银行</option>
						<option value="313161000017">晋商银行</option>
						<option value="313191000011">内蒙古银行</option>
						<option value="313192000013">包商银行</option>
						<option value="313205057830">鄂尔多斯银行</option>
						<option value="313222080002">大连银行</option>
						<option value="313227000012">锦州银行</option>
						<option value="313227600018">葫芦岛银行</option>
						<option value="313228000276">营口银行</option>
						<option value="313229000008">阜新银行</option>
						<option value="313241066661">吉林银行</option>
						<option value="313261000018">哈尔滨银行</option>
						<option value="313261099913">龙江银行</option>
						<option value="313290000017">上海银行</option>
						<option value="313301008887">南京银行</option>
						<option value="313301099999">江苏银行</option>
						<option value="313305066661">苏州银行</option>
						<option value="313331000014">杭州银行</option>
						<option value="313332082914">宁波银行</option>
						<option value="313333007331">温州银行</option>
						<option value="313336071575">湖州银行</option>
						<option value="313337009004">绍兴银行</option>
						<option value="313345001665">台州银行</option>
						<option value="313391080007">福建海峡银行</option>
						<option value="313393080005">厦门银行</option>
						<option value="313421087506">南昌银行</option>
						<option value="313428076517">赣州银行</option>
						<option value="313433076801">上饶银行</option>
						<option value="313452060150">青岛银行</option>
						<option value="313453001017">齐商银行</option>
						<option value="313456000108">烟台银行</option>
						<option value="313458000013">潍坊银行</option>
						<option value="313461000012">济宁银行</option>
						<option value="313463400019">莱商银行</option>
						<option value="313468000015">德州银行</option>
						<option value="313473070018">临商银行</option>
						<option value="313473200011">日照银行</option>
						<option value="313491000232">郑州银行</option>
						<option value="313493080539">洛阳银行</option>
						<option value="313521000011">汉口银行</option>
						<option value="313551088886">长沙银行</option>
						<option value="313581003284">广州银行</option>
						<option value="313602088017">东莞银行</option>
						<option value="313611001018">广西北部湾银行</option>
						<option value="313614000012">柳州银行</option>
						<option value="313653000013">重庆银行</option>
						<option value="313658000014">德阳银行</option>
						<option value="313731010015">富滇银行</option>
						<option value="313821001016">兰州银行</option>
						<option value="313851000018">青海银行</option>
						<option value="313871000007">宁夏银行</option>
						<option value="313882000012">昆仑银行</option>
						<option value="315456000105">恒丰银行</option>
						<option value="316331000018">浙商银行</option>
						<option value="318110000014">渤海银行</option>
						<option value="319361000013">徽商银行</option>
						<option value="595100000007">新韩银行</option>
						<option value="596110000013">企业银行</option>
						<option value="597100000014">韩亚银行</option>
						<option value="402332010004">宁波鄞州农村合作银行</option>
						<option value="402391000068">福建省农村信用社</option>
						<option value="402521000032">湖北省农村信用社</option>
						<option value="402641000014">海南省农村信用社</option>
						<option value="313338707013">张家口市商业银行</option>
						<option value="313345010019">浙江泰隆商业银行</option>
						<option value="313345400010">浙江民泰商业银行</option>
						<option value="313463000993">泰安市商业银行</option>
						<option value="313465000010">威海市商业银行</option>
						<option value="313492070005">开封市商业银行</option>
						<option value="313513080408">南阳市商业银行</option>
						<option value="313656000019">攀枝花市商业银行</option>
						<option value="313659000016">绵阳市商业银行</option>
						<option value="313881000002">乌鲁木齐市商业银行</option>
						<option value="314305400015">吴江农村商业银行</option>
						<option value="314305506621">江苏常熟农村商业银行</option>
						<option value="314581000011">广州农村商业银行</option>
						<option value="314653000011">重庆农村商业银行</option>
						<option value="402100000018">北京农村商业银行</option>
						<option value="402584009991">深圳农村商业银行</option>
						<option value="402602000018">东莞农村商业银行</option>
						<option value="402871099996">宁夏黄河农村商业银行</option>
					</select>
				</cite>
				<input type="hidden" name="bank" class="bank" value=""/>
				<c:if test="${fn:length(list) == 0 }">
				<cite>
					<span><em>*</em>姓名：</span>
					<input type="text" name="realname" check="required,name" placeholder="请输入您的姓名" class="fukrm_save">
				</cite>

				<cite>
					<span><em>*</em>身份证号：</span>
					<input type="text" name="identity" check="required,idcard" placeholder="请输入您的身份证号" class="fukrm_save">
					<p><i class="icon icon-caution-block" style="color:#0EB5F0;font-size:16px;"></i>您的姓名、身份证号、银行卡等敏感信息主要用于校验您是银行卡法定执卡人，<br>拥有使用该银行卡积分的权力，请正确输入以保障您的合法权益，<br>您的个人信息处于绝对保密状态，验后即焚，请放心输入。</p>
				</cite>
				</c:if>
				<c:if test="${fn:length(list) > 0 }">
				<cite>
					<span><em>*</em>姓名：</span>
					<input type="text" name="realname" check="required,name" placeholder="请输入您的姓名" class="fukrm_save" disabled="disabled" value="${list[0].realname }" >
				</cite>

				<cite>
					<span><em>*</em>身份证号：</span>
					<input type="text" name="identity" check="required,idcard" placeholder="请输入您的身份证号" class="fukrm_save" disabled="disabled" value="${list[0].identity }">
					<p><i class="icon icon-caution-block" style="color:#0EB5F0;font-size:16px;"></i>您的姓名、身份证号、银行卡等敏感信息主要用于校验您是银行卡法定执卡人，<br>拥有使用该银行卡积分的权力，请正确输入以保障您的合法权益，<br>您的个人信息处于绝对保密状态，验后即焚，请放心输入。</p>
				</cite>
				</c:if>
				
				<cite><input type="submit" value="确认添加"></cite>
			</form>
		</div>


	</div>

	<div class="content">
		<h4 class="tit"><b></b>我的银行卡</h4>
		<ul class="bankcard">
			<c:forEach  var="list" items="${list}" varStatus="status">
			<li>
				<div class="bankcard_item">
					<h3>${list.bankname }</h3>
					<p>${list.bankcardno }</p>
					<a href="/userDelBankcard.shtml?id=${list.id}" class="delete"></a>
				</div>
			</li>
			</c:forEach>  
		</ul>

		<img src="/images/bankcard.jpg" alt="">

	</div>
</div>
	
<!--页脚-->
<jsp:include page="/cglib/footer.jsp" flush="true"/>

<script>
	
	// 添加银行卡
	$('.circle').on('click','a.add',function(){
		if(this.open){
			$(this).css('background-color','#67D013').html('添加银行卡').closest('.circle').find('.circle_form').animate({height:0},500);
			this.open = false;
		}else{
			$(this).css('background-color','#aaa').html('取消添加').closest('.circle').find('.circle_form').animate({height:350},500);
			this.open = true;
		}
		return false;
	});

	var bank = $('.bank')
	$('form').on('change','select.bankno',function(){
		bank.val(this.options[this.selectedIndex].text);
	});


</script>