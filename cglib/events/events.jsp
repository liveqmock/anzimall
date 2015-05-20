<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%

String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";
String[] css = {"common","list"};
String[] js = {"jquery","common","list","wbox"};


request.setAttribute("basePath",basePath);
request.setAttribute("css",css);
request.setAttribute("js",js);

%>

<jsp:include page="/cglib/header.jsp" flush="true"/>




<section>
	<div class="main3">
		<div class="hd_menu">
			<a href="#" id="hd1" class="hover">全部</a>
			<a href="#" id="hd2">进行中</a>
			<a href="#" id="hd3">未开始</a>
			<a href="#" id="hd4">已过期</a>
		</div>
		<div class="hd_tab_cont">
			<div id="con_hd_1">
				<div class="l">
					<ul>
						<li>
							<b class="img1"></b><!--img1 进行中， img2 未开始， img3 已过期-->
							<div class="mod">
								<div class="img"><a href="tiantianfu/tiantianfu.html"><img src="http://upload.ulpos.com/upload/201409/20140905134046.jpg" width="270" height="216"></a></div>
								<div class="txt">
									<p class="t green2"><a href="tiantianfu/tiantianfu.html">天天富理财</a></p>
									<p><strong>活动简介：</strong><!--StartFragment -->
									</p>
									<div>
										<!--StartFragment -->
										<div>
											“天天富”抽奖大乐透，惊喜大礼等你来！基金开户并累积申购达10万元以上，就有机会获得华为荣耀手环、500元等值礼品、电影片以及U联优惠券！
										</div>
									</div><p></p>
									<p><strong>活动时间：</strong>2014-08-13 -- 2014-12-13</p>
									<p class="top20 gray3">分享至：<a class="sina" href="#" target="_blank" title="新浪微博"></a><a class="qq" href="#" target="_blank" title="腾讯微博"></a></p>
								</div>
							</div>
							<div class="bg"></div>
						</li>

					</ul>
				</div>
				<div class="l">
					<ul>

						<li>
							<b class="img1"></b><!--img1 进行中， img2 未开始， img3 已过期-->
							<div class="mod">
								<div class="img"><a href="lottery3/lottery3.html"><img src="http://upload.ulpos.com/upload/201404/20140404105521.jpg" width="270" height="216"></a></div>
								<div class="txt">
									<p class="t green2"><a href="lottery3/lottery3.html">刷银联卡 赢iPad</a></p>
									<p><strong>活动简介：</strong><span style="font:14px/22px Arial, Helvetica, sans-serif, 宋体;color:#333333;text-transform:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;float:none;display:inline !important;white-space:normal;orphans:2;widows:2;font-size-adjust:none;font-stretch:normal;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">购物刷银行卡凭签购单凭证号即可参与抽奖，iPad500元购物卡、精美果汁壶套装、“手机刷卡神器”一盒宝、各种给力大奖等你拿！金额不限，次数不限，刷卡越多机会越多！</span></p>
									<p><strong>活动时间：</strong>2014-04-01 -- 2014-12-31</p>
									<p class="top20 gray3">分享至：<a class="sina" href="#" target="_blank" title="新浪微博"></a><a class="qq" href="#" target="_blank" title="腾讯微博"></a></p>
								</div>
							</div>
							<div class="bg"></div>
						</li>

					</ul>
				</div>
				<div class="l">
					<ul>

						<li>
							<b class="img3"></b><!--img1 进行中， img2 未开始， img3 已过期-->
							<div class="mod">
								<div class="img"><a href="#"><img src="http://upload.ulpos.com/upload/201405/20140514094930.jpg" width="270" height="216"></a></div>
								<div class="txt">
									<p class="t green2"><a href="#">香蜜美食节</a></p>
									<p><strong>活动简介：</strong><!--StartFragment -->
									</p>
									<div>
										香蜜美食节刷银行卡立享优惠，还有机会获赠联通优惠券跟神秘大礼包，让你尽情享受热情初夏！乐个不停！
									</div><p></p>
									<p><strong>活动时间：</strong>2014-05-16 -- 2014-05-25</p>
									<p class="top20 gray3">分享至：<a class="sina" href="#" target="_blank" title="新浪微博"></a><a class="qq" href="#" target="_blank" title="腾讯微博"></a></p>
								</div>
							</div>
							<div class="bg"></div>
						</li>

					</ul>
				</div>
				<div class="l">
					<ul>

						<li>
							<b class="img3"></b><!--img1 进行中， img2 未开始， img3 已过期-->
							<div class="mod">
								<div class="img"><a href="#"><img src="http://upload.ulpos.com/upload/201403/20140310112804.jpg" width="270" height="216"></a></div>
								<div class="txt">
									<p class="t green2"><a href="#">314白色情人节</a></p>
									<p><strong>活动简介：</strong>314，白色情人节遇见一生一世的你。安淘惠携手联通陪你过一个很出彩！很甜蜜！很有范！的浪漫情人节。</p>
									<p><strong>活动时间：</strong>2014-03-06 -- 2014-03-14</p>
									<p class="top20 gray3">分享至：<a class="sina" href="#" target="_blank" title="新浪微博"></a><a class="qq" href="#" target="_blank" title="腾讯微博"></a></p>
								</div>
							</div>
							<div class="bg"></div>
						</li>

					</ul>
				</div>
				<div class="l">
					<ul>

						<li>
							<b class="img3"></b><!--img1 进行中， img2 未开始， img3 已过期-->
							<div class="mod">
								<div class="img"><a href="#"><img src="http://upload.ulpos.com/upload/201312/20131230180020.jpg" width="270" height="216"></a></div>
								<div class="txt">
									<p class="t green2"><a href="#">T1·新城市广场吃喝玩乐闹团购</a></p>
									<p><strong>活动简介：</strong><!--StartFragment -->
									</p>
									<div>
										T1·新城市广场各种美食团购套餐来啦！再也不用为周末去哪儿消遣发愁了，朋友聚会、吃饭……T1·新城市广场全部帮你搞定！
									</div><p></p>
									<p><strong>活动时间：</strong>2013-12-30 -- 2014-01-19</p>
									<p class="top20 gray3">分享至：<a class="sina" href="#" target="_blank" title="新浪微博"></a><a class="qq" href="#" target="_blank" title="腾讯微博"></a></p>
								</div>
							</div>
							<div class="bg"></div>
						</li>

					</ul>
				</div>
				<div class="l">
					<ul>

						<li>
							<b class="img3"></b><!--img1 进行中， img2 未开始， img3 已过期-->
							<div class="mod">
								<div class="img"><a href="#"><img src="http://upload.ulpos.com/upload/201312/20131218155722.jpg" width="270" height="216"></a></div>
								<div class="txt">
									<p class="t green2"><a href="#">T·1新城市广场5折美食大趴</a></p>
									<p><strong>活动简介：</strong><!--StartFragment -->
									</p>
									<div>
										新城市广场11家知名美食商户全单5折，刷卡即得！加入安淘惠，咱们一起去火辣辣！
									</div><p></p>
									<p><strong>活动时间：</strong>2013-12-20 -- 2013-12-22</p>
									<p class="top20 gray3">分享至：<a class="sina" href="#" target="_blank" title="新浪微博"></a><a class="qq" href="#" target="_blank" title="腾讯微博"></a></p>
								</div>
							</div>
							<div class="bg"></div>
						</li>

					</ul>
				</div>
				<div class="clear"></div>
				<div align="center">
					<div class="page">
						<a href="javascript:void(0)" class="no">上一页</a><a href="javascript:void(0)" class="cur">1</a><a href="#">2</a><a href="#">3</a><a href="#" class="last">下一页</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
</section>




	<!--页脚-->
	<jsp:include page="/cglib/footer.jsp" flush="true"/>