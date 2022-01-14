package servlet;

import bean.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ToEditTitle", value = "/ToEditTitle")
public class ToEditTitle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String isbn=request.getParameter("isbn");
        TitleDao titleDao=new TitleDaoImpl();
        //use findByIsbn method in db
        Title title=titleDao.findByIsbn(isbn);
        request.setAttribute("title",title);
        request.getRequestDispatcher("editTitle.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request,response);
    }
}
