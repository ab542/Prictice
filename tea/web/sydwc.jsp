<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>松阳端午茶</title>
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
          $(".navmenu").click(function(){
          $(".nav_navcon_more").slideDown(1000);
          $(".nav_close").delay(1000).show(0);
          });
          $(".nav_close").click(function(){
          $(".nav_navcon_more").slideUp(1000);
          $(this).hide();
          });
        });
            function showNavMenu(index) {
                    $(".navmenu").click(function() {
                        $(".nav_navcon_more").slideDown(1000);
                        $(".nav_close").delay(1000).show(0);
                    });
                    $(".nav_close").click(function() {
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
                    evt = (evt) ? evt : ((window.event) ? window.event : "")
                    var key = evt.keyCode ? evt.keyCode : evt.which;
                    if (key == 13) {
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
        <h3>~~欢迎光临且徐行浙南茶店~~</h3>
        <h1  align="center">
            <strong>松阳端午茶</strong>
        </h1>
        <h3><i>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp———文/潘建英 吴关军</i></h3>  
        <div class="bianzhean_wrapper">
        <div class="bianzhean_1 bianzhean" style="margin:30px 0 20px;">
        <div class="bianzhean1" style="background: #ededed;padding: 10px;border-top-left-radius: 50px;border-bottom-right-radius: 50px;border-top-right-radius: 5px;border-bottom-left-radius: 5px;">
        <div class="bianzhean_title" style="border-bottom:1px solid #c5c5c5;padding:10px 0;"><span style="font-weight:bold;">　　编者按：</span></div>
        <div class="bianzhean_desc"><span style="color: #959595; line-height:40px;font-size:18px;">
            <p text-indent:32px>
                松阳端午茶是以草药作为原料的民间茶饮的总称，具有清热解毒、生津止渴等功效，被誉为“百病茶”、“百家茶”&nbsp、“万能茶”，具有很高的保健价值。2009年，松阳端午茶入选浙江省第三批非物质文化遗产医药类名录。
            </p></span></div>
        </div>
        </div>
        </div>
        <div align="center" >
                        <li><h2>括苍仙人的治病仙茶 </h2></li>
                    <img src="./img/端午茶1.jpg" title="松阳端午茶" alt="图片加载失败" align="center" height="">
        </div>
    <p>
        端午茶与端午节密不可分。《风土记》记载“端者，始也，正也。五日午时为正中节，故作种种物避邪恶。”传统的端午节不仅有吃粽子、包薄饼、赛龙舟的习俗，而且还有如在门楣上插艾叶和菖蒲、佩香囊、 人悬挂钟馗像、制饮雄黄酒、取午时水、饮午时茶和端午茶、上山采集草药等风俗。古人创立端午节的寓意是祛病防疫、避邪消灾、追求安康。而采集各种草药制作成“端午茶”，也体现了人们追求健康安宁的心理。
        相传唐代道教名士、括苍仙人叶法善，在松阳卯山采制仙茶，常年饮用，活了105岁。法善在中年时奉诏入宫将卯山仙茶带入了宫中。在皇宫里，他精进修道，凭借着高深的道术和对养生保健的身体力行，返璞归真、抱朴怀素，赢得了帝王们的赏识，历五朝恩宠冠羽帝王师。他饮用的卯山仙茶也成为贡品，饮誉京师。唐景龙年间90岁高龄的叶法善离开京师游历于名山大川。在路上，他听闻浙西一带遭遇瘟疫，松阳染者颇多，就立即赶返故乡，召集众道士采制卯山仙茶以卯山泉水烹之，并置茶水于大缸和木桶中，以施茶的方式消灾避疫。当地百姓闻讯，纷至讨茶，饮茶而疫病得解。这种能治病消灾的卯山仙茶被称为“端午茶法善施茶的故事也流传至今，甚至连用大缸、木桶施茶的乡俗也沿袭下来。早年，松阳各处驿站、凉亭、寺观都用大木桶和大缸泡端午茶，供行人客商自取饮用。
        松阳先民们识别并采摘野外草药用以防疫治病，是当地农耕文明的重要组成部分。自古以来，松阳境内就遍布各种草药，在山坡、溪边、路旁、森林之中，都能找到草药的踪迹民间制作端午茶的原材料十分丰富。松阳农家不管男女，都能识别一些草药，并知晓草药的药性与作用，而擅长采集草药、制作端午茶的行家里手也非常多。</p>
        <div align="center" >
                        <li><h2>汇集百草而配制成茶</h2></li>
                    <img src="./img/端午茶2.jpg" title="松阳端午茶" alt="图片加载失败" align="center">
        </div>
        <p>
        松阳端午茶的功效十分广泛：避邪解毒为其一，防治中暑为其二，祛湿散风为其三，清热消炎为其四，解渴提神为其五，祛积消食为其六。配制端午茶，需掌握草药特点，并结合饮茶人的体质，有针对性地选取草药配制成茶。比如，有的人属于热性体质，在配制端午茶时，要少用热性草药；属于不热不寒体质的，就配成中性的；而属于寒凉体质的，就配成热性的。总之，必须根据饮茶人的不同体质进行配制。制作松阳端午茶的草药种类很多，起码有上百种。一般的草药有石菖蒲、山苍柴、坚七柴、山木通、食凉撑、倒妞刺、鱼腥草、大发散、金锁匙、鸭掌柴、黄生苓、马蓼晓、樟树叶、插田妞、六月雪、地茄儿、金珠莲、水桐子、黄栀根、地风蓬、牛舌草、墙络、陈骨皮、铁火叉、野棉花、桂皮、艾叶、麦冬等。人们在配茶时可以各取所需、精心选择。</p>
        <div align="center" >
                       <li><h2>保健养生的独特风情</h2></li>
                    <img src="./img/端午茶3.jpg" title="松阳端午茶" alt="图片加载失败" align="center">
        </div>
        <p>
        松阳端午茶不仅可用于治疗疾病，也是家庭中不可缺少的日常保健饮料。在配制时，常搭配一些既有药用功能、又甘醇清香的草药。草药是植物，季节性明显，因此需要注意采集时间。民间传统的采集时间为每年的端午节，传说此日天医星临空，百草都是药，而且药性特灵，包治百病。现在人们认为每年的农历五月初一至初五都可采摘草药。采集草药时，要注意菜虫药、黄闹羊花、草乌、白木香等明显有毒的草药绝不能用；当然，一些非常精通草药的医生也会特意加入个别的含毒草药，但这样的配方绝不可贸然仿效。另外，人们倾向于到远离村边、田暖的山上采集草药，因为那里的草药富有天地灵气，鲜有污秽染浊，用这种灵气制作而成的端午茶，是很好的天然保健饮料。
        制作端午茶，要从清洗草药开始。先将采集来的草药进行分类，然后用端午节时候的山坑水或溪水清洗。将清洗后的草药稍微晾干后，用柴刀剁成1到2厘米长的小段，在锅里略经炒制后直接晒干或者切后再晒干，这样就能泡制地道的松阳端午茶了。
        泡饮端午茶的盛器，不外乎茶罐、茶甑、饮茶筒、瓷茶罐、大瓷碗等器具，它们相比精致的功夫茶茶具，虽然少了诸多雅致，却充满了返璞归真的情趣。
        如今，端午茶从传统的家庭制茶，已经演变为具有特色的地方产业，一批专门从事端午茶精加工的专业化企业相继出现。这些企业将端午茶的传统工艺与现代加工技术相结合，在保持了其传统风味的同时，强化了其保健功效。如今，融入了现代元素的松阳端午茶文化，正呈现出勃勃生机。
                                                            作者单位：松阳县档案局
        </p>
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