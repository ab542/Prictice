<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>松阳香茶</title>
    <link rel="stylesheet" href="./css/main sales.css">
    <style>
        p{
            text-indent:32px;
        }
        title{
            width: 200px;
            height: 50px;
            background-color: grey;
            font-size: 25px;
            color: aliceblue;
            font-weight: 700;
            text-align: center;
            line-height: 50px;
        }
    </style>
</head>
<body>  
        <script type="text/javascript">
          $(document).ready(function(){
             //navmore
          $(".navmenu").click(function(){
          //$(".nav_navcon_more").show("slow");
          $(".nav_navcon_more").slideDown(1000);
          $(".nav_close").delay(1000).show(0);
          });
          $(".nav_close").click(function(){
          //$(".nav_navcon_more").hide("slow");
          $(".nav_navcon_more").slideUp(1000);
          $(this).hide();
          });
        });
            function showNavMenu(index) {
                    $(".navmenu").click(function() {
                        //$(".nav_navcon_more").show("slow");
                        $(".nav_navcon_more").slideDown(1000);
                        $(".nav_close").delay(1000).show(0);
                    });
                    $(".nav_close").click(function() {
                        //$(".nav_navcon_more").hide("slow");
                        $(".nav_navcon_more").slideUp(1000);
                        $(this).hide();
                    });
                }
        
                function showChild(index) {
                    switch (index) {
                        case 1:
                            $(".shizheng_add").show();
                            $(".shizheng").find("img").removeClass("arrowDown").addClass("arrowUp");
                            break;
                        case 5:
                            $(".caijing_add").show();
                            $(".caijing").find("img").removeClass("arrowDown").addClass("arrowUp");
                            break;
                        case 9:
                            $(".wenyu_add").show();
                            $(".wenyu").find("img").removeClass("arrowDown").addClass("arrowUp");
                            break;
                    }
                    $("#navbar").css("height", "132px")
                }
        
                function hideChild(index) {
                    switch (index) {
                        case 1:
                            $(".shizheng_add").hide();
                            $(".shizheng").find("img").removeClass("arrowUp").addClass("arrowDown");
                            break;
                        case 5:
                            $(".caijing_add").hide();
                            $(".caijing").find("img").removeClass("arrowUp").addClass("arrowDown");
                            break;
                        case 9:
                            $(".wenyu_add").hide();
                            $(".wenyu").find("img").removeClass("arrowUp").addClass("arrowDown");
                            break;
                    }
                    $("#navbar").css("height", "110px")
                }
        
                function showArea(index) {
                    $(".substation").show();
                    $("#navbar").css("height", "132px")
                    $(".area").find("img").removeClass("arrowDown").addClass("arrowUp");
                }
        
                function hideArea(index) {
                    $(".area").find("img").removeClass("arrowUp").addClass("arrowDown");
                    $("#navbar").css("height", "110px")
                    $(".substation").hide();
                }
        
          //search            
         function quickQueryCust(evt) {
                    evt = (evt) ? evt : ((window.event) ? window.event : "") //兼容IE和Firefox获得keyBoardEvent对象
                    var key = evt.keyCode ? evt.keyCode : evt.which; //兼容IE和Firefox获得keyBoardEvent对象的键值
                    if (key == 13) { //判断是否是回车事件。
                        submitFun();
                    }
                }
                /*请输入关键字*/
        
                function checksubmit() {
                    var code = event.keyCode;
                    if (code == 13) submitFun();
                }
        
                
                
                function submitFun() {
                    var hotword = document.getElementsByName('q')[0].value;
                    if (hotword == '') {
                        alert('请输入关键字!');
                        return false;
                    } else {
        
                        window.open("//sou.chinanews.com.cn/search.do?q=" + encodeURIComponent(hotword));
                    }
                }
        
                  </script>
        
         <!--nav start-->
            <div id="navbar">
                <div class="w1280">
                    
                    <span class="logo"><a href="/"><img src="./img/logo.jpg" width="165" height="75" alt="且徐行浙南茶店"></a></span>
                    <ul class="nav_navcon">

                        <li class="">
                            <a href="/dxw/">绿茶</a>
                        </li>
                        <li class=""><a href="/world/">红茶</a></li>
                        <li class=""><a href="/society/">端午茶</a></li>
                        <!--<li class="caijing" onMouseOver="showChild(5)" onMouseOut="hideChild(5)">
                            <a href="/finance/">
                                端午茶<img src="//image.cns.com.cn/2022homepage/images/toparr.png" class="arr arrowDown">
                            </a>
                            <div class="caijing_add">
                                <a href="//channel.chinanews.com.cn/cns/cl/cj-fortune.shtml">金融</a>
                                <a href="//channel.chinanews.com.cn/cns/cl/cj-it.shtml">科技</a>
                                <a href="//channel.chinanews.com.cn/cns/cl/cj-house.shtml">地产</a>
                                <a href="//channel.chinanews.com.cn/cns/cl/cj-auto.shtml">汽车</a>
                                <a href="//channel.chinanews.com.cn/cns/cl/cj-life.shtml">快消</a>
                                <a href="/life/">健康&#8226;生活</a>
                            </div>
                        </li>-->
                        <li class=""><a href="/dwq/">安吉白茶</a></li>
                        <li class=""><a href="//www.chinaqw.com/">西湖龙井</a></li>
                        <!--<li class="wenyu" onMouseOver="showChild(9)" onMouseOut="hideChild(9)">
                            铁观音<img src="//image.cns.com.cn/2022homepage/images/toparr.png" class="arr arrowDown">
                            <div class="wenyu_add">
                                <a href="/wy/">毛尖</a>
                                <a href="/sports/">普洱茶</a>
                            </div>
                        </li>-->
                        <li class=""><a href="/shipin/">毛尖</a></li>
                        <li class=""><a href="/live.shtml">云南普洱</a></li>
                        <li class=""><a href="/photo/">菊花茶</a></li>
                        <li class=""><a href="/chuangyi/">乌龙茶</a></li>
                        <!--<li class="area" onMouseOver="showArea('9')" onMouseOut="hideArea('9')" style="margin-right: 0px;">各地<img src="//image.cns.com.cn/2022homepage/images/toparr.png" class="arr arrowDown">
                        </li>
                        <div class="navmenu"></div>-->
                    </ul>
        
         <div class="searchinput" id="zxss">
                        <input type="text" value="请输入关键字" onClick="this.value='',this.style.color='#000'" name="q" class="search_input" onKeyDown="return quickQueryCust(event)">
                        <a class="search_a" onClick="submitFun()">搜 索</a>
                        <div class="clear"></div>
                    </div>
                    <!--nav more-->
                                <!--nav more-->
                    <div class="nav_navcon_more">
                        <div class="w1280">
                            <div class="con">
                                <div class="navlist">
                                    <strong><a style="margin-left: 40px;" href="/scroll-news/news1.html">即时</a></strong>
                                </div>
        
                                <div class="navlist">
                                    <div class="left"><strong><a href="/china/">时政</a></strong></div>
                                    <div class="left1">
                                        <a href="//channel.chinanews.com.cn/cns/cl/gn-gcdt.shtml">高层</a><em>|</em>
                                        <a href="//channel.chinanews.com.cn/cns/cl/gn-rsbd.shtml">人事</a><em>|</em>
                                        <a href="//channel.chinanews.com.cn/cns/cl/fz-ffcl.shtml">反腐</a><em>|</em>
                                        <a href="//channel.chinanews.com.cn/u/sdbd.shtml">深度</a><em>|</em>
                                        <a href="//channel.chinanews.com.cn/u/gn-la.shtml">两岸</a><em>|</em>
                                        <a href="//channel.chinanews.com.cn/cns/cl/gn-kjww.shtml">科教</a><em>|</em>
                                        <a href="//channel.chinanews.com.cn/cns/cl/gn-js.shtml">军事</a><em>|</em>
                                        <a href="//channel.chinanews.com.cn/u/ll.shtml">理论</a></div>
                                    <div class="clear"></div>
        
                                </div>
        
                                <div class="navlist">
                                    <div class="left"><strong><a href="/dxw/">东西问</a></strong></div>
                                    <div class="left1"><a href="//channel.chinanews.com.cn/u/dxw-wetalk.shtml">中外对话</a><em>|</em><a href="//channel.chinanews.com.cn/u/dxw-sjg.shtml">世界观</a><em>|</em><a href="//channel.chinanews.com.cn/u/dxw-gjj.shtml">广角镜</a><em>|</em><a href="//channel.chinanews.com.cn/u/dxw-wszsd.shtml">Z世代</a><em>|</em><a href="//channel.chinanews.com.cn/u/dxw-yqd.shtml">洋腔队</a><em>|</em><a href="//channel.chinanews.com.cn/u/dxw-ylc.shtml">舆论场</a><em>|</em><a href="//channel.chinanews.com.cn/u/dxw-xmp.shtml">新漫评</a><em>|</em><a href="//channel.chinanews.com.cn/u/dxw-sxj.shtml">思享家</a><em>|</em><br><a href="//channel.chinanews.com.cn/u/dxw-hkt.shtml">会客厅</a><em>|</em><a href="//channel.chinanews.com.cn/u/dxw-yjy.shtml">研究院</a><em>|</em><a href="//channel.chinanews.com.cn/u/dxw-wxd.shtml">问西东</a></div>
                                    <div class="clear"></div>
                                </div>
        
                                <div class="navlist">
                                    <div class="left"><strong><a href="/world/">国际</a></strong></div>
                                    <div class="left1"><a href="//channel.chinanews.com.cn/cns/cl/gj-zxsjg.shtml">中新世界观</a><em>|</em><a href="//channel.chinanews.com.cn/u/gj-rw.shtml">国际人物</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/gj-dqsj.shtml">寰宇万象</a><em>|</em><a href="//www.chinanews.com.cn/shipin/m/gj/views.shtml">现场直击</a></div>
                                    <div class="clear"></div>
                                </div>
        
                                <div class="navlist">
                                    <div class="left"><strong><a href="/society/">社会</a></strong></div>
                                    <div class="left1">
                  <a href="//channel.chinanews.com.cn/u/rdzz.shtml">热点追踪</a><em>|</em>
                                        <a href="//channel.chinanews.com.cn/u/fsh.shtml">新闻浮世绘</a><em>|</em>
        
                                        <a href="//channel.chinanews.com.cn/cns/cl/fz-jdrw.shtml">中新法治</a><em>|</em>
                                        <a href="//channel.chinanews.com.cn/u/gn-dyxc.shtml">第一现场</a></div>
                                    <div class="clear"></div>
        
                                </div>
        
                                <div class="navlist">
                                    <div class="left"><strong><a href="/finance/">财经</a></strong></div>
                                    <div class="left1"><a href="//channel.chinanews.com.cn/cns/cl/cj-fortune.shtml">金融</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cj-it.shtml">科技</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cj-house.shtml">地产</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cj-auto.shtml">汽车</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cj-life.shtml">快消</a><em>|</em><a href="/wine/gd.shtml">酒业</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cj-hgds.shtml">中国新观察</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cj-msrd.shtml">民生调查局</a><em>|</em><br><a href="//channel.chinanews.com.cn/cns/cl/cj-fyrw.shtml">商业风云录</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cj-zxcp.shtml">中新财评</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cj-dks.shtml">中新对话</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cj-zj.shtml">正绩</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cj-zk.shtml">智库</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cj-gy.shtml">公益</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cj-stz.shtml">生态志</a></div>
                                    <div class="clear"></div>
                                </div>
        
                                <!--<div class="navlist">
                                    <div class="left"><strong><a href="">汽车</a></strong></div>
        
                                    <div class="clear"></div>
                                </div>-->
        
                                <div class="navlist">
                                    <div class="left"><strong><a href="/life/">健康&#8226;生活</a></strong></div>
                                    <div class="left1"><a href="//channel.chinanews.com.cn/cns/cl/life-jgc.shtml">医视线</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/life-food.shtml">新食说</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cj-ytx.shtml">游天下</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/life-baby.shtml">育儿通</a></div>
                                    <div class="clear"></div>
                                </div>
        
                                <div class="navlist">
                                    <div class="left"><strong><a href="/dwq/">大湾区</a></strong></div>
                                    <div class="left1"><a href="//channel.chinanews.com.cn/u/dwq-ga.shtml">港澳</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/dwq-fxb.shtml">风向标</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/dwq-kcd.shtml">快车道</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/dwq-qns.shtml">青年说</a><em>|</em><a href="//channel.chinanews.com.cn/u/dwq-wqzjjy.shtml">专家建言</a><em>|</em><a href="//channel.chinanews.com.cn/u/dwq-wqwdf.shtml">湾得福</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/dwq-video.shtml">Video</a><em>|</em><a href="//www.chinanews.com.cn/dwq/#wqmap">湾区MAP</a><em>|</em><br><a href="//www.chinanews.com.cn/dwq/#wq92">湾区9+2</a></div>
                                    <div class="clear"></div>
                                </div>
        
                            </div>
        
                            <div class="con">
                                <div class="navlist">
                                    <div class="left"><strong><a href="//www.chinaqw.com/">华人</a></strong></div>
                                    <!--<div class="left1"><a href="//channel.chinanews.com.cn/cns/cl/hr-lszs.shtml">领事之声</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/hr-hwbz.shtml">华媒报摘</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/hr-hrshq.shtml">华闻聚焦</a><em>|</em><a href="//channel.chinanews.com.cn/u/hr/cgfx.shtml">出国风向</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/hr-qjdt.shtml">侨界动态</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/hr-qxcz.shtml">侨乡传真</a><em>|</em>
                                        <a href="//channel.chinanews.com.cn/video/cns/splm/ga-hr.shtml">视频</a></div>-->
                                    <div class="clear"></div>
                                </div>
        
                                <div class="navlist">
                                    <div class="left"><strong><a href="/wy/">文娱</a></strong></div>
                                    <div class="left1"><a href="//channel.chinanews.com.cn/cns/cl/cul-jd.shtml">独家观察</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cul-xjgw.shtml">戏剧歌舞</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cul-gjqt.shtml">文史博览</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cul-rwzf.shtml">人物对话</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/cul-sckgd.shtml">收藏考古</a><em>|</em><a href="//www.chinanews.com.cn/shipin/m/wy/wy-cul/views.shtml">视频播报</a><em>|</em>
                                        <br/><a href="//channel.chinanews.com.cn/u/yl/djzb.shtml">独家娱报</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/yl-mxnd.shtml">明星八卦</a><em>|</em><a href="//www.chinanews.com.cn/shipin/m/wy/wy-yl/views.shtml">视频</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/yl-ypkb.shtml">影视博览</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/yl-zykx.shtml">热门综艺</a></div>
                                    <div class="clear"></div>
        
                                </div>
                                <div class="navlist">
                                    <div class="left"><strong><a href="/sports/">体育</a></strong></div>
                                    <div class="left1"><a href="//channel.chinanews.com.cn/cns/cl/ty-bdjj.shtml">独家视角</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/ty-gnzq.shtml">绿茵赛场</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/ty-klsk.shtml">篮坛竞技</a><em>|</em><a href="//channel.chinanews.com.cn/cns/cl/ty-zhqt.shtml">综合其他</a><em>|</em><a href="/shipin/m/tt/views.shtml">视频播报</a></div>
                                    <div class="clear"></div>
                                </div>
        
                                <div class="navlist">
                                    <div class="left"><strong><a href="/shipin/">视频</a></strong></div>
                                    <div class="left1"><a href="/shipin/m/rd/views.shtml">热点</a><em>|</em><a href="/shipin/m/gn/views.shtml">国内</a><em>|</em><a href="/shipin/m/sh/views.shtml">社会</a><em>|</em><a href="/shipin/m/gj/views.shtml">国际</a><em>|</em><a href="/shipin/m/jq/views.shtml">军事</a><em>|</em><a href="/shipin/m/wy/views.shtml">文娱</a><em>|</em><a href="/shipin/m/tt/views.shtml">体育</a><em>|</em><a href="/shipin/m/cj/views.shtml">财经</a><em>|</em><a href="/shipin/m/ga/views.shtml">港澳台侨</a><em>|</em><a href="/shipin/minidocu.shtml">微视界</a><em>|</em><br><a href="/shipin/yqd.shtml">洋腔队</a><em>|</em><a href="/shipin/zsd.shtml">Z世代</a><em>|</em><a href="/gn/z/lanmeiyinxiang/index.shtml">澜湄印象</a><em>|</em><a href="/shipin/AuthenticChina.shtml">中国风</a><em>|</em><a href="/shipin/chinarevealed.shtml">中国新视野</a></div>
                                    <div class="clear"></div>
                                </div>
        
                                <div class="navlist">
                                    <div class="left"><strong><a href="/photo/">图片</a></strong></div>
                                    <div class="left1"><a href="//channel.chinanews.com.cn/u/zxhb.shtml">中新画报</a><em>|</em><a href="//channel.chinanews.com.cn/u/pic/gn.shtml">国内</a><em>|</em><a href="//channel.chinanews.com.cn/u/pic/sh.shtml">社会</a><em>|</em><a href="//channel.chinanews.com.cn/u/pic/gj.shtml">国际</a><em>|</em><a href="//channel.chinanews.com.cn/u/pic/yl.shtml">娱乐</a><em>|</em><a href="//channel.chinanews.com.cn/u/pic/ty.shtml">体育</a><em>|</em><a href="//channel.chinanews.com.cn/u/pic/js.shtml">军事</a><em>|</em><a href="//channel.chinanews.com.cn/u/pic/kj.shtml">科技</a><em>|</em>
                                        <br/><a href="//channel.chinanews.com.cn/u/pic/gatq.shtml">港澳台侨</a><em>|</em><a href="//channel.chinanews.com.cn/u/pic/frg.shtml">凡人歌</a>
                                    </div>
                                    <div class="clear"></div>
                                </div>
        
                                <div class="navlist">
                                    <div class="left"><strong><a href="/chuangyi/">创意</a></strong></div>
        
                                    <div class="clear"></div>
                                </div>
        
                                <div class="navlist">
                                    <strong><a style="margin-left: 40px;" href="/live.shtml">直播</a></strong>
                                </div>
        
                                <div class="navlist">
                                    <strong><a style="margin-left: 40px;" href="/allspecial/">专题</a></strong>
                                </div>
        
                            </div>
        
                            <div class="clear"></div>
                            <div class="otherlogo">
                                <a href="//www.chinaqw.com/"><img src="//image.cns.com.cn/default/5ddb9ec3/20210728/qw.jpg" alt=""></a>
                                <a href="//www.jwview.com/"><img src="//image.cns.com.cn/default/5ddb9ec3/20210728/jw.jpg" alt=""></a>
                                <a href="//www.ecns.cn/"><img src="//image.cns.com.cn/default/5ddb9ec3/20210728/ecns1.jpg" alt=""></a>
                                <a href="/gsztc/"><img src="//www.chinanews.com.cn/fileftp/2021/11/2021-11-16/U947P4T47D49225F24534DT20211116135935.png" alt=""></a>
                                <a href="//www.inewsweek.cn/"><img src="//www.inewsweek.cn/10/2018/1225/logo.png" alt="" /></a>
        <a href="http://epaper.chinanews.com/"><img src="//www.chinanews.com.cn/fileftp/2022/05/2022-05-10/U435P4T47D50141F24533DT20220511134121.png" alt=""></a>
            <a href="http://www.cnsphoto.com/"><img src="//www.chinanews.com.cn/fileftp/2022/05/2022-05-10/U435P4T47D50141F24532DT20220511134121.png" alt=""></a>
                            </div>
        
                            <div class="nav_close"></div>
                        </div>
        
                    </div>
        
        
        
                </div>
            </div>
            <!--nav end--> 
        <h3>~~欢迎光临且徐行浙南茶店~~</h3>
        <h1  align="center">
            <strong>松阳香茶</strong>
        </h1>
        <div class="bianzhean_wrapper">
        <!--编者按样式1 start-->
        
        <div class="bianzhean_1 bianzhean" style="margin:30px 0 20px;">
        
        <div class="bianzhean1" style="background: #ededed;padding: 10px;border-top-left-radius: 50px;border-bottom-right-radius: 50px;border-top-right-radius: 5px;border-bottom-left-radius: 5px;">
        
        <div class="bianzhean_title" style="border-bottom:1px solid #c5c5c5;padding:10px 0;"><span style="font-weight:bold;">　　编者按：</span></div>
        
        <div class="bianzhean_desc"><span style="color: #959595; line-height:40px;font-size:18px;">
            <p text-indent:32px>
                浙江松阳：“茶文化”演绎“茶风情” 打响“中国有机茶乡”金名片
                丽水市松阳县，有着“最后的江南秘境”之称，让它享誉中外的，不仅有留存最完整的“古典中国”县域样板，更有着连绵茶山和悠远茶香。
            </p></span></div>

        </div>
        </div>
        
        <!--编者按样式1 end-->
        <div align="center">
            <img src="./img/香茶1.png" title="松阳香茶" alt="图片加载失败" align="center" width="1400px" height="350px">
        </div>
        <p><font face="黑体">松阳县城全景。松阳县委宣传部供图</font></p>
        <p><strong><span style="color: purple;">茶韵悠悠 松阳茶香汲古润今</span></strong></p>
        </div>
        <p>
        松阳拥有1800多年建县史，其“茶龄”和“县龄”相差无几。
        </p>     
        <p>
        据史料记载，松阳种植茶叶、出产茶叶始于三国。到了唐代，道教天师叶法善所制松阳茶叶“竹叶形，深绿色，茶水色清，味醇”，被称为“卯山仙茶”。
        </p>
        <p>
        古往今来，不少文人雅士以茶寄情、用茶讴歌。“松翠掩山寺，溪深山路幽。烹茗绿烟袅，不得更迟留。”走进松阳各地的名山名寺，经常可以看见随着茶文化应运而生的首首茶诗、款款茶联。
