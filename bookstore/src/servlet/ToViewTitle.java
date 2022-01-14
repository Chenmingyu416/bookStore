package servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import bean.*;

@WebServlet(name = "ToViewTitle", value = "/ToViewTitle")
public class ToViewTitle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String isbn=request.getParameter("isbn");
        TitleDao titleDao=new TitleDaoImpl();
        //call the findByIsbn in db
        Title titles=titleDao.findByIsbn(isbn);
        //store the title bean in session
        HttpSession session=request.getSession();
        //System.out.println(titles.toString());
        session.setAttribute("titles",titles);

        //forward to display jsp
        request.getRequestDispatcher("detail.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request,response);
    }
}
