<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%

	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";

	request.setAttribute("basePath",basePath);
	request.setAttribute("css","global,register");
	request.setAttribute("js","global,fukrm,register");

%>

	

	<jsp:include page="/cglib/header.jsp" flush="true"/>

	<style>
		.msg{display: none; line-height: 28px;width: 310px; margin-top: -5px;margin-bottom: 10px; margin-left: 170px; border:1px solid #ddd;background: #f1f1f1;}
		.msg cite{margin-bottom: 0;margin-left: 90px;}
	</style>
	<div class="mainbox">
	
	
		<div class="content reginster cs">
			<h2 class="register_title">
				<strong>帐户注册</strong>
				<span>已有账号，马上<a href="/login_basic.shtml">登录</a>/<a href="/index.html">返回首页</a></span>
			</h2>
			<%--<div class="register_steps"><img src="/images/register_steps1.png" alt=""></div> --%>


			<form action="registered_info.shtml" class="fukrm register_ajax" >
			
			<!--<input type="hidden" name="tg_sign" value="${ uuid }">
			<input type="hidden" name="mid" value="${ mmid }">-->
			
				<cite>
					<span><em>*</em>手机号码：</span>
					<input type="text" name="phone" check="required,phone,ajax_register_phone2" placeholder="请输入手机号码">
					<p>手机号码用作积分商城登陆账户名，请保证输入正确有效</p>
				</cite>	
				<cite>
					<span>推广码：</span>
					<input type="text" name="tg_sigen" value="${ tg_sigen }">
					<p>请输入推广码，可不填</p>
				</cite>
				
				<cite>
					<span><em>*</em>手机验证码：</span>
					<input type="text" name="code" check="required" style="width:136px" placeholder="请输入手机验证码" class="checkcode">
					<b class="getcode" for="phone" url="getverificationcode.shtml">获取验证码 ></b>
				</cite>
				

				<div class="msg"></div>

				
				<label>
					<span><em>*</em>账户密码：</span>
					<input type="password" name="password" placeholder="请输入积分商城账户密码" check="required"  class="checkstrong fukrm_save">
					<p style="width:400px;padding-top:5px;">
						密码强度: <span class="checkstrong_res">
						<b>弱</b><b>中</b><b>强</b></span><br>
						<img src="/images/icon_warm.png" style="vertical-align: -2px;">为保证您帐号的安全，建议密码由6-16位字符（字母、数字、符号）<br>组合而成，不能只使用一种字符，不区分大小写！
					</p>
				</label>

				
				<label>
					<span><em>*</em>确认账户密码：</span>
					<input type="password" name=""  placeholder="请重新输入账户密码" check="required,repassword"  class="fukrm_save">
					<p>再次输入您的账户密码以确认您记住了您的密码</p>
				</label>




				<%--<div class="fukrm_strongsave">
					
					<cite>
						<span><em>*</em>银行卡号：</span>
						<input type="text" name="bankcardno" check="required,bank" placeholder="请输入您的银行卡号" class="fukrm_save">
					</cite>


					<cite>
						<span><em>*</em>开户行：</span>
						<select name="bank">
							<option value="中国工商银行" data="102" >中国工商银行</option>
							<option value="中国农业银行" data="103">中国农业银行</option>
							<option value="中国银行" data="104" >中国银行</option>
							<option value="中国建设银行" data="105" >中国建设银行</option>
							<option value="国家开发银行" data="201" >国家开发银行</option>
							<option value="中国进出口银行" data="202" >中国进出口银行</option>
							<option value="中国农业发展银行" data="203" >中国农业发展银行</option>
							<option value="交通银行" data="301" >交通银行</option>
							<option value="中国邮政储蓄银行" data="403" >中国邮政储蓄银行</option>
							<option value="中信银行" data="302" >中信银行</option>
							<option value="中国光大银行" data="303" >中国光大银行</option>
							<option value="华夏银行" data="304" >华夏银行</option>
							<option value="中国民生银行" data="305" >中国民生银行</option>
							<option value="广东发展银行" data="306" >广东发展银行</option>
							<option value="深圳发展银行" data="307" >深圳发展银行</option>
							<option value="招商银行" data="308" >招商银行</option>
							<option value="兴业银行" data="309" >兴业银行</option>
							<option value="上海浦东发展银行" data="310" >上海浦东发展银行</option>
							<option value="城市商业银行" data="313" >城市商业银行</option>
							<option value="农村商业银行" data="314" >农村商业银行</option>
							<option value="恒丰银行" data="315" >恒丰银行</option>
							<option value="农村合作银行" data="317" >农村合作银行</option>
							<option value="渤海银行" data="318" >渤海银行</option>
							<option value="徽商银行" data="319" >徽商银行</option>
							<option value="城市信用社" data="401" >城市信用社</option>
							<option value="农村信用联社" data="402" >农村信用联社</option>
							<option value="香港上海汇丰银行" data="501">香港上海汇丰银行</option>
							<option value="东亚银行" data="502" >东亚银行</option>
							<option value="南洋商业银行" data="503" >南洋商业银行</option>
							<option value="恒生银行" data="504" >恒生银行</option>
							<option value="中国银行（香港）" data="505" >中国银行（香港）</option>
							<option value="(香港地区)银行" data="989">(香港地区)银行</option>
							<option value="集友银行" data="506" >集友银行</option>
							<option value="星展银行（香港）" data="509" >星展银行（香港）</option>
							<option value="永亨银行" data="510" >永亨银行</option>
							<option value="美国花旗银行" data="531" >美国花旗银行</option>
							<option value="美国银行" data="532" >美国银行</option>
							<option value="美国摩根大通银行" data="533" >美国摩根大通银行</option>
							<option value="日本三菱东京日联银行" data="561" >日本三菱东京日联银行</option>
							<option value="日本日联银行" data="562" >日本日联银行</option>
							<option value="日本三井住友银行" data="563" >日本三井住友银行</option>
							<option value="日本瑞穗实业银行" data="564" >日本瑞穗实业银行</option>
							<option value="日本山口银行" data="565" >日本山口银行</option>
							<option value="韩国外换银行" data="591" >韩国外换银行</option>
							<option value="韩国新韩银行" data="592" >韩国新韩银行</option>
							<option value="韩国友利银行" data="593" >韩国友利银行</option>
							<option value="韩国产业银行" data="594" >韩国产业银行</option>
							<option value="韩国中小企业银行" data="596">韩国中小企业银行</option>
							<option value="新加坡星展银行" data="623">新加坡星展银行</option>
							<option value="奥地利中央合作银行" data="641">奥地利中央合作银行</option>
							<option value="比利时联合银行" data="651" >比利时联合银行</option>
							<option value="荷兰银行" data="661" >荷兰银行</option>
							<option value="荷兰商业银行" data="662" >荷兰商业银行</option>
							<option value="渣打银行" data="671" >渣打银行</option>
							<option value="法国兴业银行" data="691" >法国兴业银行</option>
							<option value="法国巴黎银行" data="692" >法国巴黎银行</option>
							<option value="法国东方汇理银行" data="694">法国东方汇理银行</option>
							<option value="德国德累斯登银行" data="711">德国德累斯登银行</option>
							<option value="德意志银行" data="712" >德意志银行</option>
							<option value="德国商业银行" data="713" >德国商业银行</option>
							<option value="德国西德银行" data="714" >德国西德银行</option>
							<option value="德国巴伐利亚州银行" data="715" >德国巴伐利亚州银行</option>
							<option value="瑞士信贷银行" data="741" >瑞士信贷银行</option>
							<option value="加拿大蒙特利尔银行" data="752" >加拿大蒙特利尔银行</option>
							<option value="澳大利亚和新西兰银行集团" data="761" >澳大利亚和新西兰银行集团</option>
							<option value="德富泰银行" data="775">德富泰银行</option>
							<option value="厦门国际银行" data="781">厦门国际银行</option>
							<option value="法国巴黎银行（中国）" data="782" >法国巴黎银行（中国）</option>
							<option value="平安银行" data="783" >平安银行</option>
							<option value="青岛国际银行" data="786">青岛国际银行</option>
							<option value="华一银行" data="787">华一银行</option>
						</select>
					</cite>


					<cite>
						<span><em>*</em>开户行地区：</span>
						<div class="js-bankcity" >
							<select class="prov" name="province" style="width: 90px;"></select>
							<select class="city" name="city" style="width:120px;"></select>
							<input type="text" style="width: 120px;" >
						</div>
						
					</cite>

					<cite class="js-banknum">
						<span><em>*</em>开户行地址：</span>
						<div class="banknum_cnt">
							<table>
								<thead><tr><th>选择</th><th>开户行名称</th></tr></thead>
								<tbody></tbody>
							</table>
						</div>
						<input type="hidden" class="banknum_addr" name="address" >
						<input type="hidden" class="banknum_num" name="bankno" >
					</cite>


					
					<cite>
						<span><em>*</em>姓名：</span>
						<input type="text" name="realname" check="required,name" placeholder="请输入您的姓名" class="fukrm_save">
					</cite>

					<cite>
						<span><em>*</em>身份证号：</span>
						<input type="text" name="identity" check="required,idcard" placeholder="请输入您的身份证号" class="fukrm_save">
						<p>您的姓名、身份证号、银行卡等敏感信息主要用于校验您是银行卡法定执卡人，<br>拥有使用该银行卡积分的权力，请正确输入以保障您的合法权益，<br>您的个人信息处于绝对保密状态，验后即焚，请放心输入。</p>
					</cite>


					<cite><b class="btn checkbankcard" >校验银行卡</b><span class="checkbankcard_res"></span></cite>

				</div> --%>

				<cite>
					<input type="checkbox" name="agreement" checked="true" check="checked" class="checkagree">已阅读并同意<a href="/to_register_agreement.shtml" target="_blank" style="color:#f00;">《积分商城客户协议书》</a>
				</cite>


				<cite><input type="submit" value="提交"></cite>
				<br>
				<br>
			</form>



			<div class="reginster_note">
				<h2>常见FAQ</h2>
				<dl>
					<dt class="active"><a >1、提交个人基本信息</a></dt>
					<dd>注册安子积分商城获取您银行卡上的积分！请输入真实有效的手机号，我们将会对您输入的基本信息进行严格的实名认证，以保证您的账户资金安全！</dd>
					<dt><a href="/help.shtml?help=1001" target="_blank">2、注册流程</a></dt>
				</dl>
			</div>


		</div>

	

	</div>




	<!-- 页脚 -->
	<jsp:include page="/cglib/footer.jsp" flush="true"/>
