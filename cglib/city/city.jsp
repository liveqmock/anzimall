<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%

request.setAttribute("css","global,city");
request.setAttribute("js","global,fukrm,index");
%>



<jsp:include page="/cglib/header.jsp" flush="true"/>



<div class="mainbox">
	<div class="main3">
		<div class="about">
			<div class="hot_city2">
				<input type="hidden" name="backurl" id="backurl" value="#"><span class="back">热门城市：</span>
				<a href="/updatecity.html?city=北京">北京</a>
				<a href="/updatecity.html?city=上海">上海</a>
				<a href="/updatecity.html?city=广州">广州</a>
				<a href="/updatecity.html?city=深圳">深圳</a>
				<a href="/updatecity.html?city=杭州">杭州</a>
				<a href="/updatecity.html?city=成都">成都</a>
				<a href="/updatecity.html?city=东莞">东莞</a>
				<a href="/updatecity.html?city=珠海">珠海</a>
				<a href="/updatecity.html?city=厦门">厦门</a>
				<a href="/updatecity.html?city=南昌">南昌</a>
			</div>
			<div class="city_mod">
				
				<form action="/updatecity.html" class="fukrm" method="get">
					<cite class="js-form-city" style="margin-top:30px;margin-left:80px;">
							<span>按省份选择：</span>
							<select class="prov" default="北京"  style="width: 90px;"></select>
							<select class="city" name="city" default="北京市" style="width:120px;"></select>
							<lable><input type="submit" value="确定" style="margin:0;"></lable>
					</cite><br>
				</form>
				
				<div class="city_hd">
					按首字母查找
					<b></b>
				</div>	
				<div class="city_list">
					<ul>
						<li><b>A</b><a href="/updatecity.html?city=安阳">安阳</a>|<a href="/updatecity.html?city=安康">安康</a>|<a href="/updatecity.html?city=鞍山">鞍山</a>|</li>
						<li><b>B</b><a href="/updatecity.html?city=北京">北京</a>|<a href="/updatecity.html?city=保山">保山</a>|<a href="/updatecity.html?city=宝鸡">宝鸡</a>|</li>
						<li><b>C</b><a href="/updatecity.html?city=重庆">重庆</a>|<a href="/updatecity.html?city=长沙">长沙</a>|<a href="/updatecity.html?city=成都">成都</a>|<a href="/updatecity.html?city=长治">长治</a>|<a href="/updatecity.html?city=长春">长春</a>|</li>
						<li><b>D</b><a href="/updatecity.html?city=东莞">东莞</a>|<a href="/updatecity.html?city=大同">大同</a>|<a href="/updatecity.html?city=德宏">德宏</a>|<a href="/updatecity.html?city=大连">大连</a>|<a href="/updatecity.html?city=大庆">大庆</a>|<a href="/updatecity.html?city=大兴安岭">大兴安岭</a>|</li>
						<li><b>F</b><a href="/updatecity.html?city=福州">福州</a>|</li>
						<li><b>H</b><a href="/updatecity.html?city=惠州">惠州</a>|<a href="/updatecity.html?city=杭州">杭州</a>|<a href="/updatecity.html?city=湖州">湖州</a>|<a href="/updatecity.html?city=海口">海口</a>|<a href="/updatecity.html?city=合肥">合肥</a>|<a href="/updatecity.html?city=淮南">淮南</a>|<a href="/updatecity.html?city=汉中">汉中</a>|<a href="/updatecity.html?city=哈尔滨">哈尔滨</a>|<a href="/updatecity.html?city=鹤岗">鹤岗</a>|<a href="/updatecity.html?city=黑河">黑河</a>|<a href="/updatecity.html?city=呼和浩特">呼和浩特</a>|</li>
						<li><b>J</b><a href="/updatecity.html?city=嘉兴">嘉兴</a>|<a href="/updatecity.html?city=金华">金华</a>|<a href="/updatecity.html?city=焦作">焦作</a>|<a href="/updatecity.html?city=济南">济南</a>|<a href="/updatecity.html?city=晋城">晋城</a>|<a href="/updatecity.html?city=晋中">晋中</a>|<a href="/updatecity.html?city=吉林">吉林</a>|<a href="/updatecity.html?city=鸡西">鸡西</a>|<a href="/updatecity.html?city=佳木斯">佳木斯</a>|</li>
						<li><b>K</b><a href="/updatecity.html?city=昆明">昆明</a>|</li>
						<li><b>L</b><a href="/updatecity.html?city=丽水">丽水</a>|<a href="/updatecity.html?city=龙岩">龙岩</a>|<a href="/updatecity.html?city=洛阳">洛阳</a>|<a href="/updatecity.html?city=临汾">临汾</a>|<a href="/updatecity.html?city=吕梁">吕梁</a>|<a href="/updatecity.html?city=丽江">丽江</a>|<a href="/updatecity.html?city=辽源">辽源</a>|<a href="/updatecity.html?city=兰州">兰州</a>|</li>
						<li><b>M</b><a href="/updatecity.html?city=牡丹江">牡丹江</a>|</li>
						<li><b>N</b><a href="/updatecity.html?city=南宁">南宁</a>|<a href="/updatecity.html?city=宁波">宁波</a>|<a href="/updatecity.html?city=南平">南平</a>|<a href="/updatecity.html?city=宁德">宁德</a>|<a href="/updatecity.html?city=南昌">南昌</a>|<a href="/updatecity.html?city=南阳">南阳</a>|</li>
						<li><b>P</b><a href="/updatecity.html?city=莆田">莆田</a>|<a href="/updatecity.html?city=盘锦">盘锦</a>|</li>
						<li><b>Q</b><a href="/updatecity.html?city=衢州">衢州</a>|<a href="/updatecity.html?city=泉州">泉州</a>|<a href="/updatecity.html?city=七台河">七台河</a>|<a href="/updatecity.html?city=齐齐哈尔">齐齐哈尔</a>|</li>
						<li><b>S</b><a href="/updatecity.html?city=上海">上海</a>|<a href="/updatecity.html?city=深圳">深圳</a>|<a href="/updatecity.html?city=绍兴">绍兴</a>|<a href="/updatecity.html?city=三明">三明</a>|<a href="/updatecity.html?city=朔州">朔州</a>|<a href="/updatecity.html?city=四平">四平</a>|<a href="/updatecity.html?city=松原">松原</a>|<a href="/updatecity.html?city=商洛">商洛</a>|<a href="/updatecity.html?city=沈阳">沈阳</a>|<a href="/updatecity.html?city=双鸭山">双鸭山</a>|<a href="/updatecity.html?city=绥化">绥化</a>|</li>
						<li><b>T</b><a href="/updatecity.html?city=天津">天津</a>|<a href="/updatecity.html?city=台州">台州</a>|<a href="/updatecity.html?city=太原">太原</a>|<a href="/updatecity.html?city=通化">通化</a>|<a href="/updatecity.html?city=铜川">铜川</a>|</li>
						<li><b>W</b><a href="/updatecity.html?city=温州">温州</a>|<a href="/updatecity.html?city=威海">威海</a>|<a href="/updatecity.html?city=渭南">渭南</a>|<a href="/updatecity.html?city=乌鲁木齐">乌鲁木齐</a>|</li>
						<li><b>X</b><a href="/updatecity.html?city=厦门">厦门</a>|<a href="/updatecity.html?city=忻州">忻州</a>|<a href="/updatecity.html?city=西安">西安</a>|<a href="/updatecity.html?city=咸阳">咸阳</a>|</li>
						<li><b>Y</b><a href="/updatecity.html?city=阳泉">阳泉</a>|<a href="/updatecity.html?city=运城">运城</a>|<a href="/updatecity.html?city=玉溪">玉溪</a>|<a href="/updatecity.html?city=延吉">延吉</a>|<a href="/updatecity.html?city=延安">延安</a>|<a href="/updatecity.html?city=榆林">榆林</a>|<a href="/updatecity.html?city=银川">银川</a>|<a href="/updatecity.html?city=伊春">伊春</a>|</li>
						<li><b>Z</b><a href="/updatecity.html?city=珠海">珠海</a>|<a href="/updatecity.html?city=中山">中山</a>|<a href="/updatecity.html?city=舟山">舟山</a>|<a href="/updatecity.html?city=漳州">漳州</a>|<a href="/updatecity.html?city=郑州">郑州</a>|</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>




<!--页脚-->
<jsp:include page="/cglib/footer.jsp" flush="true"/>

<script type="text/javascript">
$(function(){
//城市列表hover
	$(".city_list li").hover(function(){
			$(this).addClass("hover").find("b").css({"_background":"http://www.ulpos.com/city/url(images/img_script.gif) -13px -907px no-repeat"});
		},function(){
			$(this).removeClass("hover").find("b").css({"_background":"http://www.ulpos.com/city/url(images/img_script.gif) -69px -907px no-repeat"});
	})
	
	$(".city_list li a").click(function(){
		gocity($(this).text());
	})	
	$(".hot_city2 a").click(function(){
		var city=$(this).text();
		city=city.replace("站>>","");
		gocity(city);
	})		
	
})
</script>