package com.atguigu.dao;

import com.atguigu.pojo.DingDan;

import java.util.List;

public interface DdDao {
    /**
     * 保存订单
     * @param dingDan
     * @return
     */
    public int saveDingDan(DingDan dingDan);

    /**
     * 查询全部订单
     * @return
     */
    public List<DingDan> queryDingDans();
}
