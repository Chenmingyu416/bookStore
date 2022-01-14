package servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import bean.*;

@WebServlet(name = "AddTitleToCart", value = "/AddTitleToCart")
public class AddTitleToCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        RequestDispatcher dispatcher;
        // 如果 session 不存在，转到浏览图书（“viewBook.jsp”）页面
        if (session == null) {
            dispatcher = request.getRequestDispatcher("/viewBook.jsp");
            dispatcher.forward(request, response);
        }
        // 从 session 中取出购物车（"cart"），和要添加的图书对象（"titles"）
        Map cart = (Map) session.getAttribute("cart");
        Title titles = (Title) session.getAttribute("titles");
        // 如果购物车不存在，创建购物车
        if (cart == null) {
            cart = new HashMap();
            // 将购物车存入 session 之中
            session.setAttribute("cart", cart);
        }
        // 从购物车对象（“cart”）中根据图书书号取出相应的购书项对象
        String isbn = titles.getIsbn();
        CartItem cartItem = (CartItem) cart.get(isbn);

        if (cartItem != null) // 如果购物车中已有购书项对象，则更新其选购数量.
            cartItem.setQuantity(cartItem.getQuantity() + 1);
        else{ // 否则，创建一个购书项对象条目到购物车（Map cart）中.
            CartItem cartItem1=new CartItem();
            cartItem1.setTitles(titles);
            cartItem1.setQuantity(1);
            cart.put(titles.getIsbn(), cartItem1);
        }


        // 成功添加到购物车后，转向 viewCart.jsp 显示购物车
        dispatcher = request.getRequestDispatcher("viewCart.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request,response);
    }
}
