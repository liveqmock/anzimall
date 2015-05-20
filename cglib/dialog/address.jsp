<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<style>
	
.dialog_address{width: 818px;}


</style>


<form action="/addUserAddress.shtml" class="fukrm dialog_address">
	<br><br>
	<cite>
		<span>收货人姓名：</span>
		<label><input type="text" name="name" placeholder="请输入收货人姓名" check="required,name"></label>
	</cite>
	<cite>
		<span>收货人电话：</span>
		<label><input type="text" name="phone" placeholder="请输入收货人联系电话" check="required,phone"></label>
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

	<cite><input type="submit" value="添加">&nbsp;&nbsp;&nbsp;&nbsp; <a href="#" class="turnback">不添加，直接返回>></a></cite>
	<br>
	<br>
</form>


<script>

	$('.dialog_address').fukrm().ajaxForm({
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
			dialog.dialog('close');
			loading.show();
		},
		success: function(data) {

			if(data.status && data.status == '200'){
				$('form.exchange').submit();
			}else{
				alert(data.message);
				dialog.dialog('open');
			}
			
		}

	}).find('.js-form-city').citys();



	$('.turnback').on('click',function () {

		dialog.dialog('close');
		return false;
	})

	dialog.dialog("option","title",'添加地址');
</script>