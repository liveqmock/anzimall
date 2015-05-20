<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	request.setAttribute("head", "home");
	request.setAttribute("css", "global,index");
	request.setAttribute("js", "global,fukrm,index");
%>

<jsp:include page="/cglib/header.jsp" flush="true" />


<div class="mainbox cs">


	<!-- 广告 添加银行卡 -->
	<div class="whoami">
		<h1>
			返利积分时代，告别卡族、券族,
			<em>一张银行卡，轻松搞定!</em>
		</h1>
		<ul>
			<li>
				<a href="/to_register_info.shtml"><img src="/images/index_whoami_1.png" alt="">注册积分商城会员<br>并关联您的银行卡</a>
			</li>
			<li>
				<a href="/user_integraldeduction.shtml"><img src="/images/index_whoami_2.png" alt="">将银行卡升级成商户优惠券、<br>会员卡或积分</a>
			</li>
			<li>
				<a href="/get_moremerchants.shtml"><img src="/images/index_whoami_3.png" alt="">前往商家消费，刷银行卡<br>自动享优惠返利</a>
			</li>
			<c:if test="${sessionScope.userid eq null}">
				<li class="whoami_upgrade">
					<a href="/login_basic.shtml" class="tobankcard js-login">现在就登录</a>
				</li>
			</c:if>
		</ul>
		<i class="whoami_close" onclick="this.parentNode.style.display='none'"></i>
	</div>



	<div class="J_menu">
		<ul>
			<li class="all">全部分类 </li>
			<li>
	            
					<a href="/get_moreall.shtml?tid=图书产品" class="n2" target="_blank">图书产品</a>
					/
				
					<a href="/get_moreall.shtml?tid=音像制品" class="n2" target="_blank">音像制品</a>
					
				
			</li>
           <li>
	            
					<a href="/get_moreall.shtml?tid=大家电" class="n2" target="_blank">大家电</a>
					/
				
					<a href="/get_moreall.shtml?tid=生活电器" class="n2" target="_blank">生活电器</a>
					/
				
					<a href="/get_moreall.shtml?tid=厨房电器" class="n2" target="_blank">厨房电器</a>
					
				
			</li>
			<li>
				 
					<a href="/get_moreall.shtml?tid=手机产品" class="n2" target="_blank">手机产品</a>
					/
				
					<a href="/get_moreall.shtml?tid=数码产品" class="n2" target="_blank">数码产品</a>
					/
				
					<a href="/get_moreall.shtml?tid=电脑产品" class="n2" target="_blank">电脑产品</a>
					
				
			</li>
			<li>
				
					<a href="/get_moreall.shtml?tid=办公" class="n2" target="_blank">办公</a>
					/
				
					<a href="/get_moreall.shtml?tid=文具" class="n2" target="_blank">文具</a>
					
				
			</li>
			<li>
				
					<a href="/get_moreall.shtml?tid=家纺" class="n2" target="_blank">家纺</a>
					/
				
					<a href="/get_moreall.shtml?tid=家居" class="n2" target="_blank">家居</a>
					/
				
					<a href="/get_moreall.shtml?tid=厨卫" class="n2" target="_blank">厨卫</a>
					
				
			</li>
			<li>
				
					<a href="/get_moreall.shtml?tid=服装" class="n2" target="_blank">服装</a>
					/
				
					<a href="/get_moreall.shtml?tid=首饰" class="n2" target="_blank">首饰</a>
					/
				
					<a href="/get_moreall.shtml?tid=鞋袜" class="n2" target="_blank">鞋袜</a>
					
				
			</li>
			<li>
				
					<a href="/get_moreall.shtml?tid=化妆品" class="n2" target="_blank">化妆品 </a>
					/
				
					<a href="/get_moreall.shtml?tid=个人护理" class="n2" target="_blank">个人护理</a>
					
				
			</li>
			<li>
				
					<a href="/get_moreall.shtml?tid=箱包" class="n2" target="_blank">箱包</a>
					/
				
					<a href="/get_moreall.shtml?tid=钟表" class="n2" target="_blank">钟表</a>
					
				
			</li>
			<li>
				
					<a href="/get_moreall.shtml?tid=运动户外" class="n2" target="_blank">运动户外</a>
					
				
			</li>
			<li>
				
					<a href="/get_moreall.shtml?tid=汽车用品" class="n2" target="_blank">汽车用品</a>
					
				
			</li>
			<li>
				
					<a href="/get_moreall.shtml?tid=母婴" class="n2" target="_blank">母婴</a>
					/
				
					<a href="/get_moreall.shtml?tid=玩具" class="n2" target="_blank">玩具</a>
					
				
			</li>
			<li>
				
					<a href="/get_moreall.shtml?tid=食品" class="n2" target="_blank">食品</a>
					/
				
					<a href="/get_moreall.shtml?tid=饮料" class="n2" target="_blank">饮料</a>
					/
				
					<a href="/get_moreall.shtml?tid=酒类" class="n2" target="_blank">酒类</a>
					/
				
					<a href="/get_moreall.shtml?tid=生鲜" class="n2" target="_blank">生鲜</a>
					/
					
					<a href="/get_moreall.shtml?tid=粮油" class="n2" target="_blank">粮油</a>
					
				
			</li>
			<li>
				
					<a href="/get_moreall.shtml?tid=营养保健" class="n2" target="_blank">营养保健</a>
					
				
			</li>
			<li>
				
					<a href="/get_moreall.shtml?tid=彩票" class="n2" target="_blank">彩票</a>
					/
				
					<a href="/get_moreall.shtml?tid=旅行" class="n2" target="_blank">旅行</a>
					/
				
					<a href="/get_moreall.shtml?tid=充值" class="n2" target="_blank">充值</a>
					/
				
					<a href="/get_moreall.shtml?tid=票务" class="n2" target="_blank">票务</a>
					
				
			</li>
        </ul>
	</div>
	



	<div class="banners">
		<i class="toleft"><</i>
		<i class="toright">></i>
		<div class="banner">
			<ul>
				<c:forEach var="good" items="${goods1}" varStatus="status">
					<li><a href="/get_merchantsgoods_details.shtml?id=${good.id}" target="_blank"><img src="${good.advertisingimg }"></a></li>
				</c:forEach>
				<c:forEach var="good" items="${goods2}" varStatus="status">
					<li><a href="/get_merchantsgoods_details.shtml?id=${good.id}" target="_blank"><img src="${good.advertisingimg }"></a></li>
				</c:forEach>
				<c:forEach var="good" items="${goods3}" varStatus="status">
					<li><a href="/get_merchantsgoods_details.shtml?id=${good.id}" target="_blank"><img src="${good.advertisingimg }"></a></li>
				</c:forEach>
				<c:forEach var="good" items="${goods4}" varStatus="status">
					<li><a href="/get_merchantsgoods_details.shtml?id=${good.id}" target="_blank"><img src="${good.advertisingimg }"></a></li>
				</c:forEach>
				<c:forEach var="good" items="${goods5}" varStatus="status">
					<li><a href="/get_merchantsgoods_details.shtml?id=${good.id}" target="_blank"><img src="${good.advertisingimg }"></a></li>
				</c:forEach>
			</ul>
		</div>

		<div class="focusBox">
			<ul>
				<c:forEach var="good" items="${goods1}" varStatus="status" begin="0" end="3" step="1">
				<li>
					<a class="picture" target="_blank" href="/get_merchantsgoods_details.shtml?id=${good.id}">
						<img src="${good.scopeimg}" >
					</a>
					<div class="name"><a href="/get_merchantsgoods_details.shtml?id=${good.id}">${good.name}</a></div>
					<p><a href="/get_merchantsgoods_details.shtml?id=${good.id}">${good.pay_integer}+￥${good.pay_maney}</a> 积分</p>
				</li>
				</c:forEach>

			</ul>
		</div>
	</div>









	<!-- 积分来源 -->
	<div class="enough">
		<h2 class="title">
			<a>我的积分从哪来？</a>
		</h2>
		<p>
			*刷卡安子POS机就产生积分
			<br>
			*也许你从不知道
			<br>
			*但你的积分一直保存在那里
			<br>
			*支持加现金兑换
			<br>
			*立即查看
			<a class="js-needlogin" href="/user_integraldeduction.shtml">我的积分</a>
		</p>
		<img src="/images/enough_pic.png" alt="" height="41">
		<br>
		<a class="enough_btn js-needlogin" href="/user_bankcard.shtml"
			style="background: #f00;">立即查看我的银行卡</a>
	</div>


	<div class="logos">
		<ul>
		<c:forEach var="merchants_user" items="${merchants_user}" varStatus="status" begin="0" end="5" step="1">
			<li><a href="/get_merchants_details.shtml?mid=${ merchants_user.id}" target="_blank"><img src="${url }${merchants_user.logo}" alt="${merchants_user.username}"></a></li>
		</c:forEach>
		</ul>
	</div>


	



	<div class="module">
		<div class="i_mt ">
			<div class="tit"><span class="num">1F</span><h2>文化用品</h2></div>
			<div class="rec">
				<a href="/get_moreall.shtml?tid=图书产品" class="more" target="_blank">图书产品 </a>
				<a href="/get_moreall.shtml?tid=音像制品 " class="more" target="_blank">音像制品 </a>
			</div>
			<div class="tit-solid"></div>
		</div>
				<div class="module_cnt">
				<c:forEach var="level" items="${level0}" varStatus="status" begin="0"  end="7" step="1">
						<div class="item ">
							<div class="item_img"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" ><img src="${level.scopeimg}" ></a></div>
							<div class="item_info">
								<div class="it_city" title="快递"><i class="icon icon-kuaidi"></i></div>
								<h4 class="name"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" >${level.name}</a></h4>
								<p class="price"><i class="icon icon-jifen">积分：</i><span class="num">${level.pay_integer}</span>+￥<span class="rmb">${level.pay_maney}</span></p>
							</div>
						</div>
				</c:forEach>
				</div>
	</div>



	<div class="module">
		<div class="i_mt ">
			<div class="tit"><span class="num">2F</span><h2>家用电器</h2></div>
			<div class="rec">
				<a href="/get_moreall.shtml?tid=大家电" class="more" target="_blank">大家电 </a>
				<a href="/get_moreall.shtml?tid=生活电器" class="more" target="_blank">生活电器</a>
				<a href="/get_moreall.shtml?tid=厨房电器" class="more" target="_blank">厨房电器</a> 
			 </div>
			<div class="tit-solid"></div>
		</div>
				<div class="module_cnt">
				<c:forEach var="level" items="${level1}" varStatus="status"  begin="0"  end="7" step="1">
						<div class="item ">
							<div class="item_img"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" ><img src="${level.scopeimg}" ></a></div>
							<div class="item_info">
								<div class="it_city" title="快递"><i class="icon icon-kuaidi"></i></div>
								<h4 class="name"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" >${level.name}</a></h4>
								<p class="price"><i class="icon icon-jifen">积分：</i><span class="num">${level.pay_integer}</span>+￥<span class="rmb">${level.pay_maney}</span></p>
							</div>
						</div>
				</c:forEach>
				</div>
		</div>
	
		<div class="module">
		<div class="i_mt ">
			<div class="tit"><span class="num">3F</span><h2>电子产品</h2></div>
			<div class="rec">
				<a href="/get_moreall.shtml?tid=手机产品" class="more" target="_blank">手机产品  </a>
				<a href="/get_moreall.shtml?tid=数码产品" class="more" target="_blank">数码产品  </a>
				<a href="/get_moreall.shtml?tid=电脑产品" class="more" target="_blank">电脑产品  </a>
			</div>
			<div class="tit-solid"></div>
		</div>
				<div class="module_cnt">
				<c:forEach var="level" items="${level2}" varStatus="status"  begin="0"  end="7" step="1">
						<div class="item ">
							<div class="item_img"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" ><img src="${level.scopeimg}" ></a></div>
							<div class="item_info">
								<div class="it_city" title="快递"><i class="icon icon-kuaidi"></i></div>
								<h4 class="name"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" >${level.name}</a></h4>
								<p class="price"><i class="icon icon-jifen">积分：</i><span class="num">${level.pay_integer}</span>+￥<span class="rmb">${level.pay_maney}</span></p>
							</div>
						</div>
				</c:forEach>
				</div>
		</div>
		<div class="module">
		<div class="i_mt ">
			<div class="tit"><span class="num">4F</span><h2>办公用品 </h2></div>
			<div class="rec">
				<a href="/get_moreall.shtml?tid=办公" class="more" target="_blank">办公 </a>
				<a href="/get_moreall.shtml?tid=文具" class="more" target="_blank">文具 </a>
			</div>
			<div class="tit-solid"></div>
		</div>
				<div class="module_cnt">
				<c:forEach var="level" items="${level3}" varStatus="status"  begin="0"  end="7" step="1" >
						<div class="item ">
							<div class="item_img"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" ><img src="${level.scopeimg}" ></a></div>
							<div class="item_info">
								<div class="it_city" title="快递"><i class="icon icon-kuaidi"></i></div>
								<h4 class="name"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" >${level.name}</a></h4>
								<p class="price"><i class="icon icon-jifen">积分：</i><span class="num">${level.pay_integer}</span>+￥<span class="rmb">${level.pay_maney}</span></p>
							</div>
						</div>
				</c:forEach>
				</div>
		</div>
		<div class="module">
		<div class="i_mt ">
			<div class="tit"><span class="num">5F</span><h2>家居用品</h2></div>
			<div class="rec">
				<a href="/get_moreall.shtml?tid=家纺" class="more" target="_blank">家纺 </a>
				<a href="/get_moreall.shtml?tid=家居" class="more" target="_blank">家居 </a>
				<a href="/get_moreall.shtml?tid=厨卫" class="more" target="_blank">厨卫 </a> 
		    </div>
			<div class="tit-solid"></div>
		</div>
				<div class="module_cnt">
				<c:forEach var="level" items="${level4}" varStatus="status"  begin="0"  end="7" step="1">
						<div class="item ">
							<div class="item_img"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" ><img src="${level.scopeimg}" ></a></div>
							<div class="item_info">
								<div class="it_city" title="快递"><i class="icon icon-kuaidi"></i></div>
								<h4 class="name"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" >${level.name}</a></h4>
								<p class="price"><i class="icon icon-jifen">积分：</i><span class="num">${level.pay_integer}</span>+￥<span class="rmb">${level.pay_maney}</span></p>
							</div>
						</div>
				</c:forEach>
				</div>
		</div>
		<div class="module">
		<div class="i_mt ">
			<div class="tit"><span class="num">6F</span><h2>服饰  </h2></div>
			<div class="rec">
				<a href="/get_moreall.shtml?tid=服装" class="more" target="_blank">服装  </a>
				<a href="/get_moreall.shtml?tid=首饰" class="more" target="_blank">首饰 </a>
				<a href="/get_moreall.shtml?tid=鞋袜" class="more" target="_blank">鞋袜 </a>
			 </div>
			<div class="tit-solid"></div>
		</div>
				<div class="module_cnt">
				<c:forEach var="level" items="${level5}" varStatus="status"  begin="0"  end="7" step="1" >
						<div class="item ">
							<div class="item_img"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" ><img src="${level.scopeimg}" ></a></div>
							<div class="item_info">
								<div class="it_city" title="快递"><i class="icon icon-kuaidi"></i></div>
								<h4 class="name"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" >${level.name}</a></h4>
								<p class="price"><i class="icon icon-jifen">积分：</i><span class="num">${level.pay_integer}</span>+￥<span class="rmb">${level.pay_maney}</span></p>
							</div>
						</div>
				</c:forEach>
				</div>
		</div>
		<div class="module">
		<div class="i_mt ">
			<div class="tit"><span class="num">7F</span><h2>美容产品</h2></div>
			<div class="rec">
				<a href="/get_moreall.shtml?tid=化妆品" class="more" target="_blank">化妆品  </a>
				<a href="/get_moreall.shtml?tid=个人护理" class="more" target="_blank">个人护理</a>
			</div>
			<div class="tit-solid"></div>
		</div>
				<div class="module_cnt">
				<c:forEach var="level" items="${level6}" varStatus="status"  begin="0"  end="7" step="1">
						<div class="item ">
							<div class="item_img"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" ><img src="${level.scopeimg}" ></a></div>
							<div class="item_info">
								<div class="it_city" title="快递"><i class="icon icon-kuaidi"></i></div>
								<h4 class="name"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" >${level.name}</a></h4>
								<p class="price"><i class="icon icon-jifen">积分：</i><span class="num">${level.pay_integer}</span>+￥<span class="rmb">${level.pay_maney}</span></p>
							</div>
						</div>
				</c:forEach>
				</div>
		</div>
		<div class="module">
		<div class="i_mt ">
			<div class="tit"><span class="num">8F</span><h2> 箱包钟表</h2></div>
			<div class="rec">
				<a href="/get_moreall.shtml?tid=箱包" class="more" target="_blank">箱包 </a>
				<a href="/get_moreall.shtml?tid=钟表" class="more" target="_blank">钟表 </a>
			</div>
		
			<div class="tit-solid"></div>
		</div>
				<div class="module_cnt">
				<c:forEach var="level" items="${level7}" varStatus="status"  begin="0"  end="7" step="1">
						<div class="item ">
							<div class="item_img"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" ><img src="${level.scopeimg}" ></a></div>
							<div class="item_info">
								<div class="it_city" title="快递"><i class="icon icon-kuaidi"></i></div>
								<h4 class="name"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" >${level.name}</a></h4>
								<p class="price"><i class="icon icon-jifen">积分：</i><span class="num">${level.pay_integer}</span>+￥<span class="rmb">${level.pay_maney}</span></p>
							</div>
						</div>
				</c:forEach>
				</div>
		</div>
		<div class="module">
		<div class="i_mt ">
				 <div class="tit"><span class="num">9F</span><h2>运动户外</h2></div>
			<div class="rec">
				<a href="/get_moreall.shtml?tid=运动户外" class="more" target="_blank">运动户外 </a>
			</div>
			<div class="tit-solid"></div>
		</div>
				<div class="module_cnt">
				<c:forEach var="level" items="${level8}" varStatus="status"  begin="0"  end="7" step="1">
						<div class="item ">
							<div class="item_img"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" ><img src="${level.scopeimg}" ></a></div>
							<div class="item_info">
								<div class="it_city" title="快递"><i class="icon icon-kuaidi"></i></div>
								<h4 class="name"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" >${level.name}</a></h4>
								<p class="price"><i class="icon icon-jifen">积分：</i><span class="num">${level.pay_integer}</span>+￥<span class="rmb">${level.pay_maney}</span></p>
							</div>
						</div>
				</c:forEach>
				</div>
		</div>
		<div class="module">
		<div class="i_mt ">
				 <div class="tit"><span class="num">10F</span><h2>生活饮食</h2></div>
			<div class="rec">
				<a href="/get_moreall.shtml?tid=食品" class="more" target="_blank">食品 </a>
				<a href="/get_moreall.shtml?tid=饮料" class="more" target="_blank">饮料 </a>
				<a href="/get_moreall.shtml?tid=酒类" class="more" target="_blank">酒类 </a>
				<a href="/get_moreall.shtml?tid=生鲜" class="more" target="_blank">生鲜 </a>
			</div>
			<div class="tit-solid"></div>
		</div>
				<div class="module_cnt">
				<c:forEach var="level" items="${level9}" varStatus="status"  begin="0"  end="7" step="1">
						<div class="item ">
							<div class="item_img"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" ><img src="${level.scopeimg}" ></a></div>
							<div class="item_info">
								<div class="it_city" title="快递"><i class="icon icon-kuaidi"></i></div>
								<h4 class="name"><a href="/get_merchantsgoods_details.shtml?id=${level.id}" target="_blank" >${level.name}</a></h4>
								<p class="price"><i class="icon icon-jifen">积分：</i><span class="num">${level.pay_integer}</span>+￥<span class="rmb">${level.pay_maney}</span></p>
							</div>
						</div>
				</c:forEach>
				</div>
		</div>
		</div>

		
	
	



	

