
$(function(){

	// 侧边焦点问题
	var pathname = location.pathname || '';
	var active = $('.aside').find('a').filter(function(){


		// 我的积分
		if(this.getAttribute('href').indexOf('/user_integraldeduction')>-1 && pathname.indexOf('user_integralproduce') >-1){return true;}


		return pathname.indexOf(this.getAttribute('href')) >-1;
	}).last().parent().addClass('active').each(function(){this.style.color = this.getAttribute('color');});






	


	

	// 我的银行卡
	$(".bankcard").on('mouseenter','li',function(){
		$(this).children('div').animate({top:-10},300);
	}).on('mouseleave','li',function(){
		$(this).children('div').animate({top:0},300);
	}).on('click','a.delete',function(){
		return confirm('确定删除银行卡');
	}).on('click','a.bankcard_add',function(){

		var $this = $(this);
		if($('.bankcard').find('li').length>6){

			alert('银行卡最大不超过5张!');
			return false;
		}
		$.ajax({
			type: "POST",
			url: $this.attr('href'),
			dataType: "text",
			success: function(text){
				window.dialog.dialog("option","title", "添加银行卡").html(text).dialog('open');
				$this = null;
			}
		});

		return false;
	});

})