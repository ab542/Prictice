package com.atguigu.dao.impl;

import com.atguigu.dao.ManagerDao;
import com.atguigu.pojo.Manager;


public class ManagerDaoImpl  extends BaseDao implements ManagerDao {
    @Override
    public Manager queryUserByUsername(String username) {
        String sql = "select `username`,`password` from t_manager where username = ?";
        return queryForOne(Manager.class,sql,username);
    }

    @Override
    public Manager queryUserByUsernameAndPassword(String username, String password) {
        String sql = "select `username`,`password` from t_manager where username = ?and password = ?";
        return queryForOne(Manager.class,sql,username,password);
    }

    @Override
    public int saveUser(Manager manager) {
        String sql = "insert into t_user(`username`,`password`) values(?,?,?)";
        return update(sql,manager.getUsername(),manager.getPassword());
    }
}
