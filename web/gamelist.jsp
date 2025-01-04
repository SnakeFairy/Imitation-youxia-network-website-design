<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: 26070
  Date: 2022.11.28
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="Login" type="Bean.Login" scope="request"/>
<html>
<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>管理游戏</title>
    <link href="css/listcenter.css" rel="stylesheet" type="text/css">
    <link href="css/downglobal.css" rel="stylesheet" type="text/css">
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="domReady" src="static/js/domReady.js"
            type="text/javascript"></script>
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="jquery" src="static/js/jquery-1.12.1.min.js"
            type="text/javascript"></script>
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="common" src="static/js/common.js"
            type="text/javascript"></script>
</head>
<body>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        String stringConnect = "jdbc:mysql://localhost:3306/huaguo?useUnicode=true&characterEncoding=utf8";
        String stringUser = "root";
        String stringPwd = "123456";
        Connection connection = DriverManager.getConnection(stringConnect,stringUser,stringPwd);
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
        String sql = "Select * from GamesView;";
        ResultSet resultSet = statement.executeQuery(sql);
%>
<div class="ucenter_top">
    <div class="ucenter_nav">
        <div class="ucenter_nav_con">
            <link href="css/news_top_2016.css" rel="stylesheet" type="text/css">
            <script src="js/jquery.min.js" type="text/javascript"></script>
            <div class="ns_t1">
                <div class="t1c">
                    <div class="t1c_l">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/index.jsp" target="_blank">花果山</a></li>
                            <li><a href="${pageContext.request.contextPath}/news.jsp" target="_blank">资讯站</a></li>
                            <li><a href="${pageContext.request.contextPath}/GamesView.jsp" target="_blank">下载站</a></li>
                            <li><a target="_blank"></a></li>
                            <li><a target="_blank"></a></li>
                            <li><a target="_blank"></a></li>
                            <li><a target="_blank"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--头部-end-->
