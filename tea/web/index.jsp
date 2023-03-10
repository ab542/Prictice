
<%--
  Created by IntelliJ IDEA.
  User: 王硕
  Date: 2022/12/7
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>茶颜观舍</title>
    <!--全局样式-->
    <link rel="stylesheet" href="./css/reset.css">
    <!--字体图标-->
    <link rel="stylesheet" href="./css/iconfont.css">
    <!--自己的样式-->
    <link rel="stylesheet" href="./css/mi.css">
    <script src="./jquery-3.5.1.js"></script>
</head>
<body>
<!--头部开始-->
<div class="header">
    <div class="wrap">
        <ul class="header-left">
            <li><a href="#">首页</a><span>|</span></li>
            <li><a href="./message.jsp">资讯</a><span>|</span></li>
            <li><a href="shops.jsp">产品库</a><span>|</span></li>
            <li><a href="wrong.jsp">经营商</a><span>|</span></li>
            <li><a href="wrong.jsp">测评</a><span>|</span></li>
            <li><a href="wrong.jsp">AI茶叶识别</a><span>|</span></li>
            <li><a href="https://baike.baidu.com/item/%E8%8C%B6%E5%8F%B6/138766?fr=aladdin">知识</a><span>|</span></li>
            <li><a href="wrong.jsp">加盟</a><span>|</span></li>
            <li><a href="https://www.baidu.com/">百科</a><span>|</span></li>
            <li><a href="Questionnaire.jsp">问答</a><span>|</span></li>

        </ul>
        <ul class="header-right">
            <li><a href="pages/user/login.jsp">登录</a><span>|</span></li>
            <li><a href="pages/user/regist.jsp">注册</a><span>|</span></li>
            <li><a href="pages/user/Manager_login.jsp">后台管理</a></li>
            <li class="cart">
                <a href="pages/cart/cart.jsp">
                    <i class="iconfont">&#xe653;</i>
                    购物车
                </a>
                <div class="cart-list">
                    <c:if test="${empty sessionScope.cart}">
                       主人！你的购物车为空，快快去浏览商品吧！
                    </c:if>
                    <c:if test="${not empty sessionScope.cart}">
                        <span>您的购物车中有${sessionScope.cart.totalCount}件商品</span>
                    </c:if>

                </div>
            </li>
        </ul>
    </div>