<%--

	<!-- 小banner -->
	<!-- <div class="smallban">
		<h2 class="title">
			<a class="active" href="/get_moreall.shtml" target="_blank">最新上架</a>
			<a href="/get_moreall.shtml">热门商品</a>
			<a href="/get_moreall.shtml">特价商品</a>
			<a href="/get_moreall.shtml">活动商品</a>
			<a href="/get_moreall.shtml">猜你喜欢</a>
		</h2>


		<dl class="active">
			<dt>
				<div>
					<c:forEach var="goods1" items="${goods1}" varStatus="status">
						<a href="/get_merchantsgoods_details.shtml?id=${goods1.id}"
							target="_blank"><img src="${goods1.advertisingimg }"> </a>
					</c:forEach>
				</div>
			</dt>
			<i class="toleft"><</i>
			<i class="toright">></i>
			<c:forEach var="goods1" items="${goods1}" varStatus="status">
				<dd>
					<h4>
						<span><b>0</b>元+<b>${goods1.pice }</b>积分</span> &nbsp;&nbsp;原价
						<font color="#ee2323"><s>￥${goods1.integral }元</s> </font>
						<em>已有<font color="#ee2323">${goods1.amount }</font>人兑换</em>
					</h4>
					<p>
						<strong>${goods1.name}</strong><span>${goods1.account}</span>
					</p>
					<h6>
						<span> <a class="exchange"
							href="/get_merchantsgoods_details.shtml?id=${goods1.id }"
							title="立即使用积分兑换" target="_blank">立即兑换</a> <a class="gotolook"
							href="/get_merchants_details.shtml?mid=${goods1.mid }"
							title="进入商铺" target="_blank">进入商铺</a> </span>
					</h6>
				</dd>
			</c:forEach>
		</dl>

		<dl>
			<dt>
				<div>
					<c:forEach var="goods2" items="${goods2}" varStatus="status">
						<a href="/get_merchantsgoods_details.shtml?id=${goods2.id}"><img
								src="${goods2.advertisingimg }" target="_blank"> </a>
					</c:forEach>
				</div>
			</dt>
			<i class="toleft"><</i>
			<i class="toright">></i>
			<c:forEach var="goods2" items="${goods2}" varStatus="status">
				<dd>
					<h4>
						<span><b>0</b>元+<b>${goods2.integral }</b>积分</span> &nbsp;&nbsp;原价
						<font color="#ee2323"><s>￥${goods2.integral }元</s> </font>
						<em>已有<font color="#ee2323">${goods2.amount }</font>人兑换</em>
					</h4>
					<p>
						<strong>${goods2.name}</strong><span>${goods2.account}</span>
					</p>
					<h6>
						<span> <a class="exchange"
							href="/get_merchantsgoods_details.shtml?id=${goods2.id }"
							title="立即使用积分兑换" target="_blank">立即兑换</a> <a class="gotolook"
							href="/get_merchants_details.shtml?mid=${goods2.mid }"
							title="进入商铺" target="_blank">进入商铺</a> </span>
					</h6>
				</dd>
			</c:forEach>
		</dl>


		<dl>
			<dt>
				<div>
					<c:forEach var="goods3" items="${goods3}" varStatus="status">
						<a href="/get_merchantsgoods_details.shtml?id=${goods3.id}"
							target="_blank"><img src="${goods3.advertisingimg }"> </a>
					</c:forEach>
				</div>
			</dt>
			<i class="toleft"><</i>
			<i class="toright">></i>
			<c:forEach var="goods3" items="${goods3}" varStatus="status">
				<dd>
					<h4>
						<span><b>0</b>元+<b>${goods3.integral }</b>积分</span> &nbsp;&nbsp;原价
						<font color="#ee2323"><s>￥${goods3.integral }元</s> </font>
						<em>已有<font color="#ee2323">${goods3.amount }</font>人兑换</em>
					</h4>
					<p>
						<strong>${goods3.name}</strong><span>${goods3.account}</span>
					</p>
					<h6>
						<span> <a class="exchange"
							href="/get_merchantsgoods_details.shtml?id=${goods3.id }"
							title="立即使用积分兑换" target="_blank">立即兑换</a> <a class="gotolook"
							href="/get_merchants_details.shtml?mid=${goods3.mid }"
							title="进入商铺" target="_blank">进入商铺</a> </span>
					</h6>
				</dd>
			</c:forEach>
		</dl>

		<dl>
			<dt>
				<div>
					<c:forEach var="goods4" items="${goods4}" varStatus="status">
						<a href="/get_merchantsgoods_details.shtml?id=${goods4.id}"
							target="_blank"><img src="${goods4.advertisingimg }"> </a>
					</c:forEach>
				</div>
			</dt>
			<i class="toleft"><</i>
			<i class="toright">></i>
			<c:forEach var="goods4" items="${goods4}" varStatus="status">
				<dd>
					<h4>
						<span><b>0</b>元+<b>${goods4.integral }</b>积分</span> &nbsp;&nbsp;原价
						<font color="#ee2323"><s>￥${goods4.integral }元</s> </font>
						<em>已有<font color="#ee2323">${goods4.amount }</font>人兑换</em>
					</h4>
					<p>
						<strong>${goods4.name}</strong><span>${goods4.account}</span>
					</p>
					<h6>
						<span> <a class="exchange"
							href="/get_merchantsgoods_details.shtml?id=${goods4.id }"
							title="立即使用积分兑换" target="_blank">立即兑换</a> <a class="gotolook"
							href="/get_merchants_details.shtml?mid=${goods4.mid }"
							title="进入商铺" target="_blank">进入商铺</a> </span>
					</h6>
				</dd>
			</c:forEach>
		</dl>

		<dl>
			<dt>
				<div>
					<c:forEach var="goods5" items="${goods5}" varStatus="status">
						<a href="/get_merchantsgoods_details.shtml?id=${goods5.id}"
							target="_blank"><img src="${goods5.advertisingimg }"> </a>
					</c:forEach>
				</div>
			</dt>
			<i class="toleft"><</i>
			<i class="toright">></i>
			<c:forEach var="goods5" items="${goods5}" varStatus="status">
				<dd>
					<h4>
						<span><b>0</b>元+<b>${goods5.integral }</b>积分</span> &nbsp;&nbsp;原价
						<font color="#ee2323"><s>￥${goods5.integral }元</s> </font>
						<em>已有<font color="#ee2323">${goods5.amount }</font>人兑换</em>
					</h4>
					<p>
						<strong>${goods5.name}</strong><span>${goods5.account}</span>
					</p>
					<h6>
						<span> <a class="exchange"
							href="/get_merchantsgoods_details.shtml?id=${goods5.id }"
							title="立即使用积分兑换" target="_blank">立即兑换</a> <a class="gotolook"
							href="/get_merchants_details.shtml?mid=${goods5.mid }"
							title="进入商铺" target="_blank">进入商铺</a> </span>
					</h6>
				</dd>
			</c:forEach>
		</dl>
	</div> -->



