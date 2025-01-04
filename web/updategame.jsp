<%@ page import="java.sql.*" %>
<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: 26070
  Date: 2022.11.27
  Time: 18:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>修改游戏</title>
    <link href="css/uncenter.css" rel="stylesheet" type="text/css">
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="profile" src="static/js/profile.js" type="text/javascript"></script>
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="domReady" src="static/js/domReady.js" type="text/javascript"></script>
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="jquery" src="static/js/jquery-1.12.1.min.js" type="text/javascript"></script>
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="validate" src="static/js/jquery.validate.min.js" type="text/javascript"></script>
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="common" src="static/js/common.js" type="text/javascript"></script>
</head>
<body>
<%
    try{
        Integer ID = Integer.valueOf(request.getParameter("ID"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");
        String strConn = "jdbc:mysql://localhost:3306/huaguo?useUnicode=true&characterEncoding=utf8";
        String strUser = "root";
        String strPwd = "123456";
        Connection connection = DriverManager.getConnection(strConn, strUser, strPwd);
        Statement statement = connection.createStatement();
        String sql = "select * from gamesview where id="+ID+";";
        ResultSet resultSet = statement.executeQuery(sql);
        resultSet.next();
%>
<!--头部-start-->
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
            <span><em><%=username%></em></span>
            <div><a class="signout" href="login.jsp">退出登录</a></div>
        </div>
        <div class="ucenter_index_left_center">
            <a href="${pageContext.request.contextPath}/AddGameLogin?username=<%=username%>&&password=<%=password%>">
                <span class="u_name"></span><em>添加游戏</em>
            </a>
            <a href="${pageContext.request.contextPath}/GameListLogin?username=<%=username%>&&password=<%=password%>">
                <span class="u_wan"></span><em>管理游戏</em>
            </a>
            <a href="${pageContext.request.contextPath}/UpdatePassword?username=<%=username%>&&password=<%=password%>">
                <span class="u_set"></span><em>修改密码</em>
            </a>
            <a class="active" href="#">
                <span class="u_qqupdate"></span><em>修改游戏</em>
            </a>
        </div>
    </div>
    <div class="ucenter_index_rightext">
        <div class="title profiletitle"><span></span><em></em></div>
        <div class="profileform">
            <%if (Objects.equals(resultSet.getString("Type"), "角色扮演RPG")){%>
            <form action="${pageContext.request.contextPath}/UpdateGame?username=test&&password=test123">
                <div class="inner-input">
                    <span>ID：</span>
                    <input class="text_inner" name="ID" placeholder="请输入ID" value="<%=resultSet.getInt("ID")%>" readonly>
                </div>
                <div class="inner-input">
                    <span>游戏中文名：</span>
                    <input class="text_inner" name="ZhName" placeholder="请输入游戏中文名" value="<%=resultSet.getString("ZhName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏英文名：</span>
                    <input class="text_inner" name="EnName" placeholder="请输入游戏英文名" value="<%=resultSet.getString("EnName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏类型：</span>
                    <select class="select_inner" name="Type" >
                        <option selected value="角色扮演RPG">角色扮演RPG</option>
                        <option value="动作游戏ACT">动作游戏ACT</option>
                        <option value="第一人称射击FPS">第一人称射击FPS</option>
                        <option value="第三人称射击TPS">第三人称射击TPS</option>
                        <option value="策略战棋SLG">策略战棋SLG</option>
                        <option value="赛车竞速RAC">赛车竞速RAC</option>
                        <option value="体育竞技SPG">体育竞技SPG</option>
                        <option value="模拟经营SIM">模拟经营SIM</option>
                        <option value="格斗游戏FTG">格斗游戏FTG</option>
                        <option value="动作射击STG">动作射击STG</option>
                        <option value="休闲益智PUZ">休闲益智PUZ</option>
                        <option value="即时战略RTS">即时战略RTS</option>
                        <option value="冒险解谜AVG">冒险解谜AVG</option>
                    </select>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏厂商：</span>
                        <input class="text_inner" name="Developer" value="<%=resultSet.getString("Developer")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <span>发行时间：</span>
                    <input class="text_inner" name="Date" placeholder="格式为YYYY-MM-DD" value="<%=resultSet.getString("Date")%>">
                </div>
                <div class="inner-input">
                    <span>发行年份：</span>
                    <input class="text_inner" name="Year" placeholder="请输入发行年份" value="<%=resultSet.getString("Year")%>">
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏大小：</span>
                        <input class="text_inner" name="Size" value="<%=resultSet.getDouble("Size")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏热度：</span>
                        <input class="text_inner" name="Popularity" value="<%=resultSet.getInt("Popularity")%>">
                    </div>
                </div>
                <div class="inner_btn">
                    <input type="submit" value="修改">
                </div>
            </form>
            <%}else if (Objects.equals(resultSet.getString("Type"), "动作游戏ACT")){%>
            <form action="${pageContext.request.contextPath}/UpdateGame?username=<%=username%>&&password=<%=password%>">
                <div class="inner-input">
                    <span>ID：</span>
                    <input class="text_inner" name="ID" placeholder="请输入ID" value="<%=resultSet.getInt("ID")%>" readonly>
                </div>
                <div class="inner-input">
                    <span>游戏中文名：</span>
                    <input class="text_inner" name="ZhName" placeholder="请输入游戏中文名" value="<%=resultSet.getString("ZhName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏英文名：</span>
                    <input class="text_inner" name="EnName" placeholder="请输入游戏英文名" value="<%=resultSet.getString("EnName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏类型：</span>
                    <select class="select_inner" name="Type" >
                        <option value="角色扮演RPG">角色扮演RPG</option>
                        <option selected value="动作游戏ACT">动作游戏ACT</option>
                        <option value="第一人称射击FPS">第一人称射击FPS</option>
                        <option value="第三人称射击TPS">第三人称射击TPS</option>
                        <option value="策略战棋SLG">策略战棋SLG</option>
                        <option value="赛车竞速RAC">赛车竞速RAC</option>
                        <option value="体育竞技SPG">体育竞技SPG</option>
                        <option value="模拟经营SIM">模拟经营SIM</option>
                        <option value="格斗游戏FTG">格斗游戏FTG</option>
                        <option value="动作射击STG">动作射击STG</option>
                        <option value="休闲益智PUZ">休闲益智PUZ</option>
                        <option value="即时战略RTS">即时战略RTS</option>
                        <option value="冒险解谜AVG">冒险解谜AVG</option>
                    </select>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏厂商：</span>
                        <input class="text_inner" name="Developer" value="<%=resultSet.getString("Developer")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <span>发行时间：</span>
                    <input class="text_inner" name="Date" placeholder="格式为YYYY-MM-DD" value="<%=resultSet.getString("Date")%>">
                </div>
                <div class="inner-input">
                    <span>发行年份：</span>
                    <input class="text_inner" name="Year" placeholder="请输入发行年份" value="<%=resultSet.getString("Year")%>">
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏大小：</span>
                        <input class="text_inner" name="Size" value="<%=resultSet.getDouble("Size")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏热度：</span>
                        <input class="text_inner" name="Popularity" value="<%=resultSet.getInt("Popularity")%>">
                    </div>
                </div>
                <div class="inner_btn">
                    <input type="submit" value="修改">
                </div>
            </form>
            <%}else if (Objects.equals(resultSet.getString("Type"), "第三人称射击TPS")){%>
            <form action="${pageContext.request.contextPath}/UpdateGame?username=<%=username%>&&password=<%=password%>" method="post">
                <div class="inner-input">
                    <span>ID：</span>
                    <input class="text_inner" name="ID" placeholder="请输入ID" value="<%=resultSet.getInt("ID")%>" readonly>
                </div>
                <div class="inner-input">
                    <span>游戏中文名：</span>
                    <input class="text_inner" name="ZhName" placeholder="请输入游戏中文名" value="<%=resultSet.getString("ZhName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏英文名：</span>
                    <input class="text_inner" name="EnName" placeholder="请输入游戏英文名" value="<%=resultSet.getString("EnName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏类型：</span>
                    <select class="select_inner" name="Type" >
                        <option value="角色扮演RPG">角色扮演RPG</option>
                        <option value="动作游戏ACT">动作游戏ACT</option>
                        <option value="第一人称射击FPS">第一人称射击FPS</option>
                        <option selected value="第三人称射击TPS">第三人称射击TPS</option>
                        <option value="策略战棋SLG">策略战棋SLG</option>
                        <option value="赛车竞速RAC">赛车竞速RAC</option>
                        <option value="体育竞技SPG">体育竞技SPG</option>
                        <option value="模拟经营SIM">模拟经营SIM</option>
                        <option value="格斗游戏FTG">格斗游戏FTG</option>
                        <option value="动作射击STG">动作射击STG</option>
                        <option value="休闲益智PUZ">休闲益智PUZ</option>
                        <option value="即时战略RTS">即时战略RTS</option>
                        <option value="冒险解谜AVG">冒险解谜AVG</option>
                    </select>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏厂商：</span>
                        <input class="text_inner" name="Developer" value="<%=resultSet.getString("Developer")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <span>发行时间：</span>
                    <input class="text_inner" name="Date" placeholder="格式为YYYY-MM-DD" value="<%=resultSet.getString("Date")%>">
                </div>
                <div class="inner-input">
                    <span>发行年份：</span>
                    <input class="text_inner" name="Year" placeholder="请输入发行年份" value="<%=resultSet.getString("Year")%>">
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏大小：</span>
                        <input class="text_inner" name="Size" value="<%=resultSet.getDouble("Size")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏热度：</span>
                        <input class="text_inner" name="Popularity" value="<%=resultSet.getInt("Popularity")%>">
                    </div>
                </div>
                <div class="inner_btn">
                    <input type="submit" value="修改">
                </div>
            </form>
            <%}else if (Objects.equals(resultSet.getString("Type"), "第一人称射击FPS")){%>
            <form action="${pageContext.request.contextPath}/UpdateGame?username=<%=username%>&&password=<%=password%>">
                <div class="inner-input">
                    <span>ID：</span>
                    <input class="text_inner" name="ID" placeholder="请输入ID" value="<%=resultSet.getInt("ID")%>" readonly>
                </div>
                <div class="inner-input">
                    <span>游戏中文名：</span>
                    <input class="text_inner" name="ZhName" placeholder="请输入游戏中文名" value="<%=resultSet.getString("ZhName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏英文名：</span>
                    <input class="text_inner" name="EnName" placeholder="请输入游戏英文名" value="<%=resultSet.getString("EnName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏类型：</span>
                    <select class="select_inner" name="Type" >
                        <option value="角色扮演RPG">角色扮演RPG</option>
                        <option value="动作游戏ACT">动作游戏ACT</option>
                        <option selected value="第一人称射击FPS">第一人称射击FPS</option>
                        <option value="第三人称射击TPS">第三人称射击TPS</option>
                        <option value="策略战棋SLG">策略战棋SLG</option>
                        <option value="赛车竞速RAC">赛车竞速RAC</option>
                        <option value="体育竞技SPG">体育竞技SPG</option>
                        <option value="模拟经营SIM">模拟经营SIM</option>
                        <option value="格斗游戏FTG">格斗游戏FTG</option>
                        <option value="动作射击STG">动作射击STG</option>
                        <option value="休闲益智PUZ">休闲益智PUZ</option>
                        <option value="即时战略RTS">即时战略RTS</option>
                        <option value="冒险解谜AVG">冒险解谜AVG</option>
                    </select>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏厂商：</span>
                        <input class="text_inner" name="Developer" value="<%=resultSet.getString("Developer")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <span>发行时间：</span>
                    <input class="text_inner" name="Date" placeholder="格式为YYYY-MM-DD" value="<%=resultSet.getString("Date")%>">
                </div>
                <div class="inner-input">
                    <span>发行年份：</span>
                    <input class="text_inner" name="Year" placeholder="请输入发行年份" value="<%=resultSet.getString("Year")%>">
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏大小：</span>
                        <input class="text_inner" name="Size" value="<%=resultSet.getDouble("Size")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏热度：</span>
                        <input class="text_inner" name="Popularity" value="<%=resultSet.getInt("Popularity")%>">
                    </div>
                </div>
                <div class="inner_btn">
                    <input type="submit" value="修改">
                </div>
            </form>
            <%}else if (Objects.equals(resultSet.getString("Type"), "策略战棋SLG")){%>
            <form action="${pageContext.request.contextPath}/UpdateGame?username=<%=username%>&&password=<%=password%>">
                <div class="inner-input">
                    <span>ID：</span>
                    <input class="text_inner" name="ID" placeholder="请输入ID" value="<%=resultSet.getInt("ID")%>" readonly>
                </div>
                <div class="inner-input">
                    <span>游戏中文名：</span>
                    <input class="text_inner" name="ZhName" placeholder="请输入游戏中文名" value="<%=resultSet.getString("ZhName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏英文名：</span>
                    <input class="text_inner" name="EnName" placeholder="请输入游戏英文名" value="<%=resultSet.getString("EnName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏类型：</span>
                    <select class="select_inner" name="Type" >
                        <option value="角色扮演RPG">角色扮演RPG</option>
                        <option value="动作游戏ACT">动作游戏ACT</option>
                        <option value="第一人称射击FPS">第一人称射击FPS</option>
                        <option value="第三人称射击TPS">第三人称射击TPS</option>
                        <option selected value="策略战棋SLG">策略战棋SLG</option>
                        <option value="赛车竞速RAC">赛车竞速RAC</option>
                        <option value="体育竞技SPG">体育竞技SPG</option>
                        <option value="模拟经营SIM">模拟经营SIM</option>
                        <option value="格斗游戏FTG">格斗游戏FTG</option>
                        <option value="动作射击STG">动作射击STG</option>
                        <option value="休闲益智PUZ">休闲益智PUZ</option>
                        <option value="即时战略RTS">即时战略RTS</option>
                        <option value="冒险解谜AVG">冒险解谜AVG</option>
                    </select>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏厂商：</span>
                        <input class="text_inner" name="Developer" value="<%=resultSet.getString("Developer")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <span>发行时间：</span>
                    <input class="text_inner" name="Date" placeholder="格式为YYYY-MM-DD" value="<%=resultSet.getString("Date")%>">
                </div>
                <div class="inner-input">
                    <span>发行年份：</span>
                    <input class="text_inner" name="Year" placeholder="请输入发行年份" value="<%=resultSet.getString("Year")%>">
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏大小：</span>
                        <input class="text_inner" name="Size" value="<%=resultSet.getDouble("Size")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏热度：</span>
                        <input class="text_inner" name="Popularity" value="<%=resultSet.getInt("Popularity")%>">
                    </div>
                </div>
                <div class="inner_btn">
                    <input type="submit" value="修改">
                </div>
            </form>
            <%}else if (Objects.equals(resultSet.getString("Type"), "赛车竞速RAC")){%>
            <form action="${pageContext.request.contextPath}/UpdateGame?username=<%=username%>&&password=<%=password%>">
                <div class="inner-input">
                    <span>ID：</span>
                    <input class="text_inner" name="ID" placeholder="请输入ID" value="<%=resultSet.getInt("ID")%>" readonly>
                </div>
                <div class="inner-input">
                    <span>游戏中文名：</span>
                    <input class="text_inner" name="ZhName" placeholder="请输入游戏中文名" value="<%=resultSet.getString("ZhName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏英文名：</span>
                    <input class="text_inner" name="EnName" placeholder="请输入游戏英文名" value="<%=resultSet.getString("EnName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏类型：</span>
                    <select class="select_inner" name="Type" >
                        <option value="角色扮演RPG">角色扮演RPG</option>
                        <option value="动作游戏ACT">动作游戏ACT</option>
                        <option value="第一人称射击FPS">第一人称射击FPS</option>
                        <option value="第三人称射击TPS">第三人称射击TPS</option>
                        <option value="策略战棋SLG">策略战棋SLG</option>
                        <option selected value="赛车竞速RAC">赛车竞速RAC</option>
                        <option value="体育竞技SPG">体育竞技SPG</option>
                        <option value="模拟经营SIM">模拟经营SIM</option>
                        <option value="格斗游戏FTG">格斗游戏FTG</option>
                        <option value="动作射击STG">动作射击STG</option>
                        <option value="休闲益智PUZ">休闲益智PUZ</option>
                        <option value="即时战略RTS">即时战略RTS</option>
                        <option value="冒险解谜AVG">冒险解谜AVG</option>
                    </select>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏厂商：</span>
                        <input class="text_inner" name="Developer" value="<%=resultSet.getString("Developer")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <span>发行时间：</span>
                    <input class="text_inner" name="Date" placeholder="格式为YYYY-MM-DD" value="<%=resultSet.getString("Date")%>">
                </div>
                <div class="inner-input">
                    <span>发行年份：</span>
                    <input class="text_inner" name="Year" placeholder="请输入发行年份" value="<%=resultSet.getString("Year")%>">
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏大小：</span>
                        <input class="text_inner" name="Size" value="<%=resultSet.getDouble("Size")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏热度：</span>
                        <input class="text_inner" name="Popularity" value="<%=resultSet.getInt("Popularity")%>">
                    </div>
                </div>
                <div class="inner_btn">
                    <input type="submit" value="修改">
                </div>
            </form>
            <%}else if (Objects.equals(resultSet.getString("Type"), "体育竞技SPG")){%>
            <form action="${pageContext.request.contextPath}/UpdateGame?username=<%=username%>&&password=<%=password%>">
                <div class="inner-input">
                    <span>ID：</span>
                    <input class="text_inner" name="ID" placeholder="请输入ID" value="<%=resultSet.getInt("ID")%>" readonly>
                </div>
                <div class="inner-input">
                    <span>游戏中文名：</span>
                    <input class="text_inner" name="ZhName" placeholder="请输入游戏中文名" value="<%=resultSet.getString("ZhName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏英文名：</span>
                    <input class="text_inner" name="EnName" placeholder="请输入游戏英文名" value="<%=resultSet.getString("EnName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏类型：</span>
                    <select class="select_inner" name="Type" >
                        <option value="角色扮演RPG">角色扮演RPG</option>
                        <option value="动作游戏ACT">动作游戏ACT</option>
                        <option value="第一人称射击FPS">第一人称射击FPS</option>
                        <option value="第三人称射击TPS">第三人称射击TPS</option>
                        <option value="策略战棋SLG">策略战棋SLG</option>
                        <option value="赛车竞速RAC">赛车竞速RAC</option>
                        <option selected value="体育竞技SPG">体育竞技SPG</option>
                        <option value="模拟经营SIM">模拟经营SIM</option>
                        <option value="格斗游戏FTG">格斗游戏FTG</option>
                        <option value="动作射击STG">动作射击STG</option>
                        <option value="休闲益智PUZ">休闲益智PUZ</option>
                        <option value="即时战略RTS">即时战略RTS</option>
                        <option value="冒险解谜AVG">冒险解谜AVG</option>
                    </select>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏厂商：</span>
                        <input class="text_inner" name="Developer" value="<%=resultSet.getString("Developer")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <span>发行时间：</span>
                    <input class="text_inner" name="Date" placeholder="格式为YYYY-MM-DD" value="<%=resultSet.getString("Date")%>">
                </div>
                <div class="inner-input">
                    <span>发行年份：</span>
                    <input class="text_inner" name="Year" placeholder="请输入发行年份" value="<%=resultSet.getString("Year")%>">
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏大小：</span>
                        <input class="text_inner" name="Size" value="<%=resultSet.getDouble("Size")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏热度：</span>
                        <input class="text_inner" name="Popularity" value="<%=resultSet.getInt("Popularity")%>">
                    </div>
                </div>
                <div class="inner_btn">
                    <input type="submit" value="修改">
                </div>
            </form>
            <%}else if (Objects.equals(resultSet.getString("Type"), "模拟经营SIM")){%>
            <form action="${pageContext.request.contextPath}/UpdateGame?username=<%=username%>&&password=<%=password%>">
                <div class="inner-input">
                    <span>ID：</span>
                    <input class="text_inner" name="ID" placeholder="请输入ID" value="<%=resultSet.getInt("ID")%>" readonly>
                </div>
                <div class="inner-input">
                    <span>游戏中文名：</span>
                    <input class="text_inner" name="ZhName" placeholder="请输入游戏中文名" value="<%=resultSet.getString("ZhName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏英文名：</span>
                    <input class="text_inner" name="EnName" placeholder="请输入游戏英文名" value="<%=resultSet.getString("EnName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏类型：</span>
                    <select class="select_inner" name="Type" >
                        <option value="角色扮演RPG">角色扮演RPG</option>
                        <option value="动作游戏ACT">动作游戏ACT</option>
                        <option value="第一人称射击FPS">第一人称射击FPS</option>
                        <option value="第三人称射击TPS">第三人称射击TPS</option>
                        <option value="策略战棋SLG">策略战棋SLG</option>
                        <option value="赛车竞速RAC">赛车竞速RAC</option>
                        <option value="体育竞技SPG">体育竞技SPG</option>
                        <option selected value="模拟经营SIM">模拟经营SIM</option>
                        <option value="格斗游戏FTG">格斗游戏FTG</option>
                        <option value="动作射击STG">动作射击STG</option>
                        <option value="休闲益智PUZ">休闲益智PUZ</option>
                        <option value="即时战略RTS">即时战略RTS</option>
                        <option value="冒险解谜AVG">冒险解谜AVG</option>
                    </select>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏厂商：</span>
                        <input class="text_inner" name="Developer" value="<%=resultSet.getString("Developer")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <span>发行时间：</span>
                    <input class="text_inner" name="Date" placeholder="格式为YYYY-MM-DD" value="<%=resultSet.getString("Date")%>">
                </div>
                <div class="inner-input">
                    <span>发行年份：</span>
                    <input class="text_inner" name="Year" placeholder="请输入发行年份" value="<%=resultSet.getString("Year")%>">
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏大小：</span>
                        <input class="text_inner" name="Size" value="<%=resultSet.getDouble("Size")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏热度：</span>
                        <input class="text_inner" name="Popularity" value="<%=resultSet.getInt("Popularity")%>">
                    </div>
                </div>
                <div class="inner_btn">
                    <input type="submit" value="修改">
                </div>
            </form>
            <%}else if (Objects.equals(resultSet.getString("Type"), "格斗游戏FTG")){%>
            <form action="${pageContext.request.contextPath}/UpdateGame?username=<%=username%>&&password=<%=password%>">
                <div class="inner-input">
                    <span>ID：</span>
                    <input class="text_inner" name="ID" placeholder="请输入ID" value="<%=resultSet.getInt("ID")%>" readonly>
                </div>
                <div class="inner-input">
                    <span>游戏中文名：</span>
                    <input class="text_inner" name="ZhName" placeholder="请输入游戏中文名" value="<%=resultSet.getString("ZhName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏英文名：</span>
                    <input class="text_inner" name="EnName" placeholder="请输入游戏英文名" value="<%=resultSet.getString("EnName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏类型：</span>
                    <select class="select_inner" name="Type" >
                        <option value="角色扮演RPG">角色扮演RPG</option>
                        <option value="动作游戏ACT">动作游戏ACT</option>
                        <option value="第一人称射击FPS">第一人称射击FPS</option>
                        <option value="第三人称射击TPS">第三人称射击TPS</option>
                        <option value="策略战棋SLG">策略战棋SLG</option>
                        <option value="赛车竞速RAC">赛车竞速RAC</option>
                        <option value="体育竞技SPG">体育竞技SPG</option>
                        <option value="模拟经营SIM">模拟经营SIM</option>
                        <option selected value="格斗游戏FTG">格斗游戏FTG</option>
                        <option value="动作射击STG">动作射击STG</option>
                        <option value="休闲益智PUZ">休闲益智PUZ</option>
                        <option value="即时战略RTS">即时战略RTS</option>
                        <option value="冒险解谜AVG">冒险解谜AVG</option>
                    </select>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏厂商：</span>
                        <input class="text_inner" name="Developer" value="<%=resultSet.getString("Developer")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <span>发行时间：</span>
                    <input class="text_inner" name="Date" placeholder="格式为YYYY-MM-DD" value="<%=resultSet.getString("Date")%>">
                </div>
                <div class="inner-input">
                    <span>发行年份：</span>
                    <input class="text_inner" name="Year" placeholder="请输入发行年份" value="<%=resultSet.getString("Year")%>">
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏大小：</span>
                        <input class="text_inner" name="Size" value="<%=resultSet.getDouble("Size")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏热度：</span>
                        <input class="text_inner" name="Popularity" value="<%=resultSet.getInt("Popularity")%>">
                    </div>
                </div>
                <div class="inner_btn">
                    <input type="submit" value="修改">
                </div>
            </form>
            <%}else if (Objects.equals(resultSet.getString("Type"), "动作射击STG")){%>
            <form action="${pageContext.request.contextPath}/UpdateGame?username=<%=username%>&&password=<%=password%>">
                <div class="inner-input">
                    <span>ID：</span>
                    <input class="text_inner" name="ID" placeholder="请输入ID" value="<%=resultSet.getInt("ID")%>" readonly>
                </div>
                <div class="inner-input">
                    <span>游戏中文名：</span>
                    <input class="text_inner" name="ZhName" placeholder="请输入游戏中文名" value="<%=resultSet.getString("ZhName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏英文名：</span>
                    <input class="text_inner" name="EnName" placeholder="请输入游戏英文名" value="<%=resultSet.getString("EnName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏类型：</span>
                    <select class="select_inner" name="Type" >
                        <option value="角色扮演RPG">角色扮演RPG</option>
                        <option value="动作游戏ACT">动作游戏ACT</option>
                        <option value="第一人称射击FPS">第一人称射击FPS</option>
                        <option value="第三人称射击TPS">第三人称射击TPS</option>
                        <option value="策略战棋SLG">策略战棋SLG</option>
                        <option value="赛车竞速RAC">赛车竞速RAC</option>
                        <option value="体育竞技SPG">体育竞技SPG</option>
                        <option value="模拟经营SIM">模拟经营SIM</option>
                        <option value="格斗游戏FTG">格斗游戏FTG</option>
                        <option selected value="动作射击STG">动作射击STG</option>
                        <option value="休闲益智PUZ">休闲益智PUZ</option>
                        <option value="即时战略RTS">即时战略RTS</option>
                        <option value="冒险解谜AVG">冒险解谜AVG</option>
                    </select>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏厂商：</span>
                        <input class="text_inner" name="Developer" value="<%=resultSet.getString("Developer")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <span>发行时间：</span>
                    <input class="text_inner" name="Date" placeholder="格式为YYYY-MM-DD" value="<%=resultSet.getString("Date")%>">
                </div>
                <div class="inner-input">
                    <span>发行年份：</span>
                    <input class="text_inner" name="Year" placeholder="请输入发行年份" value="<%=resultSet.getString("Year")%>">
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏大小：</span>
                        <input class="text_inner" name="Size" value="<%=resultSet.getDouble("Size")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏热度：</span>
                        <input class="text_inner" name="Popularity" value="<%=resultSet.getInt("Popularity")%>">
                    </div>
                </div>
                <div class="inner_btn">
                    <input type="submit" value="修改">
                </div>
            </form>
            <%}else if (Objects.equals(resultSet.getString("Type"), "休闲益智PUZ")){%>
            <form action="${pageContext.request.contextPath}/UpdateGame?username=<%=username%>&&password=<%=password%>">
                <div class="inner-input">
                    <span>ID：</span>
                    <input class="text_inner" name="ID" placeholder="请输入ID" value="<%=resultSet.getInt("ID")%>" readonly>
                </div>
                <div class="inner-input">
                    <span>游戏中文名：</span>
                    <input class="text_inner" name="ZhName" placeholder="请输入游戏中文名" value="<%=resultSet.getString("ZhName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏英文名：</span>
                    <input class="text_inner" name="EnName" placeholder="请输入游戏英文名" value="<%=resultSet.getString("EnName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏类型：</span>
                    <select class="select_inner" name="Type" >
                        <option value="角色扮演RPG">角色扮演RPG</option>
                        <option value="动作游戏ACT">动作游戏ACT</option>
                        <option value="第一人称射击FPS">第一人称射击FPS</option>
                        <option value="第三人称射击TPS">第三人称射击TPS</option>
                        <option value="策略战棋SLG">策略战棋SLG</option>
                        <option value="赛车竞速RAC">赛车竞速RAC</option>
                        <option value="体育竞技SPG">体育竞技SPG</option>
                        <option value="模拟经营SIM">模拟经营SIM</option>
                        <option value="格斗游戏FTG">格斗游戏FTG</option>
                        <option value="动作射击STG">动作射击STG</option>
                        <option selected value="休闲益智PUZ">休闲益智PUZ</option>
                        <option value="即时战略RTS">即时战略RTS</option>
                        <option value="冒险解谜AVG">冒险解谜AVG</option>
                    </select>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏厂商：</span>
                        <input class="text_inner" name="Developer" value="<%=resultSet.getString("Developer")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <span>发行时间：</span>
                    <input class="text_inner" name="Date" placeholder="格式为YYYY-MM-DD" value="<%=resultSet.getString("Date")%>">
                </div>
                <div class="inner-input">
                    <span>发行年份：</span>
                    <input class="text_inner" name="Year" placeholder="请输入发行年份" value="<%=resultSet.getString("Year")%>">
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏大小：</span>
                        <input class="text_inner" name="Size" value="<%=resultSet.getDouble("Size")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏热度：</span>
                        <input class="text_inner" name="Popularity" value="<%=resultSet.getInt("Popularity")%>">
                    </div>
                </div>
                <div class="inner_btn">
                    <input type="submit" value="修改">
                </div>
            </form>
            <%}else if (Objects.equals(resultSet.getString("Type"), "即时战略RTS")){%>
            <form action="${pageContext.request.contextPath}/UpdateGame?username=<%=username%>&&password=<%=password%>">
                <div class="inner-input">
                    <span>ID：</span>
                    <input class="text_inner" name="ID" placeholder="请输入ID" value="<%=resultSet.getInt("ID")%>" readonly>
                </div>
                <div class="inner-input">
                    <span>游戏中文名：</span>
                    <input class="text_inner" name="ZhName" placeholder="请输入游戏中文名" value="<%=resultSet.getString("ZhName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏英文名：</span>
                    <input class="text_inner" name="EnName" placeholder="请输入游戏英文名" value="<%=resultSet.getString("EnName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏类型：</span>
                    <select class="select_inner" name="Type" >
                        <option value="角色扮演RPG">角色扮演RPG</option>
                        <option value="动作游戏ACT">动作游戏ACT</option>
                        <option value="第一人称射击FPS">第一人称射击FPS</option>
                        <option value="第三人称射击TPS">第三人称射击TPS</option>
                        <option value="策略战棋SLG">策略战棋SLG</option>
                        <option value="赛车竞速RAC">赛车竞速RAC</option>
                        <option value="体育竞技SPG">体育竞技SPG</option>
                        <option value="模拟经营SIM">模拟经营SIM</option>
                        <option value="格斗游戏FTG">格斗游戏FTG</option>
                        <option value="动作射击STG">动作射击STG</option>
                        <option value="休闲益智PUZ">休闲益智PUZ</option>
                        <option selected value="即时战略RTS">即时战略RTS</option>
                        <option value="冒险解谜AVG">冒险解谜AVG</option>
                    </select>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏厂商：</span>
                        <input class="text_inner" name="Developer" value="<%=resultSet.getString("Developer")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <span>发行时间：</span>
                    <input class="text_inner" name="Date" placeholder="格式为YYYY-MM-DD" value="<%=resultSet.getString("Date")%>">
                </div>
                <div class="inner-input">
                    <span>发行年份：</span>
                    <input class="text_inner" name="Year" placeholder="请输入发行年份" value="<%=resultSet.getString("Year")%>">
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏大小：</span>
                        <input class="text_inner" name="Size" value="<%=resultSet.getDouble("Size")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏热度：</span>
                        <input class="text_inner" name="Popularity" value="<%=resultSet.getInt("Popularity")%>">
                    </div>
                </div>
                <div class="inner_btn">
                    <input type="submit" value="修改">
                </div>
            </form>
            <%}else{%>
            <form action="${pageContext.request.contextPath}/UpdateGame?username=<%=username%>&&password=<%=password%>">
                <div class="inner-input">
                    <span>ID：</span>
                    <input class="text_inner" name="ID" placeholder="请输入ID" value="<%=resultSet.getInt("ID")%>" readonly>
                </div>
                <div class="inner-input">
                    <span>游戏中文名：</span>
                    <input class="text_inner" name="ZhName" placeholder="请输入游戏中文名" value="<%=resultSet.getString("ZhName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏英文名：</span>
                    <input class="text_inner" name="EnName" placeholder="请输入游戏英文名" value="<%=resultSet.getString("EnName")%>">
                </div>
                <div class="inner-input">
                    <span>游戏类型：</span>
                    <select class="select_inner" name="Type" >
                        <option value="角色扮演RPG">角色扮演RPG</option>
                        <option value="动作游戏ACT">动作游戏ACT</option>
                        <option value="第一人称射击FPS">第一人称射击FPS</option>
                        <option value="第三人称射击TPS">第三人称射击TPS</option>
                        <option value="策略战棋SLG">策略战棋SLG</option>
                        <option value="赛车竞速RAC">赛车竞速RAC</option>
                        <option value="体育竞技SPG">体育竞技SPG</option>
                        <option value="模拟经营SIM">模拟经营SIM</option>
                        <option value="格斗游戏FTG">格斗游戏FTG</option>
                        <option value="动作射击STG">动作射击STG</option>
                        <option value="休闲益智PUZ">休闲益智PUZ</option>
                        <option value="即时战略RTS">即时战略RTS</option>
                        <option selected value="冒险解谜AVG">冒险解谜AVG</option>
                    </select>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏厂商：</span>
                        <input class="text_inner" name="Developer" value="<%=resultSet.getString("Developer")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <span>发行时间：</span>
                    <input class="text_inner" name="Date" placeholder="格式为YYYY-MM-DD" value="<%=resultSet.getString("Date")%>">
                </div>
                <div class="inner-input">
                    <span>发行年份：</span>
                    <input class="text_inner" name="Year" placeholder="请输入发行年份" value="<%=resultSet.getString("Year")%>">
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏大小：</span>
                        <input class="text_inner" name="Size" value="<%=resultSet.getDouble("Size")%>">
                    </div>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏热度：</span>
                        <input class="text_inner" name="Popularity" value="<%=resultSet.getInt("Popularity")%>">
                    </div>
                </div>
                <div class="inner_btn">
                    <input type="submit" value="修改">
                </div>
            </form>
            <%}
                }catch (ClassNotFoundException | SQLException e){
                    out.print(e.getMessage());
                }
            %>
        </div>
    </div>
</div>
<script async="true" data-main="static/js/profile.js" defer="" src="static/js/require.js"></script>
<!--尾部-start-->
<div class="ucenter_foot">
    <div class="ucenter_foot_con">CopyRight © 2001-2022 GameHuaGuoHell.Net All Right Reserved</div>
    <div class="ucenter_foot_con">游戏花果山 版权所有</div>
</div>
</body>
</html>
