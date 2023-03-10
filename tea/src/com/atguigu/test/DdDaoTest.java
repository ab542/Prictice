package com.atguigu.test;

import com.atguigu.dao.DdDao;
import com.atguigu.dao.impl.DdDaoImpl;
import com.atguigu.pojo.DingDan;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.Date;

import static org.junit.Assert.*;

public class DdDaoTest {
DdDao ddDao = new DdDaoImpl();
    @Test
    public void saveDingDan() {
        System.out.println(ddDao.saveDingDan(new DingDan(1,"123456789",new Date(), BigDecimal.ONE)));
    }

    @Test
    public void queryDingDans() {
        System.out.println(ddDao.queryDingDans());
    }
}