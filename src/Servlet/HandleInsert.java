package Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(description = "The HandleInsert Servlet",urlPatterns = {"/HandleInsert"})
public class HandleInsert extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
         request.setCharacterEncoding("UTF-8");
         try {
             response.setContentType("text/html;charset=UTF-8");
             PrintWriter out = response.getWriter();
             String username = request.getParameter("username");
             String password = request.getParameter("password");
             String level = request.getParameter("level");
             String ZhName = request.getParameter("ZhName");
             String EnName = request.getParameter("EnName");
             String Type = request.getParameter("Type");
             String Developer = request.getParameter("Developer");
             String Date = request.getParameter("Date");
             String Year = request.getParameter("Year");
             Double Size = Double.valueOf(request.getParameter("Size"));
             Integer Popularity = Integer.parseInt(request.getParameter("Popularity"));
             Class.forName("com.mysql.jdbc.Driver");
             String strConn = "jdbc:mysql://localhost:3306/huaguo?useUnicode=true&characterEncoding=utf8";
             String strUser = "root";
             String strPwd = "123456";
             Connection connection = DriverManager.getConnection(strConn,strUser,strPwd);
             Statement statement = connection.createStatement();
             String sql = "insert into gamesview values (null,'"+ZhName+"','"+EnName+"','"+Type+"','"+Developer+"','"+Date+"','"+Year+"','"+Size+"','"+Popularity+"')";
             int resultSet = statement.executeUpdate(sql);
             if (resultSet > 0){
                 out.print("<script>alert('添加成功！')</script>");
                 response.setHeader("refresh","0;URL=/GraduateDesign_war_exploded/GameListLogin?username="+username+"&&password="+password+"");
             }else {
                 out.print("<script>alert('添加失败!')</script>");
                 response.setHeader("refresh","0;URL=add.jsp");
             }
             statement.close();
             connection.close();
         }catch (Exception e){
             throw new ServletException(e.toString());
         }
    }
}