如今的松阳茶叶，主要有两大区域公用品牌：松阳银猴和松阳香茶。
        </p>
        <p>
            传承唐朝时期地方名茶横山茶、下街茶炒制工艺创新研发的松阳香茶，条紧、香高、味浓，目前已畅销全国20多个省市；而本地自主选育茶树品种制成的松阳银猴茶，卷曲肥壮，满披银毫，银绿隐翠，以别具一格的品质特征获得两届浙江省十大名茶。
此外，杭州灵隐寺与松阳崇觉寺推出的特色茶——“崇觉罗汉茶”，以金汤蜜韵、花香果味流传至今，2021年在丽水市首届禅（道）茶评比中获最具文化底蕴奖和最佳茶韵奖。

        </p>
        <p>
            <strong>
                <span style="color:purple">多元融合 茶文化内涵不断延伸</span>
            </strong>
        </p>
        <p>
            近年来，松阳聚焦文旅融合，将茶文化与耕读文化、养生文化、道教文化融合发展，开展茶文化街区建设，让茶元素融入松阳的大街小巷。
        </p>
        <div align="center">
            <img src="./img/香茶2.png" title="松阳香茶" alt="图片加载失败" align="center" width="1400px" height="350px">
        </div>
        <p>
            如果说茶叶是松阳的名片，那么大木山茶园就是松阳茶叶农文旅融合发展的典范。2015年，位于松阳县新兴镇的大木山茶园被评为国家4A级旅游景区，成为国内首个将自行车骑行运动与茶园观光休闲融合的旅游景区。
            茶园骑行。松阳县委宣传部供图
        </p>
        <p>
            茶园景区核心面积3000余亩，连片茶园面积8万余亩，景区内建有休闲骑行赛道8.3公里，专业骑行赛道7公里。骑行其中，茶园连绵、青翠欲滴、茶香四溢。
        </p>
        <p>
            大木山茶园深入挖掘茶文化底蕴，推出茶园观光、茶园品茶、采摘制茶体验、养生度假等项目，使茶叶种植、加工、休闲、消费、旅游融合于一体，实现了一二三产的联动发展。
            除了大木山，松阳县还依托茶园资源、茶文化禀赋，推出了“茶+古村落旅游”，将茶文化与古村落文化有机融合，目前已打造8条茶主题旅游线路。
        </p>
        <p>
            随着游客日益增多，松阳将茶空间建设作为打响茶文化品牌的重要举措，实现“卖茶”与“卖文化”的深度融合。2021年，松阳建成茶馆、茶吧、茶家乐、茶主题餐厅等20余家，实现经营性收入2000多万元。
            松阳还通过举办全国摄影大赛、茶乡行主题茶旅活动、全民饮茶日、浙江自行车公开赛、田园松阳国际马拉松赛等一系列相关文化体育活动，不断丰富“茶”文化。
        </p>
        <p>
            在松阳茶叶博物馆，1000平方米的展览馆设置了茶史、茶道、茶俗、茶业和茶旅五个展区，将松阳的茶歌、茶舞、茶灯、茶俗等茶文化形象和现代“六茶共舞”之势生动地融合起来，将参观者带入松阳茶文化的历史之中。
            　茶韵悠远 联结中外茶文化魅力尽显
        </p>
        <p>
            “客来庄前无须问，茶香便是引路人。”如今的松阳茶，从饮品变成了联结世界的金名片。
        </p>
        <div align="center">        
            <img src="./img/香茶3.png" title="松阳香茶" alt="图片加载失败" align="center" width="1400px" height="350px">
        </div>

        <p>
            从2008年起，每年春天，茶商大会都如期在松阳举行。15年来，通过茶商大会、招商推介、茶业交流等活动，越来越多的松阳茶人走出松阳，越来越多的外地茶商茶农走进松阳，形成了“走全国、种全国、卖全国”的松阳茶产业发展格局。
