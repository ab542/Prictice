<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style type="text/css">
#container{width:900px;height:770px;margin:0 auto;}
#header{width:100%;height:90px;}

#content{width:100%;height:470px;margin-bottom:5px;background:#fff;}
#left{width:600px;height:470px;float:left;background:#fff;}
#con_welcome{width:600px;height:200px;background:#fff;margin-top:5px}
#con_bott{width:600px;height:260px;background:#fff;margin-top:5px}
#activity{width:280px;height:250px;background:#fff;float:left;margin:5px 5px;}
#classnews{width:280px;height:250px;background:#fff;float:right;margin:5px 5px;border-left:2px dotted #09C;}
#right{width:300px;height:470px;float:right;background:#fff;}
#blackboard{width:286px;height:260px;background:#FF9;border:2px double #F90;
margin-top:5px;padding:5px;}
#schedule{width:300px;height:160px;background:#fff;margin-top:5px;}
#bottom{width:100%;height:50px;}
#logo{height:70px;width:300px;background:#fff;float:left;padding-top:20px; }
#menu{height:70px;width:550px;background:#fff;float:right;}
#menu ul{list-style:none;margin:0px;padding:0 20px;color:#272727;}

#menu ul li{float:left;padding:10px;margin-top:20px;font-size:12px;}
#menu a:link{text-decoration:none;color:#272727; font-weight:bold;}
#menu a:hover{color:#517208;}
#menu a:active{color:#517208;}
#content h1{
color:#007b3b;padding-bottom:15px;font-size:20px;}
#content h2{
color:#066;padding-bottom:15px;font-size:12px;}
#content span.second_heading{
color:#0a356d;font-weight:bold;display:block;padding-bottom:15px;font-size:13px;}
#content p{width:550px;text-indent:26px;padding-bottom:20px;color:#9b9875;line-height:18px;}
#activity img{padding-right:10px;padding-bottom:10px;width:90px;height:50px;}
.news-title{font-size:12px;line-height:0.5;color:#090;}
#classnews p{font-size:12px;line-height:0.8;color:#666;width:260px;}
a{text-decoration:none;color:#333;}
.right-title{font-size:12px;font-weight:bold;line-height:0.5;color:#03C;}
#blackboard p{font-size:12px;line-height:1.5;color:#999;width:280px;}
.kcb{padding:3px 5px;height:111px;margin-top:20px;font-size:12px;border:5px double #FC0;}
#kecheng tr,td,th{border:1px solid #F90;}
</style>
</head>
<body>
<div id=container>
    <div id=header>
       <div id=logo><img src="./img/logo.jpg" height="200px"></div>
       <div id=menu>
       <ul>
           <li><a href="index.jsp">首页</a></li>
           <li><a href="#">资讯</a></li>
           <li><a href="#">产品库</a></li>
           <li><a href="#">经营商</a></li>
           <li><a href="#">测评</a></li>
           <li><a href="#">报价</a></li>
           <li><a href="#">知识</a></li>
           <li><a href="#">加盟</a></li>
           <li><a href="#">百科</a></li>
           <li><a href="#">问答</a></li>
        </ul>
        </div>
    </div>
    <div id=banner></div>
    <div id=content>
       <div id="left">
         <div id="con_welcome">
            <h1>欢迎您访问我们的茶颜观舍网站</h1>
            <h2>茶叶领域的引领者&nbsp&nbsp绿水青山的践行者</h2>
            <p>茶颜观舍是一款在互联网思维下，借助自媒体网络，电商平台，通过开发互联网网页平台，微信小程序APP，以多方联合、多渠道宣传推动当地形成完备的茶产业链，助力茶文化的发展，最终达到振兴乡村的文化宣传平台。</p>
            <a href="#"><img src="./img/开通会员.png" width="30" height="30"/></a>
         </div>
         <div id="con_bott">
            <div id="activity">
                <h1>网站活动</h1>
        	    <span class="second_heading">Website Active</span>
                <a href="#"><img src="./img/活动1.jpg" /></a>
                <a href="#"><img src="./img/活动2.jpg" /></a>
                <a href="#"><img src="./img/活动3.jpg" /></a>
                <a href="#"><img src="./img/活动4.jpg" /></a>
            </div>      
            <div id=classnews>
            <h1>网站新闻</h1>
        	<span class="second_heading">Website News</span>
           <img src="./img/全球跨境.png" align="left" hspace="10" height="15" width="15"/>
            <span class="news-title"><b><a href="#">关于双十一促销活动的通知</a></b></span>
         <p><a href="#">双11百亿元品牌优惠券,马上就抢...</a></p>  
          <img src="./img/全球跨境.png" hspace="10" align="left" height="15" width="15"/>
          <span class="news-title"><b> <a href="#">新品小罐茶的售卖</a></b></span>
         <p><a href="#">物流速度很快,包装精美,比平时便宜不少...</a> </p>
           </div>
         </div>
        </div>
        <div id="right">
           <div id=blackboard>
           <h1>公告栏</h1>
          <marquee direction="up" height="190" onmouseover="this.stop()" onmouseout="this.start()">
          <div class="right-title"><b><a href="#">关于双十一促销活动的通知 </a></b></div>
         <p><a href="#">双11百亿元品牌优惠券,11月11日折后再优惠,马上就抢。支持喜爱品牌赢千元大奖11.11购物狂欢节活动启动...</a></p>
         <div class="right-title"><b><a href="#">新品小罐茶的售卖</a></b></div>
         <p><a href="#">物流速度很快,包装精美,搞活动卖的,比平时便宜不少,小罐茶多泡装还是挺实惠的。这款安吉白茶汤色清亮,淡淡的清香,实数好茶! 单罐装 
         </a></p>
         </marquee>
           
           </div>
           <div id=schedule>
           <h4 align=center>工作时间表</h4>
           <div class="kcb">
<table id=kecheng width=280>
             <tr>
               <th>星期</th>
               <th>一</th>
               <th>二</th>
               <th>三</th>
               <th>四</th>
               <th>五</th>
             </tr>
             <tr>
               <td rowspan="1" bgcolor="#F9EDDD" align="center">上午</td>
               <td class="rightborder">9：40-11：40</td>
               <td class="rightborder">8：00-11：40</td>
               <td class="rightborder">8：00-9：40</td>
               <td class="rightborder">&nbsp;</td>
               <td class="rightborder">9：40-11：40</td>
             </tr>
             <tr>
               <td rowspan="1" bgcolor="#F9EDDD" align="center">下午</td>
               <td class="rightborder">13：30-17：00</td>
               <td class="rightborder">&nbsp;</td>
               <td class="rightborder">15：20-17：00</td>
               <td class="rightborder">13：30-17：00</td>
               <td class="rightborder">&nbsp;</td>
             </tr>
           </table>
         </div> 
           </div>
        </div> 
        </div> 
    <div id=bottom>
    </div>
</div>
</body>
</html>
