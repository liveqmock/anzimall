<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

        <h2 class="help_main_tle">关于我们</h2>
        <div class="faq_answer" >

            <div class="text-t">
<p style="padding-bottom: 0px; widows: 2; text-transform: none; background-color: rgb(250,250,250); text-indent: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; font: 14px/30px 微软雅黑, 黑体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(85,85,85); word-spacing: 0px; padding-top: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px"><span style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; font-family: SimSun; color: rgb(0,0,0); padding-top: 0px">地址：深圳市宝安三区中粮地产大厦22楼</span></p>
<p style="padding-bottom: 0px; widows: 2; text-transform: none; background-color: rgb(250,250,250); text-indent: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; font: 14px/30px 微软雅黑, 黑体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(85,85,85); word-spacing: 0px; padding-top: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px"><span style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; font-family: SimSun; color: rgb(0,0,0); padding-top: 0px">电话：0755-3301 6895&nbsp;&nbsp;</span></p>
<p style="padding-bottom: 0px; widows: 2; text-transform: none; background-color: rgb(250,250,250); text-indent: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; font: 14px/30px 微软雅黑, 黑体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(85,85,85); word-spacing: 0px; padding-top: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px"><span style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; color: rgb(0,0,0); padding-top: 0px"><span style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; font-family: SimSun; padding-top: 0px">&nbsp; &nbsp;</span><span style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; font-family: SimSun; padding-top: 0px">&nbsp; &nbsp;0755-3301 6986</span></span></p>
<p style="padding-bottom: 0px; widows: 2; text-transform: none; background-color: rgb(250,250,250); text-indent: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; font: 14px/30px 微软雅黑, 黑体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(85,85,85); word-spacing: 0px; padding-top: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px"><span style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; font-family: SimSun; color: rgb(0,0,0); padding-top: 0px">邮编：518101</span></p>
<p style="padding-bottom: 0px; widows: 2; text-transform: none; background-color: rgb(250,250,250); text-indent: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; font: 14px/30px 微软雅黑, 黑体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(85,85,85); word-spacing: 0px; padding-top: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px"><span style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; font-family: SimSun; color: rgb(0,0,0); padding-top: 0px">传真：0755-3301 6826</span></p>
<p style="padding-bottom: 0px; widows: 2; text-transform: none; background-color: rgb(250,250,250); text-indent: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; font: 14px/30px 微软雅黑, 黑体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(85,85,85); word-spacing: 0px; padding-top: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px"><span style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; font-family: SimSun; color: rgb(0,0,0); padding-top: 0px">客服：4008 119 789</span></p>

<div id="map" style="height: 300px;margin-top: 30px;"></div>

</div>
</div>


    <script>

        function loadJScript() {
            var script = document.createElement("script");
            script.type = "text/javascript";
            script.src = "http://api.map.baidu.com/api?v=2.0&ak=6MnMg2PV1zdUKf99lHPmfduG&callback=init";
            document.body.appendChild(script);
        }
        function init() {
            // 百度地图API功能

            var mappoi = $('.mappoin');

            var map = new BMap.Map("map");
            var poin = new BMap.Point(113.980066,22.543784)
            map.centerAndZoom(poin, 11);
            map.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT}));
            map.addControl(new BMap.NavigationControl()); 
            map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL})); 
            map.enableScrollWheelZoom();                 //启用滚轮放大缩小

            var marker = new BMap.Marker(poin);  // 创建标注
            map.addOverlay(marker);
            map.setCenter(poin);
        }  

        window.onload = loadJScript;  //异步加载地图

    </script>