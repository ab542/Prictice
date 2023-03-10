package com.atguigu.dao.impl;

import com.atguigu.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/**
 * BaseDao用来CRUD
 * 用来复用代码，不需要对象实例
 * 这个类是用来操作数据库增删改查。
 */
public abstract class BaseDao {
    //使用DbUtils操作数据库
    private QueryRunner queryRunner = new QueryRunner();

    /**
     *update()方法用来执行：Insert,Update,Delete语句
     * @param sql 传过来的sql语句
     * @param args 可变长参数（sql语句中的符号）
     * @return 如果返回-1，说明执行失败返回其他表示执行成功
     */
    public int update(String sql ,Object ... args){
        Connection connection = JdbcUtils.getConnection();//连接数据库
        try {
            return queryRunner.update(connection,sql,args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            JdbcUtils.close(connection);//关闭数据库
        }
        return -1;
    }         

    /**
     * 查询返回一个javaBean的sql语句
     * @param <T> 返回的类型的泛型
     * @param sql 执行的sql语句
     * @param type 返回的对象类型
     * @param args sql对应的参数值
     * @return
     */
    public <T> T queryForOne(Class<T> type,String sql, Object ... args){
        Connection connection = JdbcUtils.getConnection();
        try {
            return queryRunner.query(connection,sql,new BeanHandler<T>(type),args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            JdbcUtils.close(connection);
        }
        return null;
    }

    /**
     * 查询返回多个javaBean的sql语句
     * @param sql 执行的sql语句
     * @param type 返回的对象类型
     * @param args sql对应的参数值
     * @param <T> 返回的类型的泛型
     * @return
     */
    public <T>List<T> queryForList(Class<T> type,String sql,Object ... args){
        Connection connection = JdbcUtils.getConnection();
        try {
            return queryRunner.query(connection,sql,new BeanListHandler<T>(type),args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            JdbcUtils.close(connection);
        }
        return null;
    }

    /**
     * 执行返回一行一列的sql语句（查询返回单个值）
     * @param sql 执行的sql
     * @param args sql对应的参数值
     * @return
     */
    public Object queryForSingleValue(String sql,Object ... args){
        Connection connection = JdbcUtils.getConnection();
        try {
            return queryRunner.query(connection,sql,new ScalarHandler(),args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JdbcUtils.close(connection);
        }
        return null;
    }
}
