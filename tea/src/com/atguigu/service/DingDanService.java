package com.atguigu.service;

import com.atguigu.pojo.DingDan;

import java.util.List;

public interface DingDanService {
    /**
     * 查询全部订单
     * @return
     */
    public List<DingDan> queryDingDans();

    /**
     * 保存订单
     * @param dingDan
     * @return
     */
    public void saveDingDan(DingDan dingDan);

}
