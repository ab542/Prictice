<%--
  Created by IntelliJ IDEA.
  User: 王说
  Date: 2023/2/8
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>售后客户调查问卷</title>
    <style>
        *{
            padding: 0;
            margin: 0;
        }

        html,body{
            height: 100%;
        }

        .box1{
            width:1050px;
            height:250%;
            background: white;
            float: left;
        }

        .box2{
            height: 250%;
            background:white;
            margin-left: 200px;
        }
        p{text-indent: 2em;}
        .left,.right{
            width: 100px;
            height: 100%;
        }

        .left{
            background:white;
            float: left;
        }
        .center{
            width: 400px;
            height: 100%;
            background: white;
        }
        textarea{
            width: 400px;
            height: 500px;
        }
    </style>
</head>
<body>
<div class="box1">
    <h1 align="center">售后客户调查问卷</h1>
    <h2>亲爱的茶友：</h2>
    <p>您好,我们是茶颜观舍团队市场调研组,为了能更好地了解顾客的日常喝茶喜好,从而更好地为爱茶人提供更优质的服务,请您百忙中给我们几分钟时间，帮忙填写这份问卷。为了感谢您的配合,我们为填写完毕的粉丝设有20元的红包或者一份茶礼的奖品供您选择，请您在提交问卷后，选择分享至新浪微博，并@茶颜观舍 ，微博发布成功后您可私信@茶颜观舍 备注您想要的礼品（二选一），一个微博帐号仅限换一样礼品～
        <br>&nbsp;&nbsp;►填写需知：划横线处请直接填写文字，选择性问题请将答案序号填写于括弧内。
        <br>&nbsp;&nbsp;►私信备注：请您在将问卷结果分享至微博之后，私信@茶颜观舍，备注您想要的礼品（二选一），以便我们能第一时间将您的礼品发放给您～</p>
    <div class="left" align="left">
        <img src="./imgs/柱子.png" alt="" width="150px">
        <img src="./imgs/柱子.png" alt="" width="150px">
        <img src="./imgs/柱子.png" alt="" width="150px">
    </div>
    <div class="center">
        <div>1.你对我店产品满意度如何？*</div>

        <div>
            <input type="radio" name="a">非常满意
        </div>
        <div>
            <input type="radio" name="a">满意
        </div>
        <div>
            <input type="radio" name="a">一般
        </div>
        <div>
            <input type="radio" name="a">不满意
        </div>

        <div>2.您平常一般会在什么地方喝茶？*</div>

        <div>
            <input type="radio" name="b">办公室
        </div>
        <div>
            <input type="radio" name="b">咖啡厅
        </div>
        <div>
            <input type="radio" name="b">茶馆
        </div>
        <div>
            <input type="radio" name="b">家里
        </div>

        <div>3.您平时喜欢喝什么茶（可多选）？</div>

        <div>
            <input type="checkbox" name="A" id="1">
            <label for="1">绿茶</label>
            <input type="checkbox" name="A" id="2">
            <label for="2">红茶</label>
            <input type="checkbox" name="A" id="3">
            <label for="3">端午茶</label>
            <input type="checkbox" name="A" id="4">
            <label for="4">普洱茶</label>
            <input type="checkbox" name="A" id="5">
            <label for="5">毛尖</label>
            <input type="checkbox" name="A" id="6">
            <label for="6">铁观音</label>
            <input type="checkbox" name="A" id="7">
            <label for="7">龙井</label>
            <input type="checkbox" name="A" id="8">
            <label for="8">白茶</label>
            <input type="checkbox" name="A" id="9">
            <label for="9">菊花茶</label>
            <input type="checkbox" name="A" id="10">
            <label for="10">茉莉花茶</label>
            <input type="checkbox" name="A" id="11">
            <label for="11">乌龙茶</label>
        </div>

        <div>4.您一般会在什么情况下喝茶？*</div>

        <div>
            <input type="radio" name="aaa">情侣约会时
        </div>
        <div>
            <input type="radio" name="aaa">朋友聚会时
        </div>
        <div>
            <input type="radio" name="aaa">独自一人时
        </div>
        <div>
            <input type="radio" name="aaa">接待客人时
        </div>
        <div>
            <input type="radio" name="aaa">其它
            <input type="text">
        </div>

        <div>5.您买茶时，最关注的是哪方面？*</div>

        <div>
            <input type="radio" name="d">品牌
        </div>
        <div>
            <input type="radio" name="d">价格
        </div>
        <div>
            <input type="radio" name="d">包装
        </div>
        <div>
            <input type="radio" name="d">原产地认证
        </div>
        <div>
            <input type="radio" name="aaa">其它
            <input type="text">
        </div>

        <div>6.您平常买茶最注重茶的什么功效（可多选）？*</div>

        <div>
            <input type="checkbox" name="B" id="1">
            <label for="1">减肥瘦身</label>
            <input type="checkbox" name="B" id="2">
            <label for="2">美容养颜</label>
            <input type="checkbox" name="B" id="3">
            <label for="3">降三高</label>
            <input type="checkbox" name="B" id="4">
            <label for="4">醒酒护肝</label>
            <input type="checkbox" name="B" id="5">
            <label for="5">解压提神</label>
            <input type="checkbox" name="B" id="6">
            <label for="6">安神助眠</label>
        </div>

        <div>7.您买完茶后，最希望商家为您提供哪点附加服务？*</div>

        <div>
            <input type="radio" name="e">优质的售后服务
        </div>
        <div>
            <input type="radio" name="e">配套的小礼品赠送
        </div>
        <div>
            <input type="radio" name="e">提供试泡装
        </div>

        <div>8.您平常一般用什么方式泡茶？*</div>

        <div>
            <input type="radio" name="f">功夫茶艺式
        </div>
        <div>
            <input type="radio" name="f">简单茶具冲泡式
        </div>
        <div>
            <input type="radio" name="f">单个大杯冲泡式
        </div>

        <div>9.您平时买茶一般买哪个价位的茶？*</div>

        <div>
            <input type="radio" name="g">50元以下
        </div>
        <div>
            <input type="radio" name="g">50－100元
        </div>
        <div>
            <input type="radio" name="g">100－200元
        </div>
        <div>
            <input type="radio" name="g">200－300元
        </div>
        <div>
            <input type="radio" name="g">300元以上
        </div>

        <div>10.现在流行推广中国古典文化，觉得应该大力推广茶文化吗？*</div>

        <div>
            <input type="radio" name="h"> 应该，中国茶文化源远流长
        </div>
        <div>
            <input type="radio" name="h"> 犹豫，不清楚需要怎么推广
        </div>
        <div>
            <input type="radio" name="h"> 不应该，觉得没必要浪费时间
        </div>

        <div>11.您最喜欢哪种口感的茶？*</div>

        <div>
            <input type="radio" name="i">传统口味
        </div>
        <div>
            <input type="radio" name="i">果香味
        </div>
        <div>
            <input type="radio" name="i">花香味
        </div>
        <div>
            <input type="radio" name="i">其它口味
            <input type="text">
        </div>

        <div>12.您最喜欢什么样的包装材质？*</div>

        <div>
            <input type="radio" name="j">纸盒
        </div>
        <div>
            <input type="radio" name="j">铁盒
        </div>
        <div>
            <input type="radio" name="j">竹罐
        </div>
        <div>
            <input type="radio" name="j">陶瓷
        </div>
        <div>
            <input type="radio" name="i">其它材质
            <input type="text">
        </div>

        <div>13.您平时一般会到什么地方买茶？*</div>

        <div>
            <input type="radio" name="k">超市和商场
        </div>
        <div>
            <input type="radio" name="k">茶叶专卖店
        </div>
        <div>
            <input type="radio" name="k">网络购物平台（如淘宝、京东等）
        </div>
        <div>
            <input type="radio" name="k">临时小摊贩
        </div>
        <div>
            <input type="radio" name="k">茶叶批发市场
        </div>
        <div>
            <input type="radio" name="k">品牌官网
        </div>

        <div>14.对于网购茶叶，您最担心什么问题?*</div>

        <div>
            <input type="radio" name="l">品质的真实性
        </div>
        <div>
            <input type="radio" name="l">安全与卫生
        </div>
        <div>
            <input type="radio" name="l">配送快慢
        </div>
        <div>
            <input type="radio" name="l">售后服务
        </div>
        <div>
            <input type="radio" name="l">卖家信誉
        </div>
        <div>
            <input type="radio" name="i">其它原因
            <input type="text">
        </div>

        <div>15.您对哪些促销形式比较感兴趣（可多选）？*</div>

        <div>
            <input type="checkbox" name="C" id="1">
            <label for="1">免运费</label>
            <input type="checkbox" name="C" id="2">
            <label for="2">现金折扣</label>
            <input type="checkbox" name="C" id="3">
            <label for="3">送茶具</label>
            <input type="checkbox" name="C" id="4">
            <label for="4">送茶样</label>
            <input type="checkbox" name="C" id="5">
            <label for="5">送茶食品</label>
            <input type="checkbox" name="C" id="6">
            <label for="6">送优惠券</label>
        </div>

        <div>16.请问尚客茶业最吸引您购买的原因是哪一点（可多选）？*</div>

        <div>
            <input type="checkbox" name="D" id="1">
            <label for="1">茶叶品类</label>
            <input type="checkbox" name="D" id="2">
            <label for="2">产品价格</label>
            <input type="checkbox" name="D" id="3">
            <label for="3">产品品质</label>
            <input type="checkbox" name="D" id="4">
            <label for="4">产品包装</label>
            <input type="checkbox" name="D" id="5">
            <label for="5">商家服务</label>
            <input type="checkbox" name="D" id="6">
            <label for="6">页面设计</label>
        </div>
        <button type="submit" value="submit">提交</button>
        <button type="reset" value="reset">重置</button>
    </div>
</div>

<div class="box2">
    <h1 align="center">顾客意见回执表</h1>
    <br>
    <br>
    <div align="center">
        <textarea name="" id="" cols="10" rows="10" placeholder="请输入您对我们的宝贵意见"></textarea>
    </div>
    <button type="submit" value="submit">提交</button>
    <button type="reset" value="reset">重置</button>
    <div>
        <div align="center"><h1>上传文件说明</h1></div>

        <div>
            上传文件
            <input type="file" name="" id="">
        </div>
        <button type="submit" value="submit">提交</button>
        <button type="reset" value="reset">重置</button>
    </div>
</div>
</body>
</html>
