package com.atguigu.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class DingDan {
    private Integer id;
    private String DingDanHao;
    private Date date;
    private BigDecimal price;

    public DingDan() {
    }

    public DingDan(Integer id, String dingDanHao, Date date, BigDecimal price) {
        this.id = id;
        this.DingDanHao = dingDanHao;
        this.date = date;
        this.price = price;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDingDanHao() {
        return DingDanHao;
    }

    public void setDingDanHao(String dingDanHao) {
        this.DingDanHao = dingDanHao;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }


    @Override
    public String toString() {
        return "DingDan{" +
                "id=" + id +
                ", DingDanHao='" + DingDanHao + '\'' +
                ", date=" + date +
                ", price=" + price +
                '}';
    }
}