</div>
<!--头部结束-->
<!--导航开始-->
<div class="nav">
    <div class="wrap">
        <div class="logo">
            <a href="#">
                <img src="./img/logo.jpg" alt="" width="165" height="56">
            </a>
        </div>
        <div class="nav-bar">
            <ul>
                <li>
                    <a href="https://mp.weixin.qq.com/s/OvDae-cwRSiUMg_6slNt1w">常识</a>
                </li>
                <li>
                    <a href="https://mp.weixin.qq.com/s/9SnoORJpOHJoonFs1Ijd0Q">功效</a>
                </li>
                <li><a href="https://mp.weixin.qq.com/s/Tjx6SZ6qamuc9QsynghTdw">喝法</a></li>
                <li><a href="https://mp.weixin.qq.com/s/9SnoORJpOHJoonFs1Ijd0Q">茶具</a></li>
                <li><a href="https://mp.weixin.qq.com/s/9SnoORJpOHJoonFs1Ijd0Q">存储</a></li>
                <li><a href="https://mp.weixin.qq.com/s/Tjx6SZ6qamuc9QsynghTdw">茶艺</a></li>
                <li><a href="wrong.jsp">文献</a></li>
                <li><a href="wrong.jsp">展会</a></li>
                <li><a href="https://www.baidu.com/sf/vsearch?pd=video&wd=%E8%8C%B6%E5%8F%B6%E8%A7%86%E9%A2%91&tn=vsearch&lid=fc27dd3d0016d00d&ie=utf-8&rsv_pq=fc27dd3d0016d00d&rsv_spt=5&rsv_bp=1&f=8&atn=index">视频</a></li>
            </ul>
        </div>
        <div class="search">
            <input type="text" id="pn_input" value="请输入关键字" onClick="this.value='',this.style.color='#000'" name="q" class="search_input" onKeyDown="return quickQueryCust(event)">
            <!--<a href="" class="iconfont" id="searchPageBtn">&#xe63d;</a>--><!--搜索按钮-->
            <input type="submit" style="width: 51px; height: 45px; border-radius: 15px;
            background-color:#c8d9ee " value="搜索"class="search_a" onClick="submitFun()">
            <div class="search-list">
                <a href="#" onclick="givetxt()" class="asd">端午茶</a>
                <a href="#"onclick="givetxt()" class="asd">绿茶</a>
                <a href="#"onclick="givetxt()" class="asd">红茶</a>
                <a href="#"onclick="givetxt()" class="asd">普洱茶</a>
                <a href="#"onclick="givetxt()" class="asd">乌龙茶</a>
                <a href="#"onclick="givetxt()" class="asd">西湖龙井</a>
                <a href="#"onclick="givetxt()" class="asd">毛尖茶</a>
                <a href="#"onclick="givetxt()" class="asd">铁观音</a>
                <a href="#"onclick="givetxt()" class="asd">碧落春</a>
                <a href="#"onclick="givetxt()" class="asd">庐山云雾茶</a>
                <a href="#"onclick="givetxt()" class="asd">安吉白茶</a>
            </div>
            <script type="text/javascript">
               function givetxt() {
                    var res = $("a.asd").val();
                    $("#pn_input").val(res)
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
        </div>
    </div>
</div>
<!--导航结束-->
<!--banner开始-->
<div class="banner">
    <div class="wrap">
        <div class="banner-box">

        </div>
        <div class="slide">
            <ul>
                <li>
                    <a href="http://www.lps114.com.cn/122108.html">国家政策<i class="iconfont">&#xe658;</i></a>
                </li>
                <li>
                    <a href="https://baike.baidu.com/item/%E6%9D%BE%E9%98%B3%E5%8E%BF/10099768?fr=aladdin">产地介绍<i class="iconfont">&#xe658;</i></a>
                </li>
                <li>
                    <a href="https://baike.baidu.com/item/%E6%9D%BE%E9%98%B3%E8%8C%B6/7008776">历史渊源<i class="iconfont">&#xe658;</i></a>
                </li>
                <li><a href="http://www.lishui.gov.cn/art/2022/2/7/art_1229218391_57331587.html">传统匠人<i class="iconfont">&#xe658;</i></a></li>
                <li><a href="https://www.puercn.com/cybkgh/628450.html">独门配方<i class="iconfont">&#xe658;</i></a></li>
                <li><a href="message.jsp">产品服务<i class="iconfont">&#xe658;</i></a></li>
                <li><a href="mxdy.jsp">品牌代言<i class="iconfont">&#xe658;</i></a></li>
                <li><a href="https://baijiahao.baidu.com/s?id=1750254833794183192&wfr=spider&for=pc">带动就业<i class="iconfont">&#xe658;</i></a></li>
                <li><a href="https://www.puercn.com/quanzi/">茶友圈<i class="iconfont">&#xe658;</i></a></li>
                <li><a href="message.jsp">活动<i class="iconfont">&#xe658;</i></a></li>
            </ul>

        </div>
        <div class="prev"></div>
        <div class="next"></div>
    </div>
</div>
<!--banner结束-->
<!--广告开始-->
<p style="font-size: 20px; color:rgb(45, 43, 40) ">主要经营:&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;端午茶&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;绿茶&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;红茶&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
    <div class="wrap">
        <div class="adv-aside">
            <ul>
                <li class="row col">
                    <a href="">
<p style="font-size: 20px; color: black">我们的配方</p>
</a>
</li>
<li class="row col">
    <a href="https://baike.baidu.com/item/%E9%B1%BC%E8%85%A5%E8%8D%89/17030107?fr=aladdin">
        <img src="./img/折耳根.jpeg" alt="" height="46px" width="70px">
        <p style="color: black">鱼腥草</p>
    </a>
</li>
<li class="row">
    <a href="https://baike.baidu.com/link?url=W9-dxau1st427vPj3AE26FF0wFRqTMINHEl15cW0rzhdK5zN27SLRHwcENdsfD0_K7pFcqGmQvdae34YfUGKGDk19bXjnXcmO8uyLQunr6WsmSNH87Eu3u9BfpJHvR81">
        <img src="./img/石菖蒲.jpeg" alt="" height="46px" width="70px">
        <p style="color: black">石菖蒲</p>
    </a>
</li>
<li class="col">
    <a href="https://baike.baidu.com/item/%E8%8B%A6%E6%9C%A8/1243979?fromModule=lemma_search-box">
        <img src="./img/枯木.jpeg" alt="" height="46px" width="70px">
        <p style="color: black">苦木</p>
    </a>
</li>
<li class="col">
    <a href="https://baike.baidu.com/item/%E8%89%BE/3650277?fromModule=lemma_search-box&fromtitle=%E8%89%BE%E8%8D%89&fromid=682533">
        <img src="./img/艾草.jpeg" alt="" height="46px" width="70px">
        <p style="color: black">艾草</p>
    </a>
</li>
<li>
    <a href="https://baike.baidu.com/item/%E6%A1%91%E5%8F%B6/695442?fromModule=lemma_search-box">
        <img src="./img/桑叶.jpeg" alt="" height="46px" width="70px">
        <p style="color: black">桑叶</p>
    </a>
</li>
</ul>
</div>
<div class="adv-img">
    <a href="./sydwc.jsp">
        <img src="./img/端午茶.png" alt="">
    </a>
</div>
<div class="adv-img">
    <a href="./syxc.jsp">
        <img src="./img/绿茶.png" alt="">
    </a>
</div>
<div class="adv-img">
    <a href="./syhc.jsp">
        <img src="./img/红茶.png" alt="">
    </a>
</div>
</div>
</div>
<!--广告结束-->
<!--主体开始-->
<div class="container">
    <div class="wrap">
        <!--手机开始-->
        <div class="phone">
            <div class="home-banner-box">
                <a href="#">
                    <img src="./img/中图.jpg" alt="" height="120px" width="1220px">
                </a>
            </div>
            <h2 class="title">所售茶类:
                <a href="manager/bookServlet?action=listByType" class="more">查看更多 <i class="iconfont">&#xe616;</i></a>
            </h2>

            <div class="home-box">
                <div class="home-box-left home-box-left1">
                    <a href="#">
                        <img src="./img/左大.png" alt="" >
                    </a>
                </div>
                <div class="home-box-right">
                    <ul>
                        <li class="items">
                            <a href="https://baike.baidu.com/link?url=S_qoeivG8CYhInuob3LnC4on_5bImIFnC4JdBDU2nlXTQORIi4pGPbifjEVxpK_EVInsa8VNV5IhtIF3UYNonEvnUzmRTx7Y8mAcBcryO1nuwYn7mTzKNicTmtIZKncN">
                                <img src="./img/普洱茶.png" alt="" class="img1">
                                <p class="name2">普洱茶</p>
                                <p class="desc2">清热化痰、消食理气</p>
                                <p class="price2">2238元
<%--                                    <del>2238元</del>--%>
                                </p>
                            </a>
                        </li>
                        <li class="items">
                            <a href="https://baike.baidu.com/item/%E4%B9%8C%E9%BE%99%E8%8C%B6/1072?fromModule=lemma_search-box">
                                <img src="./img/乌龙茶.png" alt="" class="img1">
                                <p class="name2">乌龙茶</p>
                                <p class="desc2">
                                    美容养颜、预防心血管疾病</p>
                                <p class="price2">89元
<%--                                    <del>89元</del>--%>
                                </p>
                            </a>
                        </li>
                        <li class="items">
                            <a href="https://baike.baidu.com/item/%E8%A5%BF%E6%B9%96%E9%BE%99%E4%BA%95/412851?fromModule=lemma-qiyi_sense-lemma">
                                <img src="./img/西湖龙井.png" alt="" class="img1">
                                <p class="name2">西湖龙井</p>
                                <p class="desc2">降低血压、延缓衰老</p>
                                <p class="price2">150元
<%--                                    <del>150元</del>--%>
                                </p>
                            </a>
                        </li>
                        <li class="items">
                            <a href="https://baike.baidu.com/item/%E6%AF%9B%E5%BB%BA%E8%8D%89?fromtitle=%E6%AF%9B%E5%B0%96%E8%8C%B6&fromid=6751338&fromModule=lemma_search-box">
                                <img src="./img/毛尖.png" alt="" class="img1">
                                <p class="name2">毛尖茶</p>
                                <p class="desc2">醒脑提神、保护眼睛、降低血压</p>
                                <p class="price2">88元
<%--                                    <del>88元</del>--%>
                                </p>
                            </a>
                        </li>
                        <li class="items">
                            <a href="https://baike.baidu.com/item/%E9%93%81%E8%A7%82%E9%9F%B3/5315?fromModule=lemma_search-box">
                                <img src="./img/铁观音.png" alt="" class="img1">
                                <p class="name2">铁观音</p>
                                <p class="desc2">防治龋齿、减肥瘦身</p>
                                <p class="price2">358元
<%--                                    <del>358元</del>--%>
                                </p>
                            </a>
                        </li>
                        <li class="items">
                            <a href="https://baike.baidu.com/item/%E7%A2%A7%E8%9E%BA%E6%98%A5/2682?fromModule=lemma_search-box">
                                <img src="./img/碧螺春.png" alt="" class="img1">
                                <p class="name2">碧螺春</p>
                                <p class="desc2">
                                    强心解痉、提神益思、辅助减肥</p>
                                <p class="price2">238元
<%--                                    <del>238元</del>--%>
                                </p>
                            </a>
                        </li>
                        <li class="items">
                            <a href="https://baike.baidu.com/item/%E5%BA%90%E5%B1%B1%E4%BA%91%E9%9B%BE%E8%8C%B6?fromModule=lemma_search-box">
                                <img src="./img/庐山云雾茶.png" alt="" class="img1">
                                <p class="name2">庐山云雾茶</p>
                                <p class="desc2">提神醒脑、增强代谢</p>
                                <p class="price2">150元
<%--                                    <del>150元</del>--%>
                                </p>
                            </a>
                        </li>
                        <li class="items">
                            <a href="https://baike.baidu.com/item/%E5%AE%89%E5%90%89%E7%99%BD%E8%8C%B6?fromModule=lemma_search-box">
                                <img src="./img/安吉白茶.png" alt="" class="img1">
                                <p class="name2">安吉白茶</p>
                                <p class="desc2">保护神经细胞、降三高、镇静</p>
                                <p class="price2">435元
<%--                                    <del>435元</del>--%>
                                </p>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>

        </div>

        <!--视频开始-->
        <div class="video">
            <h2 class="title">松阳文旅:
                <a href="#" class="more">查看全部 <i class="iconfont">&#xe616;</i></a>
            </h2>
            <div class="video-box">
                <ul>
                    <li class="video-items">
                        <a href="./indexshcl.jsp">
                            <div class="video-img">
                                <img src="./img/松阳文旅1.png" alt="">
                            </div>
                            <p>守护村落</p>
                        </a>
                    </li>
                    <li class="video-items">
                        <a href="./indexhpsy.jsp">
                            <div class="video-img">
                                <img src="./img/松阳文旅3.png" alt="">
                            </div>
                            <p>航拍松阳</p>
                        </a>
                    </li>
                    <li class="video-items">
                        <a href="./indexwlkc.jsp">
                            <div class="video-img">
                                <img src="./img/松阳文旅2.png" alt="">
                            </div>
                            <p>围炉考茶</p>
                        </a>
                    </li>
                    <li class="video-items">
                        <a href="./indexgzsy.jsp">
                            <div class="video-img">
                                <img src="./img/松阳文旅4.png" alt="">
                            </div>
                            <p>古镇松阳</p>
                        </a>
                    </li>

                </ul>
            </div>
            <div class="video-box">
                <ul>
                    <li class="video-items">
                        <a href="https://www.tljcf.cn/13782.html">
                            <div class="video-img">
                                <video src="./img/视频1.mp4" width="296px" height="180px" controls="controls"></video>
                            </div>
                            <p>在松阳，遇见山水灵动、田园牧歌的美好！</p>
                        </a>
                    </li>
                    <li class="video-items">
                        <a href="https://m.thepaper.cn/baijiahao_19160598">
                            <div class="video-img">
                                <video src="./img/视频4.mp4" width="296px" height="180px" controls="controls"></video>

                            </div>
                            <p>在松阳，遇见浪漫星空的美好！</p>
                        </a>
                    </li>
                    <li class="video-items">
                        <a href="https://mp.weixin.qq.com/s?__biz=MzAwNjcxODMxNQ==&mid=2650934406&idx=3&sn=0b33a39ca0cb56725c46df823993bf61&chksm=80ffba82b7883394b2a60f13799951811ea151f9f5be858777a7a2ee00d17506b6a6949fbde3&scene=27">
                            <div class="video-img">
                                <video src="./img/视频3.mp4" width="296px" height="180px" controls="controls"></video>

                            </div>
                            <p>松阳“新农人”</p>
                        </a>
                    </li>
                    <li class="video-items">
                        <a href="https://mp.weixin.qq.com/s?__biz=MzAwNjcxODMxNQ==&mid=2650934406&idx=3&sn=0b33a39ca0cb56725c46df823993bf61&chksm=80ffba82b7883394b2a60f13799951811ea151f9f5be858777a7a2ee00d17506b6a6949fbde3&scene=27">
                            <div class="video-img">
                                <video src="./img/视频2.mp4" width="296px" height="180px" controls="controls"></video>

                            </div>
                            <p>探秘松阳非遗宝藏</p>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
        <!--视频结束-->
    </div>
</div>
<!--主体结束-->
<!--页脚开始-->
<div class="footer">
    <div class="site-footer">
        <div class="wrap">
            <div class="footer-service">
                <ul>
                    <li>
                        <a href="#">
                            <span>无条件退货</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span>全国包邮</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span>假一罚十</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="iconfont">&#xe606;</i>
                            <span>15天免费换货</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span>品质保证</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="footer-links">
                <ul>
                    <li>
                        帮助中心
                    </li>
                    <li>
                        <a href="wrong.jsp">选购指南</a>
                    </li>
                    <li>
                        <a href="wrong.jsp">服务指导</a>
                    </li>
                    <li>
                        <a href="wrong.jsp">账户管理</a>
                    </li>
                </ul>
                <ul>
                    <li>
                        服务中心
                    </li>
                    <li>
                        <a href="wrong.jsp">申请售后</a>
                    </li>
                    <li>
                        <a href="wrong.jsp">售后政策</a>
                    </li>
                    <li>
                        <a href="wrong.jsp">订单查询</a>
                    </li>
                </ul>
                <ul>
                    <li>
                        关于茶颜观舍
                    </li>
                    <li>
                        <a href="message.jsp">了解茶颜观舍</a>
                    </li>
                    <li>
                        <a href="message.jsp">加入茶颜观舍</a>
                    </li>
                    <li>
                        <a href="message.jsp">投资者证书</a>
                    </li>
                </ul>
                <ul>
                    <li>
                        关注我们
                    </li>
                    <li>
                        <a href="wrong.jsp">新浪微博</a>
                    </li>
                    <li>
                        <a href="wrong.jsp">官方微信</a>
                    </li>
                    <li>
                        <a href="wrong.jsp">联系我们</a>
                    </li>
                </ul>

                <div class="contact">
                    <p class="tel">电话：19852192090</p>
                    <p class="time">工作时间：8:00-18:00</p>
                    <a href="#" class="kefu">
                        <i class="iconfont">&#xe710;</i>
                        人工客服
                    </a>
                    <p class="follow">
                        关注茶颜观舍：
                        <span class="wb"></span>
                        <span class="wx"></span>
                        <img src="./img/二维码.png" alt="" class="wx-img">
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="site-info">
        <div class="wrap">
            <img src="images/slogan2020.png" alt="" class="slogan">
        </div>
    </div>
</div>
<!--页脚结束-->

</body>
</html>
