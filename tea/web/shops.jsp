<%--
  Created by IntelliJ IDEA.
  User: 王说
  Date: 2023/2/8
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>产品库</title>
    <style>
        * {
            margin: 0px;
            padding: 0px;
            background-color: #dff2da;
        }
        .box {
            width: 300px;
            height: 450px;
            background-color: #fff;
            margin: 100px auto;
        }
        .box img {
            width: 100%;
            /*  与盒子宽度一样宽 */
            height: 270px;
        }
        .box p {
            background-color: #fff;
        }
        .review {
            height: 70px;
            font-size: 14px;
            /*     因为这个段落没有width属性 所以padding不会撑开盒子的宽度 */
            padding: 0 28px;
            margin-top: 30px;
        }
        .appraise {
            background-color: #fff;
            font-size: 12px;
            color: #aeafad;
            padding: 0 28px;
            margin-top: 10px;
        }
        .info {
            font-size: 14px;
            margin-top: 10px;
            background-color: #fff;
            padding: 0 28px;
        }
        .info h4 {
            background-color: #fff;
            display: inline-block;
            /*     变成行内块 让span放置为其右边 */
            font-weight: 400;
            color: #000000;
        }

        .info a {
            background-color: #fff;
            text-decoration: none;
            color: #000000;
        }
        .info span {
            background-color: #fff;
            color: #fa7211;
        }
        .info em {
            margin-left: 90px;
            color: #e6e6ec;
            font-style: normal;
        }
    </style>
    <head>
        <div class="box">
            <img src="./imgs/普洱茶.png" alt="">
            <p class="review">清热化痰、消食理气</p>
            <div class="appraise">来自于 t52155567 的评价</div>
            <div class="info">
                <h4> <a href="https://baike.baidu.com/link?url=S_qoeivG8CYhInuob3LnC4on_5bImIFnC4JdBDU2nlXTQORIi4pGPbifjEVxpK_EVInsa8VNV5IhtIF3UYNonEvnUzmRTx7Y8mAcBcryO1nuwYn7mTzKNicTmtIZKncN">普洱茶</a></h4>
                <em>|</em>
                <span> 1168元起</span>
            </div>
        </div>
        <div class="box">
            <img src="./imgs/乌龙茶.png" alt="">
            <p class="review">美容养颜、预防心血管疾病</p>
            <div class="appraise">来自于 t52155567 的评价</div>
            <div class="info">
                <h4> <a href="https://baike.baidu.com/item/%E4%B9%8C%E9%BE%99%E8%8C%B6/1072?fromModule=lemma_search-box"></a>乌龙茶</h4>
                <em>|</em>
                <span> 79元起</span>
            </div>
        </div>
        <div class="box">
            <img src="./imgs/西湖龙井.png" alt="">
            <p class="review">降低血压、延缓衰老</p>
            <div class="appraise">来自于 t52155567 的评价</div>
            <div class="info">
                <h4> <a href="https://baike.baidu.com/item/%E8%A5%BF%E6%B9%96%E9%BE%99%E4%BA%95/412851?fromModule=lemma-qiyi_sense-lemma"></a>西湖龙井</h4>
                <em>|</em>
                <span> 139元起</span>
            </div>
        </div>
        <div class="box">
            <img src="./imgs/铁观音.png" alt="">
            <p class="review">防治龋齿、减肥瘦身</p>
            <div class="appraise">来自于 t52155567 的评价</div>
            <div class="info">
                <h4> <a href="https://baike.baidu.com/item/%E9%93%81%E8%A7%82%E9%9F%B3/5315?fromModule=lemma_search-box"></a>铁观音</h4>
                <em>|</em>
                <span> 318元起</span>
            </div>
        </div>
        <div class="box">
            <img src="./imgs/碧螺春.png" alt="">
            <p class="review">强心解痉、提神益思、辅助减肥</p>
            <div class="appraise">来自于 t52155567 的评价</div>
            <div class="info">
                <h4> <a href="https://baike.baidu.com/item/%E7%A2%A7%E8%9E%BA%E6%98%A5/2682?fromModule=lemma_search-box"></a>碧螺春</h4>
                <em>|</em>
                <span> 218元起</span>
            </div>
        </div>
        <div class="box">
            <img src="./imgs/庐山云雾茶.png" alt="">
            <p class="review">提神醒脑、增强代谢</p>
            <div class="appraise">来自于 t52155567 的评价</div>
            <div class="info">
                <h4> <a href="https://baike.baidu.com/item/%E5%BA%90%E5%B1%B1%E4%BA%91%E9%9B%BE%E8%8C%B6?fromModule=lemma_search-box"></a>庐山云雾茶</h4>
                <em>|</em>
                <span> 138元起</span>
            </div>
        </div>
        <div class="box">
            <img src="./imgs/安吉白茶.png" alt="">
            <p class="review">保护神经细胞、降三高、镇静</p>
            <div class="appraise">来自于 t52155567 的评价</div>
            <div class="info">
                <h4> <a href="https://baike.baidu.com/item/%E5%AE%89%E5%90%89%E7%99%BD%E8%8C%B6?fromModule=lemma_search-box"></a>安吉白茶</h4>
                <em>|</em>
                <span> 328元起</span>
            </div>
        </div>
        <div class="box">
            <img src="./assets/img/毛尖.png" alt="">
            <p class="review">醒脑提神、保护眼睛、降低血压</p>
            <div class="appraise">来自于 t52155567 的评价</div>
            <div class="info">
                <h4> <a href="https://baike.baidu.com/item/%E6%AF%9B%E5%BB%BA%E8%8D%89?fromtitle=%E6%AF%9B%E5%B0%96%E8%8C%B6&fromid=6751338&fromModule=lemma_search-box"></a>毛尖茶</h4>
                <em>|</em>
                <span> 78元起</span>
            </div>
        </div>
        </body>
</html>
