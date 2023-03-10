
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
			<li><a href="#">资讯</a><span>|</span></li>
			<li><a href="#">产品库</a><span>|</span></li>
			<li><a href="#">经营商</a><span>|</span></li>
			<li><a href="#">测评</a><span>|</span></li>
			<li><a href="#">报价</a><span>|</span></li>
			<li><a href="#">知识</a><span>|</span></li>
			<li><a href="#">加盟</a><span>|</span></li>
			<li><a href="#">百科</a><span>|</span></li>
			<li><a href="#">问答</a><span>|</span></li>

		</ul>
		<ul class="header-right">
			<li><a href="">欢迎会员</a><span></span></li>
			<li><a href="">${sessionScope.user.username}</a><span>|</span></li>
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
				<img src="img/logo.jpg" alt="" width="165" height="56">
			</a>
		</div>
		<div class="nav-bar">
			<ul>
				<li>
					<a href="#">常识</a>
				</li>
				<li>
					<a href="#">功效</a>
				</li>
				<li><a href="#">喝法</a></li>
				<li><a href="#">茶具</a></li>
				<li><a href="#">存储</a></li>
				<li><a href="#">茶艺</a></li>
				<li><a href="#">文献</a></li>
				<li><a href="#">展会</a></li>
				<li><a href="#">视频</a></li>
			</ul>
		</div>
		<div class="search">
			<input type="text" id="pn_input">
			<a href="" class="iconfont" id="searchPageBtn">&#xe63d;</a><!--搜索按钮-->
			<div class="search-list">
				<a href="#">端午茶</a>
				<a href="#">绿茶</a>
				<a href="#">红茶</a>
				<a href="#">普洱茶</a>
				<a href="#">乌龙茶</a>
				<a href="#">西湖龙井</a>
				<a href="#">毛尖茶</a>
				<a href="#">铁观音</a>
				<a href="#">碧落春</a>
				<a href="#">庐山云雾茶</a>
				<a href="#">安吉白茶</a>
			</div>
			<script type="text/javascript">
				$(function () {
					$("#searchPageBtn").click(function () {
						//跳到指定的页码
						let val = $("#pn_input").val();
						location.href="http://www.baidu.com"+val;
					})
				})
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
					<a href="#">国家政策<i class="iconfont">&#xe658;</i></a>
				</li>
				<li>
					<a href="#">产地介绍<i class="iconfont">&#xe658;</i></a>
				</li>
				<li>
					<a href="#">历史渊源<i class="iconfont">&#xe658;</i></a>
				</li>
				<li><a href="#">传统匠人<i class="iconfont">&#xe658;</i></a></li>
				<li><a href="#">独门配方<i class="iconfont">&#xe658;</i></a></li>
				<li><a href="#">产品服务<i class="iconfont">&#xe658;</i></a></li>
				<li><a href="#">品牌代言<i class="iconfont">&#xe658;</i></a></li>
				<li><a href="#">带动就业<i class="iconfont">&#xe658;</i></a></li>
				<li><a href="#">茶友圈<i class="iconfont">&#xe658;</i></a></li>
				<li><a href="#">活动<i class="iconfont">&#xe658;</i></a></li>
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
<p style="font-size: 20px;">我们的配方</p>
</a>
</li>
<li class="row col">
	<a href="">
		<img src="./img/折耳根.jpeg" alt="" height="46px" width="70px">
		<p>折耳根</p>
	</a>
</li>
<li class="row">
	<a href="">
		<img src="./img/石菖蒲.jpeg" alt="" height="46px" width="70px">
		<p>石菖蒲</p>
	</a>
</li>
<li class="col">
	<a href="">
		<img src="./img/枯木.jpeg" alt="" height="46px" width="70px">
		<p>苦木</p>
	</a>
</li>
<li class="col">
	<a href="">
		<img src="./img/艾草.jpeg" alt="" height="46px" width="70px">
		<p>艾草</p>
	</a>
</li>
<li>
	<a href="">
		<img src="./img/桑叶.jpeg" alt="" height="46px" width="70px">
		<p>桑叶</p>
	</a>
</li>
</ul>
</div>
<div class="adv-img">
	<a href="#">
		<img src="./img/端午茶.png" alt="">
	</a>
</div>
<div class="adv-img">
	<a href="#">
		<img src="./img/绿茶.png" alt="">
	</a>
