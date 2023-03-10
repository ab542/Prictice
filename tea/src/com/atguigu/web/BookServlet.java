package com.atguigu.web;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.Page;
import com.atguigu.pojo.TypeBook;
import com.atguigu.service.BookService;
import com.atguigu.service.impl.BookServiceImpl;
import com.atguigu.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class BookServlet extends BaseServlet {
    private BookService bookService = new BookServiceImpl();


    /**
     * 处理分页功能
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1.获取请求的参数
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"), 1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        //2.调用BookService.page(pageNo,pageSize);page对象
        Page<Book> page =bookService.page(pageNo,pageSize);
        //3.保存page对象到Request域中
        req.setAttribute("page",page);
        //4.请求转发到pages/manager/book_manager.jsp页面
        req.getRequestDispatcher("/pages/manager/book_manager.jsp").forward(req,resp);
    }
    protected void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        pageNo+=1;
        //1、获取请求的参数==封装成为 Book 对象
        Book book = WebUtils.copyParamToBean(req.getParameterMap(),new Book());
        // 2、调用 BookService.addBook()保存图书
        bookService.addBook(book);
        //3.跳转到后台管理
//        req.getRequestDispatcher("/manager/bookServlet?action=list").forward(req, resp);
        resp.sendRedirect(req.getContextPath() + "/manager/bookServlet?action=page&pageNo="+pageNo);
    }
    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取要删除的id
        int id = WebUtils.parseInt(req.getParameter("id"),0);
        //调用方法删除图书
        bookService.deleteBookById(id);
        //重定向到图书管理页面
        resp.sendRedirect(req.getContextPath() + "/manager/bookServlet?action=page&pageNo="+req.getParameter("pageNo"));

    }
    protected void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1.获取请求参数，封装为Book对象
        Book book = WebUtils.copyParamToBean(req.getParameterMap(),new Book());
//        2.调用bookService.updateBookById( book )方法修改图书
        bookService.updateBook(book);
//        3.重定向到管理页面
        resp.sendRedirect(req.getContextPath() + "/manager/bookServlet?action=page&pageNo="+req.getParameter("pageNo"));
    }

    protected void getBook(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1.获取请求的图书id
        int id = WebUtils.parseInt(req.getParameter("id"),0);
        //2.调用book.queryBookById()方法查询图书
        Book book = bookService.queryBookById(id);
        //3.保存到request域中
        req.setAttribute("book",book);
        //4.请求转发到，pages/manager/book_edit.jsp页面
        req.getRequestDispatcher("/pages/manager/book_edit.jsp").forward(req,resp);
    }
    protected void list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1.通过BookService查询到全部数据
        List<Book> books = bookService.queryBooks();
        //2.把全部图书保存到request域中
        req.setAttribute("books",books);
        //3.请求转发到/pages/manager/book_manager.jsp页面
        req.getRequestDispatcher("/pages/manager/book_manager.jsp").forward(req,resp);

    }
    protected void listByType(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       // int type=WebUtils.parseInt(req.getParameter("type"),1);
        List<Book> books1 = bookService.queryListype(1);
       // System.out.println(books1);
        List<Book> books2 = bookService.queryListype(2);
        List<Book> books3 = bookService.queryListype(3);
        List<Book> books4 = bookService.queryListype(4);
        List<Book> books5 = bookService.queryListype(5);
        List<Book> books6 = bookService.queryListype(6);

        //2.把全部图书保存到request域中
        TypeBook typeBook=new TypeBook(books1,books2,books3,books4,books5,books6);
        req.setAttribute("typeBook",typeBook);
        //3.请求转发到/pages/manager/tea_manager.jsp页面
     //   System.out.println(typeBook);
        req.getRequestDispatcher("/pages/user/查看更多.jsp").forward(req,resp);
    }
}