<!-- 
	<div class="filter">
		<div class="filter_con">
			<div class="filter_tit">
				分类：
			</div>
			<div class="filter_attrs" id="filter_cat">
				<ul>
					<c:forEach var="goodsType" items="${goodsType}" varStatus="status" >
						
						<li>
							<a href="/get_moreall.shtml?tid=${goodsType.tid}"  target="_blank">${goodsType.tid}</a>
						</li>
						</c:forEach>
					<!--<c:forEach var="goodsType" items="${goodsType1}" varStatus="status" >
						
						<li>
							<a href="/get_moreall.shtml?tid=${goodsType.id}"  target="_blank">${goodsType.name}</a>
						</li>
						</c:forEach>
						<c:forEach var="goodsType" items="${goodsType2}" varStatus="status" >
						
						<li>
							<a href="/get_moreall.shtml?tid=${goodsType.id}"  target="_blank">${goodsType.name}</a>
						</li>
						</c:forEach>
						<c:forEach var="goodsType" items="${goodsType3}" varStatus="status" >
						
						<li>
							<a href="/get_moreall.shtml?tid=${goodsType.id}"  target="_blank">${goodsType.name}</a>
						</li>
						</c:forEach>
						<c:forEach var="goodsType" items="${goodsType4}" varStatus="status" >
						
						<li>
							<a href="/get_moreall.shtml?tid=${goodsType.id}"  target="_blank">${goodsType.name}</a>
						</li>
						</c:forEach>
						<c:forEach var="goodsType" items="${goodsType5}" varStatus="status" >
						
						<li>
							<a href="/get_moreall.shtml?tid=${goodsType.id}"  target="_blank">${goodsType.name}</a>
						</li>
						</c:forEach>
						<c:forEach var="goodsType" items="${goodsType6}" varStatus="status" >
						
						<li>
							<a href="/get_moreall.shtml?tid=${goodsType.id}"  target="_blank">${goodsType.name}</a>
						</li>
						</c:forEach>
						<c:forEach var="goodsType" items="${goodsType7}" varStatus="status" >
						
						<li>
							<a href="/get_moreall.shtml?tid=${goodsType.id}"  target="_blank">${goodsType.name}</a>
						</li>
						</c:forEach>
						<c:forEach var="goodsType" items="${goodsType8}" varStatus="status" >
						
						<li>
							<a href="/get_moreall.shtml?tid=${goodsType.id}"  target="_blank">${goodsType.name}</a>
						</li>
						</c:forEach>
						<c:forEach var="goodsType" items="${goodsType9}" varStatus="status" >
						
						<li>
							<a href="/get_moreall.shtml?tid=${goodsType.id}"  target="_blank">${goodsType.name}</a>
						</li>
						</c:forEach>
						<c:forEach var="goodsType" items="${goodsType10}" varStatus="status" >
						
						<li>
							<a href="/get_moreall.shtml?tid=${goodsType.id}"  target="_blank">${goodsType.name}</a>
						</li>
						</c:forEach>
						<c:forEach var="goodsType" items="${goodsType11}" varStatus="status" >
						
						<li>
							<a href="/get_moreall.shtml?tid=${goodsType.id}"  target="_blank">${goodsType.name}</a>
						</li>
						</c:forEach>
						<c:forEach var="goodsType" items="${goodsType12}" varStatus="status" >
						
						<li>
							<a href="/get_moreall.shtml?tid=${goodsType.id}"  target="_blank">${goodsType.name}</a>
						</li>
						</c:forEach>
						<c:forEach var="goodsType" items="${goodsType13}" varStatus="status" >
						
						<li>
							<a href="/get_moreall.shtml?tid=${goodsType.id}"  target="_blank">${goodsType.name}</a>
						</li>
						</c:forEach>
						<c:forEach var="goodsType" items="${goodsType14}" varStatus="status" >
						
						<li>
							<a href="/get_moreall.shtml?tid=${goodsType.id}"  target="_blank">${goodsType.name}</a>
						</li>
						</c:forEach>
					
				--></ul>
			</div>
		</div>
		<%--<div class="filter_con">
			<div class="filter_tit">
				热门：
			</div>
			<div class="filter_attrs">
				<ul>
				<c:forEach var="goodsBrand" items="${goodsBrand}" varStatus="status" begin="0" end="8" step="1">
					<li><a href="/get_moreall.shtml?brand=${goodsBrand.brand }">${goodsBrand.brand }</a></li>
				</c:forEach>

				</ul>
			</div>
		</div>--%>
		<!-- 
	</div>
  -->

	<!-- 强烈推荐 -->
