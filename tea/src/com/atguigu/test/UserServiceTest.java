package com.atguigu.test;

import com.atguigu.pojo.User;
import com.atguigu.service.UserService;
import com.atguigu.service.impl.UserServiceImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserServiceTest {
    UserService userService = new UserServiceImpl();
    @Test
    public void registUser() {
        userService.registUser(new User(5,"bbl168","666666","bbj168@qq.com"));
        userService.registUser(new User(5,"abc168","666666","abc168@qq.com"));

    }

    @Test
    public void login() {
        System.out.println(userService.login(new User(null,"abc168","666666",null)));
    }

    @Test
    public void existUsername() {
        if (userService.existsUsername("bbj168")){
            System.out.println("用户名已存在！");
        }else {
            System.out.println("用户名可用！");
        }
    }
}