package com.atguigu.service;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.Page;

import java.util.List;

public interface BookService {

    /**
     * 添加图书
     * @param book
     * @return
     */
    public void addBook(Book book);
    public List<Book> queryListype(int type);
    /**
     * 通过id删除图书
     * @param id
     * @return
     */
    public void deleteBookById(Integer id);

    /**
     * 改变图书
     * @param book
     * @return
     */
    public void updateBook(Book book);

    /**
     * 查，通过id查询图书
     * @param id
     * @return
     */
    public Book queryBookById(Integer id);

    /**
     * 查询多个图书
     * @return
     */
    public List<Book> queryBooks();

    Page<Book> page(int pageNo, int pageSize);
}
