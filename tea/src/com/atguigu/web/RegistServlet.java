package com.atguigu.web;

import com.atguigu.pojo.User;
import com.atguigu.service.UserService;
import com.atguigu.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegistServlet extends HttpServlet {
    private UserService userService = new UserServiceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1.获取请求参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String code = req.getParameter("code");
        //检查验证码是否正确
        if (code.equalsIgnoreCase("bnbnp")){
            //检查用户名是否正确
            if (userService.existsUsername(username)){
                System.out.println("用户名["+username+"]不可用！");
                //返回注册错误的信息
                req.setAttribute("name","用户名不可用");
                req.setAttribute("username",username);
                req.setAttribute("pas",password);
                req.getRequestDispatcher("/pages/user/regist.jsp").forward(req,resp);
            }else {
                //将注册信息保存到数据库
                userService.registUser(new User(null,username,password,email));
                req.getRequestDispatcher("/pages/user/regist_success.jsp").forward(req,resp);
            }
        }else {
            //不正确
            //跳回注册页面
            System.out.println("验证码输入["+code+"]错误！");
            //返回注册错误的信息
            req.setAttribute("code","验证码输入错误");
            req.setAttribute("username",username);
            req.setAttribute("pas",password);
            req.setAttribute("email",email);
            req.getRequestDispatcher("/pages/user/regist.jsp").forward(req,resp);
        }
    }
}
