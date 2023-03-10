package com.atguigu.service.impl;

import com.atguigu.dao.ManagerDao;
import com.atguigu.dao.impl.ManagerDaoImpl;
import com.atguigu.pojo.Manager;
import com.atguigu.pojo.User;
import com.atguigu.service.ManagerService;

public class ManagerServiceImpl implements ManagerService {
    ManagerDao managerDao = new ManagerDaoImpl();
    @Override//登录
    public Manager login(Manager manager) {
        return managerDao.queryUserByUsernameAndPassword(manager.getUsername(),manager.getPassword());
    }

    @Override//检查 用户名是否可用
    public boolean existsUsername(String username) {
        if (managerDao.queryUserByUsername(username)==null){
            //等于null,说明没有查到，没查到表示可用
            return false;
        }
        return true;
    }
}