<div class="ucenter_index">
    <div class="ucenter_index_left">
        <div class="ucenter_index_left_top">
            <img class="uc_avatar" src="images/touxiang.jpg">
            <div class="frameholer1">
                <img alt="基础头像框" class="avatarframe" src="images/kuang.png"></div>
            <span><em><jsp:getProperty name="Login" property="username"/></em></span>
            <div><a class="signout" href="login.jsp">退出登录</a></div>
        </div>
        <div class="ucenter_index_left_center">
            <a href="${pageContext.request.contextPath}/AddGameLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>">
                <span class="u_name"></span><em>添加游戏</em>
            </a>
            <a class="active" href="#">
                <span class="u_wan"></span><em>管理游戏</em>
            </a>
            <a href="${pageContext.request.contextPath}/UpdatePassword?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>">
                <span class="u_set"></span><em>修改密码</em>
            </a>
        </div>
    </div>

    <div class="ucenter_index_rightext">
        <div class="grade-out-holder">
            <div class="grade-blk2">
                <div class="grade-blk2-title">游戏列表</div>
                <div class="grade-blk2-table">
                    <div class="grade-blk2-th">
                        <div class="grade-blk2-td">ID</div>
                        <div class="grade-blk2-td">中文名</div>
                        <div class="grade-blk2-td">英文名</div>
                        <div class="grade-blk2-td">游戏类型</div>
                        <div class="grade-blk2-td">开发商</div>
                        <div class="grade-blk2-td">发售日期</div>
                        <div class="grade-blk2-td">发售年份</div>
                        <div class="grade-blk2-td">游戏大小</div>
                        <div class="grade-blk2-td">游戏热度</div>
                        <div class="grade-blk2-td">操作</div>
                    </div>
                    <%
                        int p;
                        int pageCount = 15;
                        int p2 = 1;
                        int rowCount;
                        int intPageCount;

                        String page1 = request.getParameter("page");
                        if (page1 == null){
                            p = 1;
                        }else {
                            p = Integer.parseInt(page1);
                        }
                        resultSet.last();
                        rowCount = resultSet.getRow();
                        intPageCount = (rowCount + pageCount - 1)/pageCount;
                        if (p < 1){
                            p = 1;
                        }
                        if (p > intPageCount) {
                            p = intPageCount;
                        }
                        resultSet.beforeFirst();
                        while (resultSet.next()){
                            if (p2 > (p-1) * pageCount && p2 <= p * pageCount){
                    %>
                    <div class="grade-blk2-tr">
                        <div class="grade-blk2-td"><%=resultSet.getInt("ID")%></div>
                        <div class="grade-blk2-td"><%=resultSet.getString("ZhName")%></div>
                        <div class="grade-blk2-td"><%=resultSet.getString("EnName")%></div>
                        <div class="grade-blk2-td"><%=resultSet.getString("Type")%></div>
                        <div class="grade-blk2-td"><%=resultSet.getString("Developer")%></div>
                        <div class="grade-blk2-td"><%=resultSet.getString("Date")%></div>
                        <div class="grade-blk2-td"><%=resultSet.getString("Year")%></div>
                        <div class="grade-blk2-td"><%=resultSet.getDouble("Size")%></div>
                        <div class="grade-blk2-td"><%=resultSet.getInt("Popularity")%></div>
                        <div class="grade-blk2-td"><a href="${pageContext.request.contextPath}/updategame.jsp?ID=<%=resultSet.getInt("ID")%>&&username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>">修改</a></div>
                        <div class="grade-blk2-td"><a href="${pageContext.request.contextPath}/DeleteGames?ID=<%=resultSet.getInt("ID")%>&&username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>">删除</a></div>
                    </div>
                    <%
                            }

                            p2++;
                        }
                    %>
                    <div class="page-container">
                        第<%=p%>页 共<%=intPageCount%>页&nbsp;&nbsp;
                        <%if (p == 1){%>
                        <a class="checked" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=1">1</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=2">2</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=3">3</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=4">4</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=5">5</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=6">6</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=7">7</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=8">8</a>
                        <a class="page-next" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=<%=p+1%>">下一页</a>
                        <a class="page-last" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=<%=intPageCount%>">尾页</a>
                        <%}%>
                        <%if (p == 2){%>
                        <a class="page-first" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=1">首页</a>
                        <a class="page-prev" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=<%=p-1%>">上一页</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=1">1</a>
                        <a class="checked" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=2">2</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=3">3</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=4">4</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=5">5</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=6">6</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=7">7</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=8">8</a>
                        <a class="page-next" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=<%=p+1%>">下一页</a>
                        <a class="page-last" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=<%=intPageCount%>">尾页</a>
                        <%}%>
                        <%if (p == 3){%>
                        <a class="page-first" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=1">首页</a>
                        <a class="page-prev" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=<%=p-1%>">上一页</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=1">1</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=2">2</a>
                        <a class="checked" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=3">3</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=4">4</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>">5</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>">6</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>">7</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>">8</a>
                        <a class="page-next" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=<%=p+1%>">下一页</a>
                        <a class="page-last" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=<%=intPageCount%>">尾页</a>
                        <%}%>
                        <%if (p == 4){%>
                        <a class="page-first" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=1">首页</a>
                        <a class="page-prev" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=<%=p-1%>">上一页</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=1">1</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=2">2</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=3">3</a>
                        <a class="checked" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=4">4</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>">5</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>">6</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>">7</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>">8</a>
                        <a class="page-next" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=<%=p+1%>">下一页</a>
                        <a class="page-last" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&page=<%=intPageCount%>">尾页</a>
                        <%}%>
                        <%if (p == 5){%>
                        <a class="page-first" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=1">首页</a>
                        <a class="page-prev" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=<%=p-1%>">上一页</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=1">1</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=2">2</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=3">3</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=4">4</a>
                        <a class="checked" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=5">5</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=6">6</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=7">7</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=8">8</a>
                        <a class="page-next" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=<%=p+1%>">下一页</a>
                        <a class="page-last" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=<%=intPageCount%>">尾页</a>
                        <%}%>
                        <%if (p == 6){%>
                        <a class="page-first" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=1">首页</a>
                        <a class="page-prev" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=<%=p-1%>">上一页</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=1">1</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=2">2</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=3">3</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=4">4</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=5">5</a>
                        <a class="checked" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=6">6</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=7">7</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=8">8</a>
                        <a class="page-next" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=<%=p+1%>">下一页</a>
                        <a class="page-last" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=<%=intPageCount%>">尾页</a>
                        <%}%>
                        <%if (p == 7){%>
                        <a class="page-first" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=1">首页</a>
                        <a class="page-prev" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=<%=p-1%>">上一页</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=1">1</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=2">2</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=3">3</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=4">4</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=5">5</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=6">6</a>
                        <a class="checked" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=7">7</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=8">8</a>
                        <a class="page-next" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=<%=p+1%>">下一页</a>
                        <a class="page-last" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=<%=intPageCount%>">尾页</a>
                        <%}%>
                        <%if (p == intPageCount){%>
                        <a class="page-first" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=1">首页</a>
                        <a class="page-prev" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=<%=p-1%>">上一页</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=1">1</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=2">2</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=3">3</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=4">4</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=5">5</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=6">6</a>
                        <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=7">7</a>
                        <a class="checked" href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>&&page=8">8</a>
                        <%}%>
                    </div>
                    <%
                        resultSet.close();
                        statement.close();
                        connection.close();
                        }catch (ClassNotFoundException e){
                            out.println(e.getMessage());
                        }catch (SQLException e){
                            out.println(e.getMessage());
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
</div>
<!--尾部-start-->
<div class="ucenter_foot">
    <div class="ucenter_foot_con">CopyRight © 2001-2022 GameHuaGuoHell.Net All Right Reserved</div>
    <div class="ucenter_foot_con">游戏花果山 版权所有</div>
</div>
<!--尾部-end-->
</body>
</html>
