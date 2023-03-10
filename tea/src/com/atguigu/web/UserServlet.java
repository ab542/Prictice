package com.atguigu.web;

import com.atguigu.pojo.User;
import com.atguigu.service.UserService;
import com.atguigu.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY;

public class UserServlet extends BaseServlet {
    private UserService userService = new UserServiceImpl();

    /**
     * 注销的方法
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void loginOut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //销毁Session
        req.getSession().invalidate();
        //重定向到首页
        resp.sendRedirect(req.getContextPath());
    }
    /**
     * 登录的方法
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        //登录操作
        User login = userService.login(new User(null, username, password, null));
        if (login==null){
            //返回登录失败
            req.setAttribute("msg","用户名或密码输入失败");
            //返回错误信息
            req.setAttribute("username",username);
            req.setAttribute("pas",password);
            //登录失败
            req.getRequestDispatcher("/pages/user/login.jsp").forward(req,resp);
        }else {
            req.getSession().setAttribute("user",login);
            req.getRequestDispatcher("/pages/user/login_success.jsp").forward(req,resp);

        }
    }

    /**
     * 注册的方法
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void regist(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取 Session 中的验证码
        String token = (String) req.getSession().getAttribute(KAPTCHA_SESSION_KEY);
        // 删除 Session 中的验证码
        req.getSession().removeAttribute(KAPTCHA_SESSION_KEY);
        //1.获取请求参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String code = req.getParameter("code");

//        User user =  WebUtils.copyParamToBean(req.getParameterMap(),new User());



        //检查验证码是否正确
        if (token!=null&&token.equalsIgnoreCase(code)){
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
