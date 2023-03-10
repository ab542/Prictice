package com.atguigu.web;


import com.atguigu.dao.DdDao;
import com.atguigu.dao.impl.DdDaoImpl;
import com.atguigu.pojo.DingDan;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

public class DingDanServlet extends BaseServlet {
    DdDao ddDao = new DdDaoImpl();
    protected void queryDingDans(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<DingDan> dingDans = ddDao.queryDingDans();
        req.getSession().setAttribute("dingDans",dingDans);
        req.getRequestDispatcher("/pages/manager/order_manager.jsp").forward(req,resp);
    }
}
