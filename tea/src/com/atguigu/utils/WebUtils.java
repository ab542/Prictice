package com.atguigu.utils;

import org.apache.commons.beanutils.BeanUtils;

import java.util.Map;

public class WebUtils {
    /**
     * 把Map中的值注入到对应的javaBean属性中
     *
     * @param value
     * @param bean
     */
    //用Map代替HttpServletRequest可以使代码更加贴合适用Service和dao层，降低代码耦合度，实用性更强
    public static <T> T copyParamToBean(Map value, T bean) {
        try {
            /*
            把所用请求参数都注入到user对象中
             */
//            System.out.println("注入之前：" + bean);
            BeanUtils.populate(bean, value);
//            System.out.println("注入之后" + bean);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bean;
    }

    /**
     * 将字符串转换成为int类型的数据
     * @param strInt
     * @param defaultValue
     * @return
     */
    public static int parseInt(String strInt, int defaultValue) {
        if (strInt ==null){
            return defaultValue;
        }
        try {
            return Integer.parseInt(strInt);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return defaultValue;
    }
}

