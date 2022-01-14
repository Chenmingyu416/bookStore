package servlet;

import bean.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DoSaveEditTitle", value = "/DoSaveEditTitle")
public class DoSaveEditTitle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String isbn=request.getParameter("isbn");
        String title=request.getParameter("title");
        String copyright=request.getParameter("copyright");
        int editionNumber=Integer.parseInt(request.getParameter("editionNumber"));
        int publisherId=Integer.parseInt(request.getParameter("publisherId"));
        float price=Float.parseFloat(request.getParameter("price"));

        //add data in bean class
        Title titlebean=new Title();
        titlebean.setIsbn(isbn);
        titlebean.setTitle(title);
        titlebean.setCopyright(copyright);
        titlebean.setEditionNumber(editionNumber);
        titlebean.setPublisherId(publisherId);
        titlebean.setPrice(price);

        //call the update method
        TitleDao titleDao=new TitleDaoImpl();
        int n=titleDao.update(titlebean);
        if(n>0){
            response.sendRedirect("listBook.jsp");
        }
        else{
            response.sendRedirect("error.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
