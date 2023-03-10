<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>查看更多</title>
    <base href="http://localhost:8080/tea/">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="csss/mim.css">
    <style>
        .box{
            height: 100px;
        }
        .box-left{
            height: 20px;
            float: left;
            color:black;
            font-size: 40px;
        }
        .box-center{
            height: 50px;
            background-color: white;
        }
        .box-right{
            float: right;
            height: 20px;
        }
        .box-right a{
            font-size: 40px;
            color: blue;
        }
    </style>
    <script type="text/javascript" src="jquery-3.5.1.js"></script>
    <script type="text/javascript">
        //页面加载完之后执行
        $(function () {
            //给加入购物车 添加单击事件
            $("button.addToCart").click(function () {
                var bookid = $(this).attr("bookid");
                alert("你即将添加一个商品项");
                location.href="http://localhost:8080/tea/cartServlet?action=addItem&id="+bookid;
            });
        });
    </script>
</head>
<body>
    
    <div class="box wrap">
        <div class="box-left">所售茶类:</div>
        <div class="box-center"></div>
        <div class="box-right">
            <a href="pages/manager/order_manager.jsp">订单管理</a>
            <a href="index.jsp">返回商城</a>
        </div>
    </div>
    <hr>
    <h1>红茶</h1>
    <div class="home-box wrap">
        <div class="home-box-left home-box-left1">
            <a href="#">
                <img src="imgs/红茶.png" alt="" >
            </a>
        </div>
        <div class="home-box-right">
            <ul>
                <c:forEach items="${requestScope.typeBook.red}" var="book">
                    <li class="items">
                        <a href="#">
                            <img src="${book.imgpath}" alt="" class="img1">
                            <p class="name2">${book.name}</p>
                            <p class="desc2">${book.texiao}</p>
                            <p class="price2">${book.price}元起
                            </p>
                        </a>
                        <button bookid="${book.id}" class="addToCart" style="background-color: #aedcea ;width: 80px;height: 20px">添加购物车</button>
                        <button style="background-color: #aedcea ;width: 50px;height: 20px"><a href="https://baike.baidu.com/item/%E7%BA%A2%E8%8C%B6/185424?fromModule=lemma_search-box">详情</a></button>
                    </li>
                </c:forEach>
                
            </ul>
        </div>
    </div>
    <h1>黄茶</h1>
    <div class="home-box wrap">
        <div class="home-box-left home-box-left1">
            <a href="#">
                <img src="imgs/黄茶.png" alt="" >
            </a>
        </div>
        <div class="home-box-right">
            <ul>
                <c:forEach items="${requestScope.typeBook.yellow}" var="book">
                    <li class="items">
                        <a href="#">
                            <img src="${book.imgpath}" alt="" class="img1">
                            <p class="name2">${book.name}</p>
                            <p class="desc2">${book.texiao}</p>
                            <p class="price2">${book.price}元起
                            </p>
                        </a>
                        <button bookid="${book.id}" class="addToCart" style="background-color: #aedcea ;width: 80px;height: 20px">添加购物车</button>
                        <button style="background-color: #aedcea ;width: 50px;height: 20px"><a href="https://baike.baidu.com/item/%E9%BB%84%E8%8C%B6/522458?fromModule=lemma_search-box">详情</a></button>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <h1>青茶</h1>
    <div class="home-box wrap">
        <div class="home-box-left home-box-left1">
            <a href="#">
                <img src="imgs/青茶.png" alt="" >
            </a>
        </div>
        <div class="home-box-right">
            <ul>
                <c:forEach items="${requestScope.typeBook.qin}" var="book">
                    <li class="items">
                        <a href="#">
                            <img src="${book.imgpath}" alt="" class="img1">
                            <p class="name2">${book.name}</p>
                            <p class="desc2">${book.texiao}</p>
                            <p class="price2">${book.price}元起
                            </p>
                        </a>
                        <button bookid="${book.id}" class="addToCart" style="background-color: #aedcea ;width: 80px;height: 20px">添加购物车</button>
                        <button style="background-color: #aedcea ;width: 50px;height: 20px"><a href="https://baike.baidu.com/item/%E6%B8%85%E8%8C%B6/7155978?fromModule=lemma_search-box">详情</a></button>
                    </li>
                </c:forEach>
                
            </ul>
        </div>
    </div>
    <h1>白茶</h1>
    <div class="home-box wrap">
        <div class="home-box-left home-box-left1">
            <a href="#">
                <img src="imgs/白茶.png" alt="" >
            </a>
        </div>
        <div class="home-box-right">
            <ul>
                <c:forEach items="${requestScope.typeBook.withe}" var="book">
                    <li class="items">
                        <a href="#">
                            <img src="${book.imgpath}" alt="" class="img1">
                            <p class="name2">${book.name}</p>
                            <p class="desc2">${book.texiao}</p>
                            <p class="price2">${book.price}元起
                            </p>
                        </a>
                        <button bookid="${book.id}" class="addToCart" style="background-color: #aedcea ;width: 80px;height: 20px">添加购物车</button>
                        <button style="background-color: #aedcea ;width: 50px;height: 20px"><a href="https://baike.baidu.com/item/%E7%99%BD%E8%8C%B6/522348?fromModule=lemma_search-box">详情</a></button>
                    </li>
                </c:forEach>
                
            </ul>
        </div>
    </div>
    <h1>黑茶</h1>
    <div class="home-box wrap">
        <div class="home-box-left home-box-left1">
            <a href="#">
                <img src="imgs/黑茶.png" alt="" >
            </a>
        </div>
        <div class="home-box-right">
            <ul>
                <c:forEach items="${requestScope.typeBook.black}" var="book">
                    <li class="items">
                        <a href="#">
                            <img src="${book.imgpath}" alt="" class="img1">
                            <p class="name2">${book.name}</p>
                            <p class="desc2">${book.texiao}</p>
                            <p class="price2">${book.price}元起
                            </p>
                        </a>
                        <button bookid="${book.id}" class="addToCart" style="background-color: #aedcea ;width: 80px;height: 20px">添加购物车</button>
                        <button style="background-color: #aedcea ;width: 50px;height: 20px"><a href="https://baike.baidu.com/item/%E9%BB%91%E8%8C%B6/522584?fromModule=lemma_search-box">详情</a></button>
                    </li>
                </c:forEach>
                
            </ul>
        </div>
    </div>
    <h1>绿茶</h1>
    <div class="home-box wrap">
        <div class="home-box-left home-box-left1">
            <a href="#">
                <img src="imgs/绿茶.png" alt="" >
            </a>
        </div>
        <div class="home-box-right">
            <ul>
                <c:forEach items="${requestScope.typeBook.green}" var="book">
                    <li class="items">
                        <a href="#">
                            <img src="${book.imgpath}" alt="" class="img1">
                            <p class="name2">${book.name}</p>
                            <p class="desc2">${book.texiao}</p>
                            <p class="price2">${book.price}元起
                            </p>
                        </a>
                        <button bookid="${book.id}" class="addToCart" style="background-color: #aedcea ;width: 80px;height: 20px">添加购物车</button>
                        <button style="background-color: #aedcea ;width: 50px;height: 20px"><a href="https://baike.baidu.com/item/%E7%BB%BF%E8%8C%B6/13497?fromModule=lemma_search-box">详情</a></button>
                    </li>
                </c:forEach>

            </ul>
        </div>
    </div>
</body>
</html>