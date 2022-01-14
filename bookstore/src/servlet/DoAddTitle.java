package servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

import bean.*;
@WebServlet(name = "DoAddTitle", value = "/DoAddTitle")
public class DoAddTitle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String isbn=request.getParameter("isbn");
        String booktitle=request.getParameter("title");
        String copyright=request.getParameter("copyright");
        int editionNumber=Integer.parseInt(request.getParameter("editionNumber"));
        int publisherId=Integer.parseInt(request.getParameter("publisherId"));
        float price=Float.parseFloat(request.getParameter("price"));

        //add data in bean Title
        Title titlebean=new Title();
        titlebean.setIsbn(isbn);
        titlebean.setTitle(booktitle);
        titlebean.setCopyright(copyright);
        titlebean.setEditionNumber(editionNumber);
        titlebean.setPublisherId(publisherId);
        titlebean.setPrice(price);

        //call add in db
        TitleDao titleDao=new TitleDaoImpl();
        int n=titleDao.add(titlebean);

        if(n>0)
            response.sendRedirect("listBook.jsp");
        else
            response.sendRedirect("error.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request,response);
    }
}
