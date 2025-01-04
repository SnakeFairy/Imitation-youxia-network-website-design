package Servlet;

import Bean.UpdatePwd;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Objects;

@WebServlet(description = "The HandleUpdatePwd Servlet",urlPatterns = {"/HandleUpdatePwd"})
public class HandleUpdatePwd extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doPost(request,response);
    }
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        UpdatePwd updatePwd = new UpdatePwd();
        request.setAttribute("Update",updatePwd);
        try{
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            String username = request.getParameter("username");
            String oldpwd = request.getParameter("oldpwd");
            String newpwd = request.getParameter("newpwd");
            Class.forName("com.mysql.jdbc.Driver");
            String strConn = "jdbc:mysql://localhost:3306/huaguo?useUnicode=true&characterEncoding=utf8";
            String strUser = "root";
            String strPwd = "123456";
            Connection connection = DriverManager.getConnection(strConn,strUser,strPwd);
            Statement statement = connection.createStatement();
            String sql = "update admin set password='"+newpwd+"'where password='"+oldpwd+"';";
            int resultSet = statement.executeUpdate(sql);
            if (Objects.equals(newpwd, oldpwd)){
                out.print("<script>alert('新密码与旧密码一致！')</script>");
                response.setHeader("refresh","0;URL=/GraduateDesign_war_exploded/UpdatePassword?username="+ username +"&&password="+ oldpwd +"");
            }else {
                if (resultSet > 0){
                    updatePwd.setNewpwd(newpwd);
                    out.print("<script>alert('修改成功！')</script>");
                    response.setHeader("refresh","0;URL=login.jsp");
                }else {
                    out.print("<script>alert('修改失败!')</script>");
                    response.setHeader("refresh","0;URL=/GraduateDesign_war_exploded/HandleLogin");
                }
            }
            statement.close();
            connection.close();
        }catch (Exception e){
            throw new ServletException(e.toString());
        }

        }
    }

