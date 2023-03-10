package com.atguigu.dao.impl;

import com.atguigu.dao.BookDao;
import com.atguigu.pojo.Book;

import java.util.List;

public class BookDaoImpl extends BaseDao implements BookDao {


    @Override
    public int addBook(Book book) {
        String sql = "insert into t_tea(`name`,`address`,`price`,`sales`,`stock`,`imgpath`,`texiao`,`type`) values(?,?,?,?,?,?,?,?)";
        return update(sql,book.getName(),book.getAddress(),book.getPrice(),book.getSales(),book.getStock(),book.getImgpath(),book.getTexiao(),book.getType());
    }

    @Override
    public int deleteBookById(Integer id) {
        String sql = "delete from t_tea where id = ?";
        return update(sql,id);
    }

    @Override
    public int updateBook(Book book) {
        String sql = "update t_tea set `name`=?,`address`=?,`price`=?,`sales`=?,`stock`=?,`imgpath`=?,`texiao`=?,`type`=? where id = ?";
        return
        update(sql,book.getName(),book.getAddress(),book.getPrice(),book.getSales(),book.getStock(),book.getImgpath(),book.getTexiao(),book.getType(),book.getId());
    }

    @Override
    public Book queryBookById(Integer id) {
        String sql = "select `id`,`name`,`address`,`price`,`sales`,`stock`,`imgpath`,`texiao`,`type` from t_tea where id = ?";
        return queryForOne(Book.class,sql,id);
    }

    @Override
    public List<Book> queryTeasByType(int type) {
        String sql = "select `id`,`name`,`address`,`price`,`sales`,`stock`,`imgpath`,`texiao`,`type` from t_tea where type = ?";
        return queryForList(Book.class,sql,type);
    }

    @Override
    public List<Book> queryBooks() {
        String sql = "select `id`,`name`,`address`,`price`,`sales`,`stock`,`imgpath`,`texiao`,`type` from t_tea ";
        return queryForList(Book.class,sql);
    }

    @Override
    public Integer queryForPageTotalCount() {
        String sql = "select count(*) from t_tea ";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Book> queryForPageItems(int begin, int pageSize) {
        String sql = "select `id`,`name`,`address`,`price`,`sales`,`stock`,`imgpath`,`texiao`,`type` from t_tea limit ?,?";
        return queryForList(Book.class,sql,begin,pageSize);
    }
}
