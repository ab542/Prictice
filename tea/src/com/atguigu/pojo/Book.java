package com.atguigu.pojo;

import java.math.BigDecimal;

public class Book {
    private Integer id;
    private String name;
    private BigDecimal price;
    private String address;
    private Integer sales;
    private Integer stock;
    private String imgpath;
    private String texiao;
    private String type;

    public Book() {
    }

    public Book(Integer id, String name, BigDecimal price, String address, Integer sales, Integer stock, String imgpath, String texiao, String type) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.address = address;
        this.sales = sales;
        this.stock = stock;
        this.imgpath = imgpath;
        this.texiao = texiao;
        this.type = type;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTexiao() {
        return texiao;
    }

    public void setTexiao(String texiao) {
        this.texiao = texiao;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Integer getSales() {
        return sales;
    }

    public void setSales(Integer sales) {
        this.sales = sales;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public String getImgpath() {
        return imgpath;
    }

    public void setImgpath(String imgpath) {
        this.imgpath = imgpath;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", address='" + address + '\'' +
                ", sales=" + sales +
                ", stock=" + stock +
                ", imgpath='" + imgpath + '\'' +
                ", texiao='" + texiao + '\'' +
                ", type=" + type +
                '}';
    }
}
