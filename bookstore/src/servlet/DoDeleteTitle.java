package servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

import bean.*;
@WebServlet(name = "DoDeleteTitle", value = "/DoDeleteTitle")
public class DoDeleteTitle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String isbn=request.getParameter("isbn");
        TitleDao titleDao=new TitleDaoImpl();
        //call the delete in db
        int n=titleDao.delete(isbn);
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
