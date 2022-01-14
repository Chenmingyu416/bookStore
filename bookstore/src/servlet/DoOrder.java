package servlet;

import bean.Title;
import bean.TitleDao;
import bean.TitleDaoImpl;
import bean.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ToViewTitle", value = "/ToViewTitle")
public class DoOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookOrder bookorderbean=new BookOrder(); //创建订单实体类对象
        request.setCharacterEncoding("utf-8");// 处理中文输入
        HttpSession session = request.getSession();// 获取 session
        //获取输入的表单数据，封装订单实体类对象
        bookorderbean.setUsername(request.getParameter("username"));
        bookorderbean.setZipcode(request.getParameter("zipcode"));
        bookorderbean.setPhone(request.getParameter("phone"));
        bookorderbean.setCreditcard(request.getParameter("creditcard"));
        bookorderbean.setTotal(((Double)session.getAttribute("total")).doubleValue());
//表单信息保存在 session 中，供 bye.jsp 使用
        System.out.println(bookorderbean);
        session.setAttribute("order",bookorderbean);
        OrderOperation op = new OrderOperation(); //创建保存订单的操作类对象
        op.saveOrder(bookorderbean); //将订单信息保存到数据库
//转显示订单信息页面
        request.getRequestDispatcher("bye.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request,response);
    }
}
