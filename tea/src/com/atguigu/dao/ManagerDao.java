package com.atguigu.dao;

import com.atguigu.pojo.Manager;
import com.atguigu.pojo.User;

public interface ManagerDao {
    /**
     * 根据用户名查询用户信息
     * @param username 用户名
     * @return 如果返回null，说明没有这个用户，反之亦然。
     */
    public Manager queryUserByUsername(String username);

    /**
     * 根据用户名查询用户信息和密码
     * @param username
     * @param password
     * @return 如果返回null，说明没有这个用户或密码错误，反之亦然。
     */
    public Manager queryUserByUsernameAndPassword(String username, String password);

    /**
     * 保存用户信息
     * @param manager
     * @return 返回-1表示操作失败，其他的是sql语句影响的行数
     */
    public int saveUser( Manager manager);
}
