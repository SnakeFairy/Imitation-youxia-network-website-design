<%--
  Created by IntelliJ IDEA.
  User: 26070
  Date: 2022.11.20
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="Login" type="Bean.Login" scope="request"/>
<html>
<head>
    <title>密码修改</title>
    <link href="css/uncenter.css" rel="stylesheet" type="text/css">
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="security" src="static/js/security.js"
            type="text/javascript"></script>
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="domReady" src="js/domReady.js"
            type="text/javascript"></script>
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="jquery" src="js/jquery-1.12.1.min.js"
            type="text/javascript"></script>
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="imgauth" src="js/imgauth.js"
            type="text/javascript"></script>
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="jqueryui" src="js/jquery-ui.min.js"
            type="text/javascript"></script>
    <script async="" charset="utf-8" data-requirecontext="_" data-requiremodule="common" src="js/common.js"
            type="text/javascript"></script>
    <link href="css/ali-img-auth-pc-global-version-1.css" rel="stylesheet">
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
            <script src="js/news_top_2016.js" type="text/javascript"></script>
        </div>
    </div>
    <div class="ucenter_line"></div>
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
            <a href="${pageContext.request.contextPath}/GameListLogin?username=<jsp:getProperty name="Login" property="username"/>&&password=<jsp:getProperty name="Login" property="password"/>">
                <span class="u_wan"></span><em>管理游戏</em>
            </a>
            <a class="active" href="#">
                <span class="u_set"></span><em>修改密码</em>
            </a>
        </div>
    </div>
    <div class="ucenter_index_rightext">
        <div class="title securitytitle"><span></span></div>
        <div class="securityarea">
            <div class="trigger">
                <div class="active">密码修改</div>
            </div>
            <div class="tabcontent">
                <div class="formholder active">
                    <form action="${pageContext.request.contextPath}/HandleUpdatePwd?username=<jsp:getProperty name="Login" property="username"/>" id="passwd" method="post" novalidate="novalidate">
                        <div class="inner-input">
                            <span>原密码：</span>
                            <input type="text" name="oldpwd" class="input_inner" id="oldpwd" value="<jsp:getProperty name="Login" property="password"/>">
                        </div>
                        <div class="inner-input">
                            <span>新密码：</span>
                            <input class="input_inner" id="newpwd" name="newpwd" type="password">
                        </div>
                        <div class="inner_btn">
                            <input id="submit1" type="submit" value="确定修改">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script async="true" data-main="statics/js/security.js" defer="" src="static/js/require.js"></script>
<!--尾部-start-->
<div class="ucenter_foot">
    <div class="ucenter_foot_con">CopyRight © 2001-2022 GameHuaGuoHell.Net All Right Reserved</div>
    <div class="ucenter_foot_con">游戏花果山 版权所有</div>
</div>
</body>
</html>
