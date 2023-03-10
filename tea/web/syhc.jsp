<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>松阳红茶</title>
    <link rel="stylesheet" href="./css/main sales.css">
    <style>
        *{
            padding: 0;
            margin: 0;
        }
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
        html,body{
            height: 100%;
        }
        .box1{
            width:1200px;
            height:100%;
            background: white;
            float: left;
        }
        .box2{
            height: 100%;
            background:white;
            margin-left: 200px;
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
         function quickQueryCust(evt) {
                    evt = (evt) ? evt : ((window.event) ? window.event : "") //兼容IE和Firefox获得keyBoardEvent对象
                    var key = evt.keyCode ? evt.keyCode : evt.which; //兼容IE和Firefox获得keyBoardEvent对象的键值
                    if (key == 13) { //判断是否是回车事件。
                        submitFun();
                    }
                }
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
            <div id="navbar">
                <div class="w1280">
                    <span class="logo"><a href="/"><img src="./img/logo.jpg" width="165" height="75" alt="且徐行浙南茶店"></a></span>
                    <ul class="nav_navcon">
                        <li class="">
                        <a href="/dxw/">绿茶</a>
                        </li>
                        <li class=""><a href="/world/">红茶</a></li>
                        <li class=""><a href="/society/">端午茶</a></li>
                        <li class=""><a href="/dwq/">安吉白茶</a></li>
                        <li class=""><a href="//www.chinaqw.com/">西湖龙井</a></li>
                        <li class=""><a href="/shipin/">毛尖</a></li>
                        <li class=""><a href="/live.shtml">云南普洱</a></li>
                        <li class=""><a href="/photo/">菊花茶</a></li>
                        <li class=""><a href="/chuangyi/">乌龙茶</a></li>
                    </ul>
         <div class="searchinput" id="zxss">
                        <input type="text" value="请输入关键字" onClick="this.value='',this.style.color='#000'" name="q" class="search_input" onKeyDown="return quickQueryCust(event)">
                        <a class="search_a" onClick="submitFun()">搜 索</a>
                        <div class="clear"></div>
                    </div>
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
        <h3>~~欢迎光临茶颜观舍浙南茶店~~</h3>
        <div class="box1">
            <h1  align="center">
                <strong>松阳红茶</strong>
            </h1>
            <h3><i>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp——— 思明居士 2022-08-19 发表于河北</i></h3>  
            <p text-indent:32px>
                松阳红茶。它的上市时间是今年5月底，茶树品种是龙井43。这款松阳红茶最大的特点是滋味醇厚，浓香耐泡。它的青叶原料是叶子完全长开的，所以它的茶味会比较浓郁。它的香气是浓香型，就是非常自然的小种红茶茶香。茶味虽浓郁，但不至于苦涩，这种口粮茶用盖碗冲泡可以，用大茶杯冲泡也可以，没必要过多的讲究。
                今年的这款松阳香茶跟去年那款品质是非常接近的，还是同一个茶厂同一个老师傅定制的。这个老师傅的制茶工艺在松阳也能排的上号了，尤其是最为关键的发酵工艺，做的非常漂亮。他家茶叶的茶汤非常的靓，茶汤清澈透亮，而且是明晃晃的琥珀色，就这茶汤表现不比高档次的正山小种差。高档茶有这样的茶汤那是应该的，可这种口粮茶能有这样的表现是难能可贵！因此他的茶叶从来不上茶叶市场，我们都要上门跟他定制。
            </p></span><div class="xz360_body">
                <h2>一、松阳红茶的正确冲泡方法？</h2>
                <p>茶具选择</p>
                <p>冲泡松阳香茶的茶具，大家可以根据饮用的人数来定，如果只是日常自己饮用松阳香茶的话，那么冲泡松阳香茶的茶具就可以选用玻璃杯，如果是饮用人数为2-3人的话，使用半透明的白瓷盖碗来冲泡式可以的，饮用人数6-8个的话，则可以使用茶壶来冲泡，选用合适的茶具之后，大家可以先用清水进行清洗，然后再用沸水进行烫洗，起到均匀发热即可。</p>
                <p>茶水比例</p>
                <p>冲泡松阳香茶的时候，为了可以让新手茶友们，也可以冲泡出浓淡适中的松阳香茶出来，大家应该要掌握冲泡时候的茶水比例，而冲泡松阳香茶的时候，大家可以按照1:50的比例来操作，也就是说5g的松阳香茶，大家就需要使用250ml的水量来冲泡，每天饮用松阳香茶的分量最好不要炒过8g，而茶水比例大家也可以根据个人喜欢的口感上下微调。</p>
                <h2>二、云之味茶叶是红茶吗？</h2>
                <p>云之味茶叶不是红茶，它是普洱茶，属于黑茶；普洱茶是以云南省一定区域内的云南大叶种晒青毛茶为原料，经过后发酵加工成的散茶和紧压茶，普洱茶原产于云南澜沧江流域中游一带的思茅、版纳、临沧等地，集散今云南思茅市普洱县，故名“普洱茶“。</p>
                <p>它具有强烈的地域性特点和工艺性特点，茶品以“陈”为贵，越陈越香，是中国茶叶中极具特色的茶类。</p>
                <p>云之味茶不是红茶。它是普耳茶。说到普洱茶就会想到云南。云南盛产普洱茶，普洱茶又分生普，熟普，且以老茶树为优质原料。老茶客一般喜欢喝熟普洱，因为熟普洱茶它的特点是比较温和。冲泡熟普洱，茶汤呈琥珀色，慢慢变红，清澈，透亮，味道鲜香自然。</p>
                <p>不是。云之味应该是一个茶叶的品牌，里面应该包含了各类茶叶，不止是红茶。</p>
                <h2>三、云片茶属于红茶么？</h2>
                <p>不是红茶是绿茶</p>
                <p>云片茶产于崇义阳岭的茶叶，良种鲜叶，经杀青、摊凉整形、炒干等龙井工艺。</p>
                <p>该茶采用良种鲜叶，经杀青、摊凉整形、炒干等龙井工艺工序手工精制而成。其外形扁平、挺直、光洁、色泽绿黄鲜亮、香气高长、滋味醇和鲜爽，汤色碧绿明亮、叶底嫩绿匀齐的特点。具有止渴生津，提神益脑，防病降压抗衰老等功能。</p>
                                    </div></div>
        <div class="box2">
            <img src="./img/红茶1.png" title="松阳红茶" alt="图片加载失败" align="left" width="300" height="240">
            <img src="./img/红茶2.png" title="松阳红茶" alt="图片加载失败" align="center" width="300" height="240">
            <img src="./img/红茶3.png" title="松阳红茶" alt="图片加载失败" align="center" width="300" height="240">
        </div>
    </ul>
    </hr color="blue" width="2000px" align="left">
    <style type="text/css">
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
                    </div>
                </div>
</body>
</html>