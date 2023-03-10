package com.atguigu.pojo;

import java.math.BigDecimal;
import java.util.LinkedHashMap;
import java.util.Map;

public class Cart {
    /**
     * 购物车对象
     */
    //private Integer totalCount;
    //private BigDecimal totalPrice;
    private Map<Integer,CartItem> items = new LinkedHashMap<Integer, CartItem>();

    /**
     * 添加商品项
     * @param cartItem
     */
    public void addItem(CartItem cartItem){
        //先查看购物车中是否有已经添加过此商品，如果添加过则做数量累计，总金额更新。如果没有添加过，直接放到集合中就好
        CartItem item = items.get(cartItem.getId());
        if (item == null){
            items.put(cartItem.getId(), cartItem);
        }else {
            //已经添加过商品
            item.setCount(item.getId()+1);//数量累加
            item.setPrice(item.getPrice().multiply(new BigDecimal(item.getCount())));//更新总金额
        }
    }
    /**
     * 删除商品项
     * @param id
     */
    public void deleteItem(Integer id){
        items.remove(id);
    }

    /**
     * 清空购物车
     */
    public void clear(){
        items.clear();
    }

    /**
     * 修改商品数量
     * @param id
     * @param count
     */
    public void updateCount(Integer id,Integer count){
        //先查看购物车中是否有此商品，如果有，修改此数量，更新总价格
        CartItem cartItem = items.get(id);
        if (cartItem!= null){
            cartItem.setCount(count);//修改数量
            cartItem.setPrice(cartItem.getPrice().multiply(new BigDecimal(cartItem.getCount())));//更新总金额
        }
    }
    public Integer getTotalCount() {
        Integer totalCount=0;
        for (Map.Entry<Integer,CartItem> entry : items.entrySet()){
            totalCount+=entry.getValue().getCount();
        }
        return totalCount;
    }

    public BigDecimal getTotalPrice() {
        BigDecimal totalPrice=new BigDecimal(0);
        for (Map.Entry<Integer,CartItem> entry : items.entrySet()){
            totalPrice=totalPrice.add(entry.getValue().getPrice());
        }
        return totalPrice;
    }


    public Map<Integer,CartItem> getItems() {
        return items;
    }

    public void setItems(Map<Integer,CartItem> items) {
        this.items = items;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "totalCount=" + getTotalCount() +
                ", totalPrice=" + getTotalPrice() +
                ", items=" + items +
                '}';
    }
}
