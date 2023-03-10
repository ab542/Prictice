package com.atguigu.service;

import com.atguigu.pojo.Manager;
import com.atguigu.pojo.User;

public interface ManagerService {
    /**
     * 登录
     * @param manager
     * @return 如果返回null说明返回失败返回有值是登录成功
     */
    public Manager login(Manager manager);

    /**
     * 检查 用户名是否可用
     * @param username
     * @return 如果返回ture表示用户名已经存在，返回false表示用户名可用
     */
    public boolean existsUsername(String username);
}
