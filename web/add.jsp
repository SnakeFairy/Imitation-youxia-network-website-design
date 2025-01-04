<%--
  Created by IntelliJ IDEA.
  User: 26070
  Date: 2022.11.27
  Time: 18:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="Login" type="Bean.Login" scope="request"/>
<% request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>添加游戏</title>
    <link href="css/uncenter.css" rel="stylesheet" type="text/css">
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="profile" src="static/js/profile.js" type="text/javascript"></script>
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="domReady" src="static/js/domReady.js" type="text/javascript"></script>
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="jquery" src="static/js/jquery-1.12.1.min.js" type="text/javascript"></script>
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="validate" src="static/js/jquery.validate.min.js" type="text/javascript"></script>
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="common" src="static/js/common.js" type="text/javascript"></script>

</head>
<body>
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
                            <li><a href="" target="_blank">资讯站</a></li>
                            <li><a href="" target="_blank">下载站</a></li>
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
            <a class="active" href="#">
                <span class="u_name"></span><em>添加游戏</em>
            </a>
            <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>">
                <span class="u_wan"></span><em>管理游戏</em>
            </a>
            <a href="${pageContext.request.contextPath}/UpdatePassword?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>">
                <span class="u_set"></span><em>修改密码</em>
            </a>
        </div>
    </div>
    <div class="ucenter_index_rightext">
        <div class="title profiletitle"><span></span><em></em></div>
        <div class="profileform">
            <form action="${pageContext.request.contextPath}/HandleInsert?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>&&level=<jsp:getProperty name="Login" property="level"/>" id="profile" method="post" novalidate="novalidate">
                <div class="inner-input">
                    <span>游戏中文名：</span>
                    <input class="text_inner" id="ZhName" name="ZhName" placeholder="请输入游戏中文名">
                </div>
                <div class="inner-input">
                    <span>游戏英文名：</span>
                    <input class="text_inner" id="EnName" name="EnName" placeholder="请输入游戏英文名">
                </div>
                <div class="inner-input">
                    <span>游戏类型：</span>
                    <select class="select_inner" id="Type" name="Type">
                        <option value="0">--</option>
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
                        <option value="冒险解谜AVG">冒险解谜AVG</option>
                    </select>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏厂商：</span>
                        <input class="text_inner" id="Developer" name="Developer">
                    </div>
                </div>
                <div class="inner-input">
                    <span>发行时间：</span>
                    <input class="text_inner" id="Date" name="Date" placeholder="格式为YYYY-MM-DD">
                </div>
                <div class="inner-input">
                    <span>发行年份：</span>
                    <select class="select_inner" id="Year" name="Year">
                        <option value="0">--</option>
                        <option value="2013">2013</option>
                        <option value="2014">2014</option>
                        <option value="2015">2015</option>
                        <option value="2016">2016</option>
                        <option value="2017">2017</option>
                        <option value="2018">2018</option>
                        <option value="2019">2019</option>
                        <option value="2020">2020</option>
                        <option value="2021">2021</option>
                        <option value="2022">2022</option>
                        <option value="2023">2023</option>
                    </select>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏大小：</span>
                        <input class="text_inner" id="Size" name="Size">
                    </div>
                </div>
                <div class="inner-input">
                    <div class="inner-input">
                        <span>游戏热度：</span>
                        <input class="text_inner" id="Popularity" name="Popularity">
                    </div>
                </div>
                <div class="inner_btn">
                    <input id="submit" type="submit" value="添加">
                </div>
            </form>
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
