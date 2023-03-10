package com.atguigu.service.impl;

import com.atguigu.dao.DdDao;
import com.atguigu.dao.impl.DdDaoImpl;
import com.atguigu.pojo.DingDan;
import com.atguigu.service.DingDanService;

import java.util.List;

public class DingDanServiceImpl implements DingDanService {
    DdDao ddDao = new DdDaoImpl();
    @Override
    public List<DingDan> queryDingDans() {
        return ddDao.queryDingDans();
    }

    @Override
    public void saveDingDan(DingDan dingDan) {
        ddDao.saveDingDan(dingDan);
    }
}
