package Servlet;

import Bean.Login;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(description = "The HandleLogin Servlet", urlPatterns = {"/HandleLogin"})
public class HandleLogin extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doPost(request,response);
    }
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        Login login = new Login();
        request.setAttribute("Login",login);
        try{
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            Class.forName("com.mysql.jdbc.Driver");
            String strConn = "jdbc:mysql://localhost:3306/huaguo?useUnicode=true&characterEncoding=utf8";
            String strUser = "root";
            String strPwd = "123456";
            Connection connection = DriverManager.getConnection(strConn, strUser, strPwd);
            Statement statement = connection.createStatement();
            String sql = "select * from admin where username='"+ username +"'and password='"+password+"'";
            ResultSet resultSet = statement.executeQuery(sql);
            if (resultSet.next()){
                login.setUsername(username);
                login.setPassword(password);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/add.jsp");
                dispatcher.forward(request, response);
/*                out.print("<script>alert('登录成功')</script>");
                response.setHeader("refresh","0;URL=security.jsp");*/
            }else {
                out.print("<script>alert('登录失败，请重新登录')</script>");
                response.setHeader("refresh","0;URL=login.jsp");
            }
            statement.close();
            connection.close();
        }catch (ClassNotFoundException | SQLException ignored) {}
    }
}