</div>
<div class="adv-img">
	<a href="#">
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
							<a href="#">
								<img src="./img/普洱茶.png" alt="" class="img1">
								<p class="name2">普洱茶</p>
								<p class="desc2">清热化痰、消食理气</p>
								<p class="price2">1168元起
									<del>2238元</del>
								</p>
							</a>
						</li>
						<li class="items">
							<a href="#">
								<img src="./img/乌龙茶.png" alt="" class="img1">
								<p class="name2">乌龙茶</p>
								<p class="desc2">
									美容养颜、预防心血管疾病</p>
								<p class="price2">79元起
									<del>89元</del>
								</p>
							</a>
						</li>
						<li class="items">
							<a href="#">
								<img src="./img/西湖龙井.png" alt="" class="img1">
								<p class="name2">西湖龙井</p>
								<p class="desc2">降低血压、延缓衰老</p>
								<p class="price2">139元起
									<del>150元</del>
								</p>
							</a>
						</li>
						<li class="items">
							<a href="#">
								<img src="./img/毛尖.png" alt="" class="img1">
								<p class="name2">毛尖茶</p>
								<p class="desc2">醒脑提神、保护眼睛、降低血压</p>
								<p class="price2">78元起
									<del>88元</del>
								</p>
							</a>
						</li>
						<li class="items">
							<a href="#">
								<img src="./img/铁观音.png" alt="" class="img1">
								<p class="name2">铁观音</p>
								<p class="desc2">防治龋齿、减肥瘦身</p>
								<p class="price2">318元起
									<del>358元</del>
								</p>
							</a>
						</li>
						<li class="items">
							<a href="#">
								<img src="./img/碧螺春.png" alt="" class="img1">
								<p class="name2">碧螺春</p>
								<p class="desc2">
									强心解痉、提神益思、辅助减肥</p>
								<p class="price2">218元起
									<del>238元</del>
								</p>
							</a>
						</li>
						<li class="items">
							<a href="#">
								<img src="./img/庐山云雾茶.png" alt="" class="img1">
								<p class="name2">庐山云雾茶</p>
								<p class="desc2">提神醒脑、增强代谢</p>
								<p class="price2">138元起
									<del>150元</del>
								</p>
							</a>
						</li>
						<li class="items">
							<a href="#">
								<img src="./img/安吉白茶.png" alt="" class="img1">
								<p class="name2">安吉白茶</p>
								<p class="desc2">保护神经细胞、降三高、镇静</p>
								<p class="price2">328元起
									<del>435元</del>
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
						<a href="#">
							<div class="video-img">
								<img src="./img/松阳文旅1.png" alt="">
							</div>
							<p>守护村落</p>
						</a>
					</li>
					<li class="video-items">
						<a href="#">
							<div class="video-img">
								<img src="./img/松阳文旅3.png" alt="">
							</div>
							<p>航拍松阳</p>
						</a>
					</li>
					<li class="video-items">
						<a href="#">
							<div class="video-img">
								<img src="./img/松阳文旅2.png" alt="">
							</div>
							<p>围炉考茶</p>
						</a>
					</li>
					<li class="video-items">
						<a href="#">
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
						<a href="#">
							<div class="video-img">
								<video src="./img/视频1.mp4" width="296px" height="180px" controls="controls"></video>
							</div>
							<p>在松阳，遇见山水灵动、田园牧歌的美好！</p>
						</a>
					</li>
					<li class="video-items">
						<a href="#">
							<div class="video-img">
								<video src="./img/视频4.mp4" width="296px" height="180px" controls="controls"></video>

							</div>
							<p>在松阳，遇见浪漫星空的美好！</p>
						</a>
					</li>
					<li class="video-items">
						<a href="#">
							<div class="video-img">
								<video src="./img/视频3.mp4" width="296px" height="180px" controls="controls"></video>

							</div>
							<p>松阳“新农人”</p>
						</a>
					</li>
					<li class="video-items">
						<a href="#">
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
							<i class="iconfont">&#xe606;</i>
							<span>15天免费换货</span>
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
							<i class="iconfont">&#xe606;</i>
							<span>15天免费换货</span>
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
							<i class="iconfont">&#xe606;</i>
							<span>15天免费换货</span>
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
						<a href="#">选购指南</a>
					</li>
					<li>
						<a href="#">服务指导</a>
					</li>
					<li>
						<a href="#">账户管理</a>
					</li>
				</ul>
				<ul>
					<li>
						服务中心
					</li>
					<li>
						<a href="#">申请售后</a>
					</li>
					<li>
						<a href="#">售后政策</a>
					</li>
					<li>
						<a href="#">订单查询</a>
					</li>
				</ul>
				<ul>
					<li>
						关于且徐行
					</li>
					<li>
						<a href="#">了解且徐行</a>
					</li>
					<li>
						<a href="#">加入且徐行</a>
					</li>
					<li>
						<a href="#">投资者证书</a>
					</li>
				</ul>
				<ul>
					<li>
						关注我们
					</li>
					<li>
						<a href="#">新浪微博</a>
					</li>
					<li>
						<a href="#">官方微信</a>
					</li>
					<li>
						<a href="#">联系我们</a>
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
						关注且徐行：
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
