<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="基本信息" /></jsp:include>

<style>

	/*
.device {
  width: 640px;
  height: 300px;
  position: relative;

}
.device .arrow-left {
  background: url(img/arrows.png) no-repeat left top;
  position: absolute;
  left: 10px;
  top: 50%;
  margin-top: -15px;
  width: 17px;
  height: 30px;
}
.device .arrow-right {
  background: url(img/arrows.png) no-repeat left bottom;
  position: absolute;
  right: 10px;
  top: 50%;
  margin-top: -15px;
  width: 17px;
  height: 30px;
}
.swiper-container {
  height: 300px;
  width: 640px;
}
.content-slide {
  padding: 20px;
  color: #fff;
}
.title {
  font-size: 25px;
  margin-bottom: 10px;
}
.pagination {
  position: absolute;
  left: 0;
  text-align: center;
  bottom:5px;
  width: 100%;
}
.swiper-pagination-switch {
  display: inline-block;
  width: 10px;
  height: 10px;
  border-radius: 10px;
  background: #999;
  box-shadow: 0px 1px 2px #555 inset;
  margin: 0 3px;
  cursor: pointer;
}
.swiper-active-switch {
  background: #fff;
}
.swiper-slide{float: left;}
*/
</style>




<div class="main">



	<div class="banner swiper-container">
		<ul class="swiper-wrapper">
			<li class="swiper-slide">
				<h3><a href="/getExchangeGoods.whtml?id=244" class="banner_pic"><img src="http://114.215.239.103:8085/data/merchants_product/160/8ebd6be900002e0a.jpg" alt=""></a></h3>
				<cite>
					<h4>iPhone 6 4.7英寸移动公开版国行正品</h4>
					<p>Apple/苹果 iPhone 6 4.7英寸移动公开版国行正品</p>
					<a href="#" class="banner_btn">立即兑换</a>
				</cite>
			</li>
			<li class="swiper-slide">
				<h3><a href="/getExchangeGoods.whtml?id=244" class="banner_pic"><img src="http://114.215.239.103:8085/data/merchants_product/160/8ebd6be900002e0a.jpg" alt=""></a></h3>
				<cite>
					<h4>iPhone 6 4.7英寸移动公开版国行正品</h4>
					<p>Apple/苹果 iPhone 6 4.7英寸移动公开版国行正品</p>
					<a href="#" class="banner_btn">立即兑换</a>
				</cite>
			</li>
			<li class="swiper-slide">
				<h3><a href="/getExchangeGoods.whtml?id=244" class="banner_pic"><img src="http://114.215.239.103:8085/data/merchants_product/160/8ebd6be900002e0a.jpg" alt=""></a></h3>
				<cite>
					<h4>iPhone 6 4.7英寸移动公开版国行正品</h4>
					<p>Apple/苹果 iPhone 6 4.7英寸移动公开版国行正品</p>
					<a href="#" class="banner_btn">立即兑换</a>
				</cite>
			</li>
			<li class="swiper-slide">
				<h3><a href="/getExchangeGoods.whtml?id=244" class="banner_pic"><img src="http://114.215.239.103:8085/data/merchants_product/160/8ebd6be900002e0a.jpg" alt=""></a></h3>
				<cite>
					<h4>iPhone 6 4.7英寸移动公开版国行正品</h4>
					<p>Apple/苹果 iPhone 6 4.7英寸移动公开版国行正品</p>
					<a href="#" class="banner_btn">立即兑换</a>
				</cite>
			</li>
		</ul>

		<h2>
			<a href="/index.whtml?advertising=1" class="active" >限时兑换</a>
			<a href="/index.whtml?advertising=2"  >热 门</a>
			<a href="/index.whtml?advertising=3"  >特 价</a>
			<a href="/index.whtml?advertising=4"  >活 动</a>
			<a href="/index.whtml?advertising=5"  >猜你喜欢</a>
		</h2>
	</div>

</div>











<jsp:include page="/wap/footer.jsp" flush="true"/>
<script src="/wap/js/idangerous.swiper-2.0.min.js"></script>
  <script>
  var mySwiper = new Swiper('.banner',{
    // pagination: '.pagination',
    loop:true,
    grabCursor: true,
    paginationClickable: true
  });



  // $('.arrow-left').on('click', function(e){
  //   e.preventDefault()
  //   mySwiper.swipePrev()
  // })
  // $('.arrow-right').on('click', function(e){
  //   e.preventDefault()
  //   mySwiper.swipeNext()
  // });


  </script>