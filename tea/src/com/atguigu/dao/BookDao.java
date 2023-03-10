package com.atguigu.dao;

import com.atguigu.pojo.Book;

import java.util.List;

public interface BookDao {

    /**
     * 添加茶叶
     * @param book
     * @return
     */
    public int addBook(Book book);

    /**
     * 通过id删除茶叶
     * @param id
     * @return
     */
    public int deleteBookById(Integer id);

    /**
     * 改变茶叶
     * @param book
     * @return
     */
    public int updateBook(Book book);

    /**
     * 查，通过id查询茶叶
     * @param id
     * @return
     */
    public Book queryBookById(Integer id);

    /**
     * 通过种类茶叶
     */
    public List<Book> queryTeasByType(int type);
    /**
     * 查询多个茶叶
     * @return
     */
    public List<Book> queryBooks();

    Integer queryForPageTotalCount();

    List<Book> queryForPageItems(int begin, int pageSize);

}
