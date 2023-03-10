package com.atguigu.web;

import com.atguigu.pojo.Manager;
import com.atguigu.pojo.User;
import com.atguigu.service.ManagerService;
import com.atguigu.service.impl.ManagerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ManagerServlet extends BaseServlet{
    ManagerService managerService = new ManagerServiceImpl();
    protected void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        //登录操作
        Manager login = managerService.login(new Manager( username, password));
        if (login==null){
            //返回登录失败
            req.setAttribute("msg","用户名或密码输入错误");
            //返回错误信息
            req.setAttribute("username",username);
            req.setAttribute("pas",password);
            //登录失败
            req.getRequestDispatcher("/pages/user/Manager_login.jsp").forward(req,resp);
        }else {
            req.getRequestDispatcher("/pages/manager/manager.jsp").forward(req,resp);

        }
    }
}
