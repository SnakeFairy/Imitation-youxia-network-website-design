package Servlet;

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

@WebServlet(description = "The UpdateGame Servlet",urlPatterns = {"/UpdateGame"})
public class UpdateGame extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");

        try {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            String username = "test";
            String password = "test123";
            Integer ID = Integer.valueOf(request.getParameter("ID"));
            String ZhName = request.getParameter("ZhName");
            String EnName = request.getParameter("EnName");
            String Type = request.getParameter("Type");
            String Developer = request.getParameter("Developer");
            String Date = request.getParameter("Date");
            String Year = request.getParameter("Year");
            Double Size = Double.valueOf(request.getParameter("Size"));
            Integer Popularity = Integer.valueOf(request.getParameter("Popularity"));
            Class.forName("com.mysql.jdbc.Driver");
            String strConn = "jdbc:mysql://localhost:3306/huaguo?useUnicode=true&characterEncoding=utf8";
            String strUser = "root";
            String strPwd = "123456";
            Connection connection = DriverManager.getConnection(strConn,strUser,strPwd);
            Statement statement = connection.createStatement();
            String sql = "update gamesview set ZhName='"+ZhName+"',EnName='"+EnName+"',Type='"+Type+"',Developer='"+Developer+"',Date='"+Date+"',Year='"+Year+"',Size='"+Size+"',Popularity='"+Popularity+"'where ID='"+ID+"';";
            int resultSet = statement.executeUpdate(sql);
            if (resultSet > 0){
                out.print("<script>alert('修改成功!')</script>");
                response.setHeader("refresh","0;URL=/GraduateDesign_war_exploded/GameListLogin?username="+username+"&&password="+password+"");
            }else {
                out.print("<script>alert('修改失败！')</script>");
                response.setHeader("refresh","0;URL=/GraduateDesign_war_exploded/GameListLogin?username="+username+"&&password="+password+"");
            }
        }catch (Exception e){
            throw new ServletException(e.toString());
        }

    }
}
