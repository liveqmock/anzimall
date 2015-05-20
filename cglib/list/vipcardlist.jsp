<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%

String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";
String[] css = {"common","coupon","alert"};
String[] js = {"jquery","common","jquery.Xslider","jquery.slide","coupon"};


request.setAttribute("basePath",basePath);
request.setAttribute("css",css);
request.setAttribute("js",js);

%>


<jsp:include page="/cglib/header.jsp" flush="true"/>



<section>
	<div class="main3">
		<div class="member_box1">
			<div class="member_step">
				<div class="hd">
					简单3步 畅享优惠
				</div>
				<div class="step_list">
					<ul>
						<li><span>1</span>注册并<em class="red2">关联</em>银行卡</li>
						<li><span>2</span>优惠券<em class="red2">放入</em>银行卡</li>
						<li><span>3</span>刷卡消费，<em class="red2">享特惠</em></li> 
					</ul>
				</div>
				<i></i><b></b>
			</div>
			<div id="slide">
				<div class="conbox">
					<div><a ><img src="/upload/20130705104548.jpg" width="760"height="280"></a></div>
					<div><a ><img src="/upload/20130705104505.jpg" width="760"height="280"></a></div> 
					<div><a><img src="/upload/20130618155904.jpg" width="760" height="280"></a></div>
				</div>
				<div class="switcher"><a  class="cur">1</a><a >2</a><a >3</a></div>

			</div>
		</div>
	</div>
</section>


