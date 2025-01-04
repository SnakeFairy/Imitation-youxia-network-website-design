package Servlet;

import Bean.Login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

@WebServlet(description = "The DeleteGames Servlet",urlPatterns = {"/DeleteGames"})
public class DeleteGames extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        try {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            String ID = request.getParameter("ID");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            Class.forName("com.mysql.jdbc.Driver");
            String strConn = "jdbc:mysql://localhost:3306/huaguo?useUnicode=true&characterEncoding=utf8";
            String strUser = "root";
            String strPwd = "123456";
            Connection connection = DriverManager.getConnection(strConn,strUser,strPwd);
            Statement statement = connection.createStatement();
            String sql = "delete from gamesview where ID='"+ ID +"';";
            int resultSet = statement.executeUpdate(sql);
            if (resultSet > 0){
                out.print("<script>alert('删除成功！')</script>");
                response.setHeader("refresh","0;URL=/GraduateDesign_war_exploded/GameListLogin?username="+username+"&&password="+password+"");
            }else {
                out.print("<script>alert('删除失败')</script>");
                response.setHeader("refresh","0;URL=/GraduateDesign_war_exploded/GameListLogin?username="+username+"&&password="+password+"");
            }
        }catch (Exception e){
            throw new ServletException((e.toString()));
        }
    }
}
