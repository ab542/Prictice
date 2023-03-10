package com.atguigu.service.impl;

import com.atguigu.dao.BookDao;
import com.atguigu.dao.OrderDao;
import com.atguigu.dao.OrderItemDao;
import com.atguigu.dao.impl.BookDaoImpl;
import com.atguigu.dao.impl.OrderDaoImpl;
import com.atguigu.dao.impl.OrderItemDaoImpl;
import com.atguigu.pojo.*;
import com.atguigu.service.OrderService;

import java.util.Date;
import java.util.Map;

public class OrderServiceImpl implements OrderService {
    private OrderDao orderDao = new OrderDaoImpl();
    private OrderItemDao orderItemDao = new OrderItemDaoImpl();
    private BookDao bookDao = new BookDaoImpl();
    @Override
    public String createOrder(Cart cart, Integer userId) {
        //根据时间生成订单号
        String orderId = System.currentTimeMillis()+""+userId;
        //创建订单
        Order order = new Order(orderId,new Date(),cart.getTotalPrice(),0,userId);
        //保存订单
        orderDao.saveOrder(order);
        //遍历购物车
        for (Map.Entry<Integer, CartItem>entry:cart.getItems().entrySet()) {
            //将每个商品项转化为订单项         //entry.getValue()===cartItem
            OrderItem orderItem = new OrderItem(null,entry.getValue().getName(),entry.getValue().getCount(),entry.getValue().getPrice(),entry.getValue().getPrice(),orderId);
            //将订单项保存到数据库
            orderItemDao.saveOrderItem(orderItem);
            //跟新库存和销量
            Book book = bookDao.queryBookById(entry.getValue().getId());
            book.setSales( book.getSales() + entry.getValue().getCount() );
            book.setStock( book.getStock() - entry.getValue().getCount() );
            bookDao.updateBook(book);
        }
        //清空购物车
        cart.clear();
        return orderId;
    }
}
