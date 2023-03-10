package com.atguigu.service.impl;

import com.atguigu.dao.UserDao;
import com.atguigu.dao.impl.UserDaoImpl;
import com.atguigu.pojo.User;
import com.atguigu.service.UserService;

public class UserServiceImpl implements UserService {
    private UserDao userDao = new UserDaoImpl();
    @Override//注册用户
    public void registUser(User user) {
        userDao.saveUser(user);
    }

    @Override//登录
    public User login(User user) {
        return userDao.queryUserByUsernameAndPassword(user.getUsername(),user.getPassword());
    }

    @Override//检查 用户名是否可用
    public boolean existsUsername(String username) {
        if (userDao.queryUserByUsername(username)==null){
            //等于null,说明没有查到，没查到表示可用
            return false;
        }
        return true;
    }
}
