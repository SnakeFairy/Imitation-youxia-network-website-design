package Servlet;

import Bean.Login;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(description = "The GetLogin Servlet", urlPatterns = {"/GameListLogin"})
public class GameListLogin extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Login login = new Login();
        request.setAttribute("Login", login);
        response.setContentType("text/html; charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String level = request.getParameter("level");
        login.setUsername(username);
        login.setPassword(password);
        login.setLevel(level);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/gamelist.jsp");
        dispatcher.forward(request, response);
    }
}