<section>
	<div class="main3">
		<div class="member_bg top16">
			<div class="member_menu">
				<div class="hd" id="lock"> 按分类选择 </div>
				<h3>
					<em> 商户类别 </em>
				</h3>
				<div class="fenlei">
					
					<span><a >全部</a></span>
					<span><a >餐饮美食</a></span>
					<div id="show_menu"> 
						<dl><dt>全部</dt><dd></dd></dl>
						<dl><dt>餐饮美食</dt> 
							<dd> 
								<a >川菜</a> ｜ 
								<a >湘菜</a> ｜ 
								<a >粤菜</a> ｜ 
								<a >鲁菜</a> ｜ 
								<a >云南菜</a> ｜ 
								<a >东北菜</a> ｜ 
								<a >火锅</a> ｜ 
								<a >烧烤</a> ｜ 
								<a >海鲜</a> ｜ 
								<a >小吃</a> ｜ 
								<a >自助餐</a> ｜ 
								<a >甜点饮品</a> ｜ 
								<a >快餐简餐</a> ｜ 
								<a >日本料理</a> ｜ 
								<a >韩国料理</a> ｜ 
								<a >素菜</a> ｜ 
								<a >贵州菜</a> ｜ 
								<a >湖北菜</a> ｜ 
								<a >江西菜</a> ｜ 
								<a >家常菜</a> ｜ 
								<a >意大利菜</a> ｜ 
								<a >私房菜</a> ｜ 
								<a >农家菜</a> ｜ 
								<a >粥店</a> ｜ 
								<a >知名连锁</a> ｜ 
								<a >面包甜品</a> ｜ 
								<a >西餐</a> ｜ 
								<a >其它美食</a> ｜ 
							</dd> 
						</dl> 
					</div> </div>
				
	
				<div class="fenlei">
					
					<span><a >休闲娱乐</a></span>
					<span><a >购物逛街</a></span>
					<div id="show_menu"> 
						<dl><dt>休闲娱乐</dt> 
							<dd> 
								<a >KTV</a> ｜ 
								<a >咖啡厅</a> ｜ 
								<a >酒吧</a> ｜ 
								<a >电影院</a> ｜ 
								<a >茶楼</a> ｜ 
								<a >桌游吧</a> ｜ 
								<a >桑拿按摩</a> ｜ 
								<a >足浴</a> ｜ 
								<a >商务会馆</a> ｜ 
							</dd> 
						</dl> 

						<dl><dt>购物逛街</dt> 
							<dd> 
								<a >百货商场</a> ｜ 
								<a >服饰鞋包</a> ｜ 
								<a >超市</a> ｜ 
								<a >便利店</a> ｜ 
								<a >宠物</a> ｜ 
								<a >数码家电</a> ｜ 
								<a >家具家居</a> ｜ 
								<a >珠宝首饰</a> ｜ 
								<a >眼镜</a> ｜ 
								<a >其它购物</a> ｜ 
							</dd> 
						</dl> 
					</div> 
				</div>
				
				<div class="fenlei">
					
					<span><a >魅力丽人</a></span>
					<span><a >健身养生</a></span>
					<div id="show_menu"> 
						<dl><dt>魅力丽人</dt> 
							<dd> 
								<a >美容美发</a> ｜ 
								<a >化妆品</a> ｜ 
								<a >护肤品</a> ｜ 
								<a >美甲</a> ｜ 
								<a >SPA水疗</a> ｜ 
								<a >摄影写真</a> ｜ 
								<a >美容整形</a> ｜ 
								<a >婚纱礼服</a> ｜ 
								<a >珠宝首饰</a> ｜ 
							</dd> 
						</dl> 

						<dl><dt>健身养生</dt> 
							<dd> 
								<a >运动场馆</a> ｜ 
								<a >健身中心</a> ｜ 
								<a >瑜伽</a> ｜ 
								<a >运动用品</a> ｜ 
							</dd> 
						</dl> 
					</div> 
				</div>
				
				<div class="fenlei">
					
					<span><a >酒店住宿</a></span>
					<span><a >教育培训</a></span>
					<div id="show_menu"> 
						<dl><dt>酒店住宿</dt> 
							<dd> 
								<a >四星级</a> ｜ 
								<a >经济型酒店</a> ｜ 
								<a >公寓式酒店</a> ｜ 
								<a >酒店会议</a> ｜ 
							</dd> 
						</dl> 

						<dl><dt>教育培训</dt> 
							<dd> 
								<a >艺术培训</a> ｜ 
								<a >亲子早教</a> ｜ 
								<a >其它培训</a> ｜ 
							</dd> 
						</dl> 
					</div> 
				</div>
				
				<div class="fenlei">
					<span><a >医疗保健</a></span>
					<span><a >家居建材</a></span>
					<div id="show_menu"> 
						<dl><dt>医疗保健</dt> 
							<dd> 
								<a >口腔齿科</a> ｜ 
								<a >整形美容</a> ｜ 
								<a >药店</a> ｜ 
							</dd> 
						</dl> 

						<dl><dt>家居建材</dt> 
							<dd> 
								<a >涂料</a> ｜ 
								<a >五金</a> ｜ 
								<a >家装</a> ｜ 
							</dd> 
						</dl> 
					</div> 
				</div>
				
				<div class="fenlei">
					
					<span><a >汽车服务</a></span>
					<span><a >生活便利</a></span>
					<div id="show_menu"> 
						<dl><dt>汽车服务</dt> 
						<dd> 
								<a >租车</a> ｜ 
								<a >汽修配件</a> ｜ 
								<a >汽车美容</a> ｜ 
								<a >其它汽车服务</a> ｜ 
							</dd> 
						</dl> 

						<dl><dt>生活便利</dt> 
							<dd> 
								<a >家政服务</a> ｜ 
								<a >鲜花服务</a> ｜ 
								<a >洗衣店</a> ｜ 
								<a >电脑服务</a> ｜ 
								<a >其它生活便利</a> ｜ 
							</dd> 
						</dl> 
					</div> 
				</div>
				
				<div class="fenlei">
					
					<span><a >老字号</a></span>
					<span><a >其它</a></span>
					<div id="show_menu"> 
						<dl><dt>老字号</dt> 
							<dd> 
								<a >本地特产</a> ｜ 
								<a >药房</a> ｜ 
								<a >名酒名烟</a> ｜ 
								<a >本地名茶</a> ｜ 
								<a >民俗工艺</a> ｜ 
								<a >仿真古董</a> ｜ 
							</dd> 
						</dl> 

						<dl><dt>其它</dt> 
							<dd> 
								<a >其它优惠券</a> ｜ 
							</dd> 
						</dl> 
					</div> 
				</div>
				<h3> <em>商区/商圈</em> </h3>
				<div class="fenlei">
					<span><a >全市</a></span><span> 
					<a >罗湖区</a></span><div id="show_menu"> 
					<dl><dt>全市</dt><dd></dd></dl>

					<dl><dt>罗湖区</dt> 
						<dd> 
							<a >东门</a> ｜ 
							<a >宝安南路</a> ｜ 
							<a >国贸</a> ｜ 
							<a >罗湖区委</a> ｜ 
							<a >蔡屋围</a> ｜ 
							<a >莲塘</a> ｜ 
							<a >火车站</a> ｜ 
							<a >人民南</a> ｜ 
							<a >春风路</a> ｜ 
							<a >笋岗</a> ｜ 
							<a >田贝</a> ｜ 
							<a >留医部</a> ｜ 
							<a >文锦渡</a> ｜ 
							<a >东湖</a> ｜ 
							<a >东晓</a> ｜ 
							<a >黄贝岭</a> ｜ 
							<a >洪湖</a> ｜ 
							<a >翠竹</a> ｜ 
							<a >布心</a> ｜ 
							<a >清水河</a> ｜ 
							<a >草埔</a> ｜ 
							<a >泥岗</a> ｜ 
							<a >水贝</a> ｜ 
							<a >水库</a> ｜ 
							<a >银湖</a> ｜ 
							<a >独树村</a> ｜ 
							<a >红岗花园</a> ｜ 
							<a >金稻田</a> ｜ 
						</dd> 
				</dl> </div> </div>
				<div class="fenlei">
					<span><a ">福田区</a></span><span> <a >南山区</a></span><div id="show_menu"> <dl>
							<dt> 福田区</dt> 
							<dd>
								<a >华强北</a> ｜
								<a  >香蜜湖</a> ｜
								<a  >中信广场</a> ｜
								<a  >振华路</a> ｜
								<a  >购物公园</a> ｜
								<a  >皇岗</a> ｜
								<a  >益田村</a> ｜
								<a  >车公庙</a> ｜
								<a  >景田</a> ｜
								<a  >华强南</a> ｜
								<a  >福田区委</a> ｜
								<a  >竹子林</a> ｜
								<a  >八卦岭</a> ｜
								<a  >保税区</a> ｜
								<a  >上沙</a> ｜
								<a  >下沙</a> ｜
								<a  >岗厦</a> ｜
								<a  >水围</a> ｜
								<a  >笔架山</a> ｜
								<a  >莲花北村</a> ｜
								<a  >莲花二村</a> ｜
								<a  >莲花三村</a> ｜
								<a  >莲花一村</a> ｜
								<a  >沙头</a> ｜
								<a  >上步</a> ｜
								<a  >上梅林</a> ｜
								<a  >下梅林</a> ｜
								<a  >新洲</a> ｜
								<a  >园岭</a> ｜
								<a  >白沙岭</a> ｜
								<a  >赤尾</a> ｜
								<a  >福华新村</a> ｜
								<a  >福民新村</a> ｜
								<a  >黄木岗</a> ｜
								<a  >荔枝公园</a> ｜
								<a  >沙尾</a> ｜
								<a  >沙嘴</a> ｜
								<a  >石厦</a> ｜
								<a  >南园村</a> ｜
								<a  >田面</a> ｜
							</dd>
						</dl>
						<dl>
							<dt> 南山区</dt> 
							<dd>
								<a  >科技园</a> ｜
								<a  >前海</a> ｜
								<a  >大冲</a> ｜
								<a  >桂庙路口</a> ｜
								<a  >海上世界</a> ｜
								<a  >海王大厦</a> ｜
								<a  >南新路口</a> ｜
								<a  >招商大厦</a> ｜
								<a  >后海</a> ｜
								<a  >白石洲</a> ｜
								<a  >华侨城</a> ｜
								<a  >南头</a> ｜
								<a  >南油</a> ｜
								<a  >蛇口</a> ｜
								<a  >西丽</a> ｜
								<a  >南山医院</a> ｜
								<a  >深圳湾</a> ｜
								<a  >桃源村</a> ｜
								<a  >海岸城</a> ｜
							</dd>
						</dl>
					</div>
				</div>
				<div class="fenlei">
					<span> <a  >盐田区</a></span><span> <a  >宝安区</a></span><div id="show_menu"> <dl>
							<dt>盐田区</dt>
							<dd>
								<a  >大梅沙</a> ｜
								<a  >沙头角</a> ｜
								<a  >小梅沙</a> ｜
								<a  >东部华侨城</a> ｜
								<a  >盐田区中心</a> ｜
							</dd>
						</dl>
						<dl>
							<dt>宝安区</dt>
							<dd>
								<a  >福永</a> ｜
								<a  >龙华</a> ｜
								<a  >沙井</a> ｜
								<a  >松岗</a> ｜
								<a  >西乡</a> ｜
								<a  >新安</a> ｜
								<a  >翻身路</a> ｜
								<a  >观澜</a> ｜
								<a  >锦绣江南</a> ｜
								<a  >美丽365花园</a> ｜
								<a  >民治</a> ｜
								<a  >潜龙花园</a> ｜
								<a  >石岩</a> ｜
								<a  >桃源居</a> ｜
								<a  >滢水山庄</a> ｜
								<a  >宝安中心区</a> ｜
							</dd>
						</dl>
					</div>
				</div>
				<div class="fenlei">
					<span><a  >龙岗区</a></span>
					<div id="show_menu"> 
						<dl><dt>龙岗区</dt> 
							<dd> 
								<a  >坂田</a> ｜ 
								<a  >布吉</a> ｜ 
								<a  >横岗</a> ｜ 
								<a  >大芬村</a> ｜ 
								<a  >桂芳园</a> ｜ 
								<a  >康桥</a> ｜ 
								<a  >龙珠花园</a> ｜ 
								<a  >坪地</a> ｜ 
								<a  >坪山</a> ｜ 
								<a  >万科城</a> ｜
							 	<a  >龙岗中心城</a> ｜ 
							 	<a  >葵涌</a> ｜ 
							 	<a  >理想新城</a> ｜ 
							 </dd> 
							</dl> 
						</div> 
					</div>
					<h3><em>人均消费</em></h3>
					<div class="fenlei"> <span><a  >全部</a></span><span><a  >30元以下</a></span></div>
					<div class="fenlei"> <span><a  >30-50元</a></span><span><a  >50-80元</a></span></div>
					<div class="fenlei"> <span><a  >80-120元</a></span><span><a  >120-200元</a></span></div>
					<div class="fenlei"> <span><a  >200元以上</a></span></div>
				</div>


			<div class="member_r">
				<div class="love">
					<div class="hd">
						<a href="#" title="设置"></a> <span class="yahe">猜您 <i class="green2"> 喜欢 </i> </span>
						<span class="left10 size_12 gray3"> 设置您居住、工作或学校的地址，常去的商圈，吃喝玩乐的喜好，以便能更准确的为您推荐。 </span></div>
					<div class="pp_box_list">
						<a href="#" id="prev"></a> <div id="marquee">
							<ul>
								<li>
									<div class="mod">
										<a class="imgbg" href="/cglib/details/details.jsp"></a>
										<div class="img"><img src="/upload/20140117141311.jpg"></div>
										<div class="txt">
											<span class="right right10">30元+<em>60积分</em></span>
											<span class="left10 bold"><a class="t_link" href="/cglib/details/details.jsp">发艺轩专业洗护烫染中心</a></span>
										</div>
									</div>
								</li>
								<li>
									<div class="mod">
										<a class="imgbg" href="/cglib/details/details.jsp"></a>
										<div class="img"><img src="/upload/20140121092658.jpg"></div>
										<div class="txt">
											<span class="right right10">30元+<em>60积分</em></span>
											<span class="left10 bold"><a class="t_link" href="/cglib/details/details.jsp">雅芳美容院1</a></span>
										</div>
									</div>
								</li>
								<li>
									<div class="mod">
										<a class="imgbg" href="/cglib/details/details.jsp"></a>
										<div class="img"><img src="/upload/20140708145554.jpg"></div>
										<div class="txt">
											<span class="right right10">30元+<em>60积分</em></span>
											<span class="left10 bold"><a class="t_link" href="/cglib/details/details.jsp">圣诺盟百货超市</a></span>
										</div>
									</div>
								</li>
								<li>
									<div class="mod">
										<a class="imgbg" href="/cglib/details/details.jsp"></a>
										<div class="img"><img src="/upload/20131209094813.jpg"></div>
										<div class="txt">
											<span class="right right10">30元+<em>60积分</em>span>
											<span class="left10 bold"><a class="t_link" href="/cglib/details/details.jsp">雪依氏</a></span>
										</div>
									</div>
								</li>
								<li>
									<div class="mod">
										<a class="imgbg" href="/cglib/details/details.jsp"></a>
										<div class="img"><img src="/upload/20140424150102.jpg"></div>
										<div class="txt">
											<span class="right right10">30元+<em>60积分</em></span>
											<span class="left10 bold"><a class="t_link" href="/cglib/details/details.jsp">金草帽</a></span>
										</div>
									</div>
								</li>
								<li>
									<div class="mod">
										<a class="imgbg" href="/cglib/details/details.jsp"></a>
										<div class="img"><img src="/upload/20131115152923.jpg"></div>
										<div class="txt">
											<span class="right right10">30元+<em>60积分</em></span>
											<span class="left10 bold"><a class="t_link" href="/cglib/details/details.jsp">皇百隆美食坊</a></span>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<a href="/cglib/details/details.jsp" id="next"></a> </div>
				</div>
				<div class="member_tab" id="dblist">
					<div class="m_tab_box">
						<div class="hd">
							<ul class="left">
								<!--箭头的五种状态：当前cur 绿色向下green_down 绿色向上green_up 灰色向下gray_down 灰色向上gray_up-->
								<li><a class="cur" href="/cglib/details/details.jsp">默认<b></b></a></li>
								<li><a class="gray_up" href="/cglib/details/details.jsp">人气<b></b></a></li>
								<li><a class="gray_up" href="/cglib/details/details.jsp">评分<b></b></a></li>
								<li><a class="gray_up" href="/cglib/details/details.jsp">最新<b></b></a></li>
							</ul>
							<div class="right">
								<span class="pic"><a class="cur" href="/cglib/details/details.jsp" title="橱窗方式"></a></span>
								<span class="list"><a href="/cglib/details/details.jsp" title="列表方式"></a></span>
							</div>
						</div>
						<div class="m_tab_list">
							<ul>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20131209164323.jpg"></div>
											<p class="w170"><span class="right red3">4.91分</span><span class="bold green2"><a href="/cglib/details/details.jsp">博多长浜制面所</a></span></p>
											<p>优惠：<span class="red3 bold">全单9折</span></p>
											<p>人均消费：50 元</p>
											<p>有效期：2013.12.15 - 2014.12.15</p>
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20131210091531.jpg"></div>
											<p class="w170"><span class="right red3">送5积分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">麻辣香锅</a></span></p>
											<p>优惠：<span class="red3 bold">全单9折</span></p>
											<p>人均消费：50 元</p>
											<p>有效期：2013.12.15 - 2014.12.15</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20131122144006.jpg"></div>
											<p class="w170"><span class="right red3">送5积分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">渔米之湘餐厅</a></span></p>
											<p>优惠：<span class="red3 bold">全单9折</span></p>
											<p>人均消费：35 元</p>
											<p>有效期：2013.11.22 - 2014.11.21</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20130608163529.jpg"></div>
											<p class="w170"><span class="right red3">送积4.91分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">人旺旺砂锅粥店</a></span></p>
											<p>优惠：<span class="red3 bold">全单8.8折</span></p>
											<p>人均消费：40 元</p>
											<p>有效期：2014.07.03 - 2015.07.03</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140312164150.bmp"></div>
											<p class="w170"><span class="right red3">送积4.95分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">安联君豪酒楼</a></span></p>
											<p>优惠：<span class="red3 bold">全单9.5折</span></p>
											<p>人均消费：76 元</p>
											<p>有效期：2014.03.05 - 2015.03.04</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140819153219.bmp"></div>
											<p class="w170"><span class="right red3">送积4.92分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">昌盛韩国料理</a></span></p>
											<p>优惠：<span class="red3 bold">满400减50元</span></p>
											<p>人均消费：0 元</p>
											<p>有效期：2014.08.12 - 2015.03.31</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140819153219.bmp"></div>
											<p class="w170"><span class="right red3">送积4.92分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">昌盛韩国料理</a></span></p>
											<p>优惠：<span class="red3 bold">满200减20元</span></p>
											<p>人均消费：0 元</p>
											<p>有效期：2014.08.12 - 2015.03.31</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140819153219.bmp"></div>
											<p class="w170"><span class="right red3">送积4.92分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">昌盛韩国料理</a></span></p>
											<p>优惠：<span class="red3 bold">满100减10元</span></p>
											<p>人均消费：0 元</p>
											<p>有效期：2014.08.12 - 2015.03.31</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140107141253.jpg"></div>
											<p class="w170"><span class="right red3">送积4.88分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">原味主张椰子鸡</a></span></p>
											<p>优惠：<span class="red3 bold">全单8.8折</span></p>
											<p>人均消费：60 元</p>
											<p>有效期：2013.06.08 - 2015.06.08</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20130626170129.jpg"></div>
											<p class="w170"><span class="right red3">送积4.81分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">诗汀白咖啡</a></span></p>
											<p>优惠：<span class="red3 bold">全单8.5折</span></p>
											<p>人均消费：50 元</p>
											<p>有效期：2013.06.08 - 2015.06.08</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20131125162727.jpg"></div>
											<p class="w170"><span class="right red3">送积4.42分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">太清甜品</a></span></p>
											<p>优惠：<span class="red3 bold">全单9折</span></p>
											<p>人均消费：22 元</p>
											<p>有效期：2013.11.11 - 2014.11.10</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20131107145605.jpg"></div>
											<p class="w170"><span class="right red3">送5积分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">一品小肥羊观澜店</a></span></p>
											<p>优惠：<span class="red3 bold">全单8.5折</span></p>
											<p>人均消费：40 元</p>
											<p>有效期：2013.11.08 - 2014.11.08</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140901163042.bmp"></div>
											<p class="w170"><span class="right red3">送积4.33分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">闻湘来</a></span></p>
											<p>优惠：<span class="red3 bold">满200元减20元</span></p>
											<p>人均消费：0 元</p>
											<p>有效期：2014.09.01 - 2015.08.31</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20131231145944.jpg"></div>
											<p class="w170"><span class="right red3">送积4.98分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">兰花会馆</a></span></p>
											<p>优惠：<span class="red3 bold">全单9折</span></p>
											<p>人均消费：200 元</p>
											<p>有效期：2014.01.01 - 2014.12.31</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140106172338.jpg"></div>
											<p class="w170"><span class="right">	暂无点评</span><span class="bold green2">	<a href="/cglib/details/details.jsp">可口多拿CoCoDNout</a></span></p>
											<p>优惠：<span class="red3 bold">全单8.8折</span></p>
											<p>人均消费：0 元</p>
											<p>有效期：2014.05.25 - 2015.05.24</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20130520163559.jpg"></div>
											<p class="w170"><span class="right red3">送积4.67分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">伊帆咖啡屋</a></span></p>
											<p>优惠：<span class="red3 bold">全单9折</span></p>
											<p>人均消费：0 元</p>
											<p>有效期：2014.05.16 - 2015.05.15</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20130417172432.jpg"></div>
											<p class="w170"><span class="right red3">送5积分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">新视力眼镜</a></span></p>
											<p>优惠：<span class="red3 bold">全单9折</span></p>
											<p>人均消费：139 元</p>
											<p>有效期：2012.10.20 - 2014.10.20</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20130417180751.jpg"></div>
											<p class="w170"><span class="right red3">送5积分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">白宫国际</a></span></p>
											<p>优惠：<span class="red3 bold">全单8.8折</span></p>
											<p>人均消费：0 元</p>
											<p>有效期：2012.12.01 - 2015.12.01</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20130530174245.png"></div>
											<p class="w170"><span class="right red3">送5积分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">老四川</a></span></p>
											<p>优惠：<span class="red3 bold">全单9.5折</span></p>
											<p>人均消费：50 元</p>
											<p>有效期：2014.05.10 - 2015.05.09</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140422093131.jpg"></div>
											<p class="w170"><span class="right">	暂无点评</span><span class="bold green2">	<a href="/cglib/details/details.jsp">一品布衣汤烤锅王</a></span></p>
											<p>优惠：<span class="red3 bold">全单9.5折</span></p>
											<p>人均消费：60 元</p>
											<p>有效期：2014.04.02 - 2015.04.01</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140103164354.jpg"></div>
											<p class="w170"><span class="right red3">送5积分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">鑫茂花园酒店</a></span></p>
											<p>优惠：<span class="red3 bold">全单8折</span></p>
											<p>人均消费：180 元</p>
											<p>有效期：2014.01.01 - 2014.12.31</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140317140621.jpg"></div>
											<p class="w170"><span class="right red3">送积4.78分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">一品小肥羊</a></span></p>
											<p>优惠：<span class="red3 bold">全单8.5折</span></p>
											<p>人均消费：70 元</p>
											<p>有效期：2014.03.03 - 2015.03.02</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140306112632.jpg"></div>
											<p class="w170"><span class="right red3">送积4.78分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">一品小肥羊</a></span></p>
											<p>优惠：<span class="red3 bold">全单8.5折</span></p>
											<p>人均消费：70 元</p>
											<p>有效期：2014.03.03 - 2015.03.02</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20130603170915.jpg"></div>
											<p class="w170"><span class="right red3">送5积分</span><span class="bold green2">	<a href="/cglib/details/details.jsp">薇薇新娘婚纱摄影</a></span></p>
											<p>优惠：<span class="red3 bold">全单8折</span></p>
											<p>人均消费：60 元</p>
											<p>有效期：2013.05.15 - 2015.05.15</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140923141241.jpg"></div>
											<p class="w170"><span class="right">	暂无点评</span><span class="bold green2">	<a href="/cglib/details/details.jsp">南丰行</a></span></p>
											<p>优惠：<span class="red3 bold">全单8.8折</span></p>
											<p>人均消费：80 元</p>
											<p>有效期：2014.09.10 - 2015.09.09</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140919155320.jpg"></div>
											<p class="w170"><span class="right">	暂无点评</span><span class="bold green2">	<a href="/cglib/details/details.jsp">善文健康管理</a></span></p>
											<p>优惠：<span class="red3 bold">全单9折</span></p>
											<p>人均消费：200 元</p>
											<p>有效期：2014.09.25 - 2015.09.30</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140919154517.jpg"></div>
											<p class="w170"><span class="right">	暂无点评</span><span class="bold green2">	<a href="/cglib/details/details.jsp">小娘鱼小吃店</a></span></p>
											<p>优惠：<span class="red3 bold">全单9折</span></p>
											<p>人均消费：60 元</p>
											<p>有效期：2014.09.18 - 2015.09.10</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140919153718.jpg"></div>
											<p class="w170"><span class="right">	暂无点评</span><span class="bold green2">	<a href="/cglib/details/details.jsp">成都老妈砂锅串串香火锅</a></span></p>
											<p>优惠：<span class="red3 bold">全单9.2折</span></p>
											<p>人均消费：40 元</p>
											<p>有效期：2014.09.18 - 2015.02.28</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140918154855.jpg"></div>
											<p class="w170"><span class="right">	暂无点评</span><span class="bold green2">	<a href="/cglib/details/details.jsp">聚缘川菜</a></span></p>
											<p>优惠：<span class="red3 bold">全单9.5折</span></p>
											<p>人均消费：60 元</p>
											<p>有效期：2014.09.15 - 2015.09.15</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<li><b></b>
									<div class="shadow">
										<div class="mod">
											<a class="imgbg" href="/cglib/details/details.jsp"></a>
											<div class="img"><img src="/upload/20140918154207.jpg"></div>
											<p class="w170"><span class="right">	暂无点评</span><span class="bold green2">	<a href="/cglib/details/details.jsp">深圳市罗湖区张记胡须佬四季火锅店</a></span></p>
											<p>优惠：<span class="red3 bold">全单9折</span></p>
											<p>人均消费：78 元</p>
											<p>有效期：2014.08.29 - 2015.08.28</p>
										
										</div>
										<div class="shears">
											<p><span class="right tobank"><a href="/cglib/dialog/add_to_bank.jsp">放入银行卡</a></span>
												<span class="toexchge"><a href="/cglib/dialog/add_to_exchge.jsp">立即兑换</a></span>
											</p>
										</div>
									</div>
								</li>
								<div class="clear">
								</div>
							</ul>
							<div class="clear">
							</div>
						</div>
						<div class="clear">
						</div>
						<div align="center">
							<div class="page">
								<!--分页开始-->
								<a href="#" class="no"> 上一页</a> <a href="#" class="cur"> 1</a> <a href="#"> 2</a> <a href="#"> 3</a> <a href="#"> 4</a> <a href="#"> 5</a> <a href="#"> 6</a> <a href="#"> 7</a> <a href="#"> 8</a> <a href="#"> 9</a> <a href="#"> 10</a> <a href="#"> 11</a> <a href="#" class="last"> 下一页</a> </div>
						</div>
					</div>
				</div>
			</div>
			<div class="clear">
			</div>
		</div>
	</div>
	<div class="clear">
	</div>
</section>


<div class="dialog dialog_bank" title="添加到银行卡"></div>
<div class="dialog dialog_exchge" title="立即兑换"></div>



<jsp:include page="/cglib/footer.jsp" flush="true"/>