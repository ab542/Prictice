package com.atguigu.dao.impl;

import com.atguigu.dao.DdDao;
import com.atguigu.pojo.DingDan;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class DdDaoImpl extends BaseDao implements DdDao {
    @Override
    public int saveDingDan(DingDan dingDan) {
        String sql = "insert into t_dd(`dingdanhao`,`date`,`price`) values(?,?,?)";
        return update(sql,dingDan.getDingDanHao(),dingDan.getDate(),dingDan.getPrice());
    }


    @Override
    public List<DingDan> queryDingDans() {
        String sql = "select `id`,`DingDanHao`,`date`,`price` from t_dd";
        return queryForList(DingDan.class,sql);
    }
}
