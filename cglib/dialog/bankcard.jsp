<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

	<style>
		.dialog_bankcard{padding: 0;}
	</style>

	<form action="/userAddBankcard.shtml" class="fukrm fukrm-ajax dialog_bankcard" style="width:680px">
		
		<br><br>

		<cite>
			<span><em>*</em>银行卡号：</span>
			<input type="text" name="bankcardno" check="required,bank" placeholder="请输入您的银行卡号" class="fukrm_save">
		</cite>

		<cite>
			<span><em>*</em>开户行：</span>
			<select name="bank">
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

<%--
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

--%>

		
		<cite>
			<span><em>*</em>姓名：</span>
			<input type="text" name="realname" check="required,name" placeholder="请输入您的姓名" class="fukrm_save">
		</cite>

		<cite>
			<span><em>*</em>身份证号：</span>
			<input type="text" name="identity" check="required,idcard" placeholder="请输入您的身份证号" class="fukrm_save">
			<p>您的姓名、身份证号、银行卡等敏感信息主要用于校验您是银行卡法定执卡人，<br>拥有使用该银行卡积分的权力，请正确输入以保障您的合法权益，<br>您的个人信息处于绝对保密状态，验后即焚，请放心输入。</p>
		</cite>


		<cite><input type="submit" value="提交内容"> &nbsp;&nbsp;&nbsp;<a href="#" style="color:#ee2323;" class="close">取消添加，直接返回>></a></cite>
		<br>
		<br>
	</form>



<script>




	var bankcard = $('.dialog_bankcard');

	// 渲染美化表单
	bankcard.fukrm();

	bankcard.on('click','a.close',function(){
		dialog.dialog('close');
		return false;
	});


	var bank = $('.bank')
	$('form').on('change','select.bankno',function(){
		bank.val(this.options[this.selectedIndex].text);
	});

<%--
/*
// 银行校验
	var banknum = $('.js-banknum');
	var banknum_cnt = banknum.find('.banknum_cnt');
	var banknum_add = banknum.find('.banknum_addr');
	var banknum_num = banknum.find('.banknum_num');

	var getdata = function(key){
		$.ajax({
			type: "POST",
			url: "/to_query_bankno.shtml",
			data:key,
			dataType: "json",
			success: function(json){
				var res = [];
				for(var i=0,l=json.length;i<l;i++){
					 res.push('<tr><td><input type="radio" name="xbankno" value="'+json[i].card+'"/></td><td>'+json[i].name+'</td></tr>');
				}
				banknum_cnt.find('tbody').html(res.join('\n')).find('tr').first().trigger("click");
			}
		});
	}

	// 取省市区
	function bankCity(citys) {

		var selects = $('.js-bankcity').find('select');
		
		selects.eq(1).on('change',function(){
			var bank = $(this).closest('form').find('select[name=bank]');
				bank = bank.find('option').eq(bank.get(0).selectedIndex).attr('data');
			getdata({card:bank+this.value});
		});

		selects.closest('form').find('select[name=bank]').on('change',function(){
			var bank = $(this).closest('form').find('select[name=bank]');
				bank = bank.find('option').eq(bank.get(0).selectedIndex).attr('data');
			getdata({card:bank+selects.eq(1).val()})
		});

		selects.eq(0).on('change',function(){
			var arr = citys[this.value];
			var res = [];
			for(var i=0,l=arr.length;i<l;i++){
				res.push('<option value="'+arr[i].cord+'">'+arr[i].city+'</option>');
			}
			selects.eq(1).html(res.join('')).trigger("change");
		}).html(function(){
			var res = [];
			for(var key in citys){
				res.push('<option value="'+key+'">'+key+'</option>');
			}
			return res.join('');
		}).trigger("change");


		// 筛选
		selects.closest('.js-bankcity').find('input').on('keyup',function(){
			var val = this.value;

			// 去英文
			var newkey = val.match(/[\u4E00-\u9FA5\uF900-\uFA2D]/gi) || [];


			var oldkey = newkey.join('');


			// 多方向匹配
			var reg = new RegExp('[\\w\\W]*'+newkey.join('[\\w\\W]*')+'[\\w\\W]*');



		
			// 检查是否与上一个相同（如果相同，则返回，如果不同，则保存新的值）
			if(oldkey == this.oldkey){
				return false;
			}else{
				this.oldkey = oldkey;
			}

			// 非空判断
			if(this.oldkey == ''){banknum_cnt.find('tr').show(); return false;}


			// 模糊匹配每个元素
			banknum_cnt.find('tr').each(function(){
				if(reg.test(this.innerHTML)){
					this.style.display = null;
				}else{
					this.style.display = 'none';
				}
			});
			

		});
	}



	banknum_cnt.on('click','tr',function(){
		var $this = $(this);

		// 选择选中的条目
		$this.find('input').prop('checked',true);


		// 给结果赋值
		banknum_add.val($this.find('td').eq(1).text());
		banknum_num.val($this.find('input').val());


	}).on('mousewheel',function(e){
		if (e && e.stopPropagation) {
			e.stopPropagation();
		} else {
			window.event.cancelBubble = true;
		}
	});


	var script = document.createElement("script");
	script.type = "text/javascript";
	script.src = "/js/bankcity.json";
	document.body.appendChild(script);


	// 异步提交文件
	bankcard.ajaxForm({
		type:'POST',
		dataType:'json',
		beforeSubmit:function(data,form){
			var check = [];
			form.find('input,textarea,select').filter('[check]').filter(':visible').each(function(){
				var the = $(this);
				if(!the.siblings('i').is('.form-note-success') && !the.formCheck() ){
					check.push(the);
				}
			});
			if(check.length>0){
				check[0].focus();
				return false;
			}
		},
		success: function(data) {
			if(data.status && data.status === '200'){
				if(data.url){
					window.location.href = data.url;
				}else{
					location.reload();
				}
				
			}else{
				alert(data.message);
			}
		}
	});
*/
--%>
</script>