三都乡茶园。李增军摄
        </p>
        <p>
            茶文化、茶故事和新茶人，在融合中创新，演绎了“老戏新说”的传播热潮，让茶艺、茶道等茶文化走进年轻人，带动相关产业加速发展。
        </p>
        <p>
            松阳人孟雪芬一直以来都在探索如何用年轻人喜欢的方式去传承和推广茶文化。2015年，在大木山茶室创办茶业培训学校，累计培训茶艺师、评茶员、制茶师等5000余人，并依托松阳的旅游、民宿产业开展游学活动，接待了来自日本、瑞士、澳大利亚等国的学生，让更多人感知松阳的茶文化、感受松阳茶的魅力、体验制茶品茶的乐趣。“我希望这个茶室不仅是茶室，而是展示和宣传松阳茶文化的窗口，在这里不仅能品好茶，还能结识茶人茶友。”孟雪芬表示。
            近年来，直播、短视频的崛起，让茶文化有了走出去的更多可能。松阳年轻茶人将目光转向互联网领域，把镜头对准茶农、茶园、茶叶市场，一系列反映松阳茶文化茶产业的短视频让年轻人看到了松阳的茶，激起了更多人对松阳茶文化的兴趣。
            以文化为魂，松阳在求新求变中探索这一片绿叶的更多价值，演绎出更多“无中生有、有中生优”的融合发展故事。（阮春生、董剑辉、叶火香）
        </p>

    </hr color="blue" width="2000px" align="left">
    <!--底部-->
    <style type="text/css">
        /*pagebottom*/    
        .pagebottom{color:#8d8d8d;margin:0 auto;padding-top:0px;width:100%;font-size:14px;background-color:#fff;border-top:2px solid #c72a2a;}
        .pagebottom a{color:#8d8d8d}
        .pagebottom_nav{width:1280px;margin:0 auto;height:76px;line-height:56px;text-align:center;font-size:18px;color:#666}
        .pagebottom_nav a{color:#666;text-decoration:none}
        .pagebottom_nav a:hover{color:#666;text-decoration:underline}
        .pagebottom_nav span{padding:0 10px}
        .pagebottom_nav li{float:left;padding:10px 40px}
        .pagebottom_nav li:hover{background-color:#c72a2a}
        .pagebottom_nav li:hover a{color:#fff;text-decoration: none;}
        .pagebottom_nav li a{color:#c72a2a}
        .pagebottom_nav .client{float:left;border-left:1px solid #f0f0f0;height:76px}
        .pagebottom_nav .client a{display:inline-block;text-decoration:none;padding:10px 20px 0}
        .pagebottom_nav .client a div{color:#c72a2a;font-size:12px;margin-top:-40px}
        .pagebottom_nr{color:#8d8d8d;background-color:#f9f9f9;padding-top:10px}
        .pagebottom_nr a{color:#8d8d8d;text-decoration:none}
        .pagebottom_nr a:hover{color:#8d8d8d;text-decoration:underline}
        .pagebottom .des{line-height:32px;text-align:center;font-size:14px;display: inline-block;width:100%;}
        </style>
        <script>
        function changeCurrent(thisli) {
            if(thisli.className=="current"){return}
            else{
                $(thisli).siblings().removeClass("current");
                $(thisli).addClass("current");
            }
        }
        </script>
        
        <div class="clear"></div>
                    <!--底部-->
                    <div class="pagebottom">
                        <div class="pagebottom_nav">
                            <ul>
                                <li onMouseOver="changeCurrent(this)"><a href="/common/footer/intro.shtml">关于我们</a></li>
                                <li onMouseOver="changeCurrent(this)"><a href="/common/footer/aboutus.shtml">联系我们</a></li>
                                <li onMouseOver="changeCurrent(this)"><a href="/common/footer/contact.shtml">售后服务</a></li>
                                <li onMouseOver="changeCurrent(this)"><a href="//ad.chinanews.com.cn/">广告服务</a></li>
                                <li onMouseOver="changeCurrent(this)"><a href="/common/footer/news-service.shtml">供稿服务</a></li>
                                <li onMouseOver="changeCurrent(this)"><a href="/common/footer/law.shtml">法律声明</a></li>
                                <li onMouseOver="changeCurrent(this)"><a href="/hr/">商品信息</a></li>
                                <li onMouseOver="changeCurrent(this)"><a href="/common/footer/sitemap.shtml">旅游地图</a></li>
                            </ul>
        
                        </div>
                        <div class="pagebottom_nr">
        
                            <div class="des">本网站所刊载信息，均来源于松阳文旅和松阳县人民政府网。刊用本网站稿件，务经书面授权。</div>
        
                            <div class="des">未经授权禁止转载、摘编、复制及建立镜像，违者将依法追究法律责任。</div>
                        </div>
        
                        <div class="pagebottom_nr" style="padding-bottom:20px">
                            <div class="des">[<a href="/news/xuke.html">网上传播视听节目许可证（0106668)</a>] [<a href="//beian.miit.gov.cn">京ICP证08060058号</a>] [
                                <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010202009201" style="display:inline-block;height:20px;line-height:20px;"><img src="//www.chinanews.com/fileftp/2016/02/2016-02-29/ghs.png
                                           " style="float:left;">京公网安备 1101020220620</a>] [<a href="//beian.miit.gov.cn">京ICP备0568549377号-1</a>]  总机：86-10-87826688 <br>违法和不良信息举报电话：15699788000 举报邮箱：jubao@chinanews.com.cn <a href="/kong/2018/01-17/8426100.shtml">举报受理和处置管理办法</a></div>
                            <div class="des">Copyright &#169;1999-2022 chinanews.com. All Rights Reserved</div>
                        </div>
        
                    </div>
        
                </div>
        
                <!--页底end-->
        
            <!--页底end-->
</body>
</html>