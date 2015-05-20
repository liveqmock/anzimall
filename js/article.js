$(function () {

	var pathname = location.href;
	$('.help_side').on('click','dt',function(){

		$(this).closest('dl').toggleClass("active");

		return false;
	}).find('a').each(function(){

		if(this.href.indexOf(pathname)>=0){
			$(this).addClass('curr').closest('dl').addClass('active')
		}

	});
});