<!-- 	<div class="sidebar intro">
		<h2 class="title">
			<a href="/get_moremallall.shtml" target="_blank">强烈推荐！</a>
		</h2>
		<ul>


			<c:forEach var="list_goods1" items="${list_goods1}"
				varStatus="status" begin="0" end="11" step="1">
				<li>
					<h3>
						<a href="/get_merchantsgoods_details.shtml?id=${list_goods1.id }"
							target="_blank"><img src="${list_goods1.scopeimg }"
								alt="${list_goods1.name }"> </a>
					</h3>

					<p>
						<a href="/get_merchantsgoods_details.shtml?id=${list_goods1.id }"
							target="_blank">${list_goods1.name }</a>
					</p>

					<cite> <strong>0</strong>元+<strong>${list_goods1.integral
							}</strong>积分 <span><em>${list_goods1.amount }人</em>兑换</span> </cite>
				</li>
			</c:forEach>


		</ul>
	</div> -->
		<!-- 可兑换商品 -->
	<%-- <div class="lists canexchange">
		<h2 class="title">
			<a class="active" href="/get_moremallall.shtml" target="_blank">线上兑换</a><a
				class="more" href="/get_moremallall.shtml" target="_blank">更多>></a>
		</h2>
		<ul>
			<c:forEach var="list_goods1" items="${list_goods1}"
				varStatus="status" begin="12" end="35" step="1">
				<li>
					<h3>
						<a href="/get_merchantsgoods_details.shtml?id=${list_goods1.id }"
							target="_blank"><img src="${list_goods1.scopeimg }"
								alt="${list_goods1.name }"> </a>
					</h3>
					<p>
						<a href="/get_merchantsgoods_details.shtml?id=${list_goods1.id }"
							target="_blank">${list_goods1.name }${list_goods1.account }</a>
					</p>
					<cite> <strong>0</strong>元+<strong>${list_goods1.integral
							}</strong>积分 <span><em>${list_goods1.amount }人</em>兑换</span> </cite>
					<div class="lists_ctl">
						<a href="/get_merchantsgoods_details.shtml?id=${list_goods1.id }"
							class="exchange" target="_blank">积分兑换</a>
						<a href="/get_merchants_details.shtml?mid=${ list_goods1.mid}"
							class="gotolook" target="_blank">进店查看</a>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div> --%>



	<!-- 会员卡 -->
	<%--<div class="membercard">
			<h2 class="title"><a class="active" href="/get_more_merchantsvipcatd.shtml">会员卡</a><a class="more" href="/get_more_merchantsvipcatd.shtml">更多>></a></h2>
			<i class="toleft"><</i>
			<i class="toright">></i>
			<div class="membercard_slides">
				<ul>
				
				<c:forEach var="merchants_vipcard" items="${merchants_vipcard}" varStatus="status">
					<li>
						<h6><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}"><img src="${merchants_vipcard.vipphoto}" ></a></h6>
						<h4><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}"><img src=" ${merchants_vipcard.logo}" alt="${merchants_vipcard.username}"></a></h4>
						<span><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}">NO.00001</a></span>
						<h3><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}">${merchants_vipcard.username }</a></h3>
						<p><a href="/get_merchants_details.shtml?mid=${merchants_vipcard.mid}">最高可享全单${merchants_vipcard.upgrade1 }折优惠</a></p>
						<cite>
							<h4>${merchants_vipcard.username }会员卡</h4>
							<p>
								<b>体验卡：</b>0元累计消费10000元，<a href="#">享全单9.9折</a><br>
								<b>普通卡：</b>10000元累计消费20000元，<a href="#">享全单9.8折</a><br>
								<b>贵宾卡：</b>20000元累计消费30000元，<a href="#">享全单9.7折</a><br>
								<b>白银卡：</b>累计消费40000元，<a href="#">享全单9.6折</a>
							</p>
							<a href="#" class="membercard_btn">放入银行卡</a>
						</cite>
					</li>
				</c:forEach>
				
				</ul>
			</div>
		</div>--%>

	<%-- 最新加盟 
		<div class="affiliate">
			<h2 class="title"><a class="active" href="/get_moremerchants.shtml" target="_blank">最新加盟商家</a><a class="more" href="/get_moremerchants.shtml" target="_blank">更多>></a></h2>
			<ul>
			
			<c:forEach var="merchants_user" items="${merchants_user}" varStatus="status" begin="0" end="20" step="1">
				<li><a href="/get_merchants_details.shtml?mid=${ merchants_user.id}" target="_blank"><img src="${merchants_user.logo}" alt="${merchants_user.username}"></a></li>
			</c:forEach>
			
			</ul>
		</div>
		
		 新品推荐 
		<div class="sidebar">
			<h2 class="title"><a href="/get_moremerchantsall.shtml" target="_blank">最新添加！</a></h2>
			<ul>
			<c:forEach var="list_goods2" items="${list_goods2}" varStatus="status" begin="0" end="5" step="1">
				<li>
					<h3><a href="/get_merchantsgoods_details.shtml?id=${list_goods2.id }" target="_blank"><img src="${list_goods2.scopeimg }" alt="${list_goods2.name}"></a></h3>
					<p><a href="/get_merchantsgoods_details.shtml?id=${list_goods2.id }" target="_blank">${list_goods2.name}${list_goods2.account }</a></p>
					<cite>
						<strong>0</strong>元+<strong>${list_goods2.integral }</strong>积分 
						<span><em>${list_goods2.amount }人</em>兑换</span>
					</cite>
				</li>
			</c:forEach>
			</ul>
		</div>
		
		 商家商品 
		<div class="lists">
			<h2 class="title"><a class="active" href="/get_moremerchantsall.shtml" target="_blank">实体店兑换</a><a class="more" href="/get_moremerchantsall.shtml" target="_blank">更多>></a></h2>
			<ul>
			<c:forEach var="list_goods2" items="${list_goods2}" varStatus="status" begin="6" end="17" step="1">
				<li>
					<h3><a href="/get_merchantsgoods_details.shtml?id=${list_goods2.id }" target="_blank"><img src="${list_goods2.scopeimg }" alt="${list_goods2.name}"></a></h3>
					<p><a href="/get_merchantsgoods_details.shtml?id=${list_goods2.id }" target="_blank">${list_goods2.name}${list_goods2.account }</a></p>
					<cite>
						<strong>0</strong>元+<strong>${list_goods2.integral }</strong>积分 
						<span><em>${list_goods2.amount }人</em>兑换</span>
					</cite>
					<div class="lists_ctl">
						<a href="/get_merchantsgoods_details.shtml?id=${list_goods2.id }" class="exchange" target="_blank">积分兑换</a>
						<a href="/get_merchants_details.shtml?mid=${ list_goods2.mid}" class="gotolook" target="_blank">进店查看</a>
					</div>
				</li>
			</c:forEach>		
			</ul>
		</div>



	--%>




<jsp:include page="/cglib/footer.jsp" flush="true" />

