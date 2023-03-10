package com.atguigu.web;

import com.atguigu.pojo.Cart;
import com.atguigu.pojo.DingDan;
import com.atguigu.pojo.User;
import com.atguigu.service.DingDanService;
import com.atguigu.service.OrderService;
import com.atguigu.service.impl.DingDanServiceImpl;
import com.atguigu.service.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

public class OrderServlet extends BaseServlet {
    private OrderService orderService = new OrderServiceImpl();
    private DingDanService dingDanService = new DingDanServiceImpl();
    /**
     * 生成订单
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void createOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取购物车对象
        Cart cart = (Cart) req.getSession().getAttribute("cart");
        //获取userId
        User user = (User) req.getSession().getAttribute("user");
        if (user==null){
            req.getRequestDispatcher("/pages/user/login.jsp").forward(req,resp);
            return;
        }
        Integer userId = user.getId();
        //生成订单
        String orderId = null;
        orderId = orderService.createOrder(cart, userId);
//        System.out.println(cart.getTotalPrice());

        //把订单保存到数据库
        dingDanService.saveDingDan(new DingDan(null, orderId,new Date(),cart.getTotalPrice()));

        req.getSession().setAttribute("orderId",orderId);
//        req.getRequestDispatcher("/pages/cart/checkout.jsp").forward(req,resp);
        resp.sendRedirect(req.getContextPath()+"/pages/cart/checkout.jsp");
    }
}
