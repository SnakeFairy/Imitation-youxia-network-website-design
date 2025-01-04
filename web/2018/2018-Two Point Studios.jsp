<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: 26070
  Date: 2022/10/10
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>找游戏</title>
  <meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
  <link href="../css/downglobal.css" rel="stylesheet" type="text/css"/>
  <link href="../css/games_20200311.css" rel="stylesheet" type="text/css"/>
  <link href="../css/ali-sso-pc-global-version-1.css" rel="stylesheet" type="text/css">
  <link href="../css/news_top_2016.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<%
  try {
    Class.forName("com.mysql.jdbc.Driver");
    String stringConnect = "jdbc:mysql://localhost:3306/huaguo?useUnicode=true&characterEncoding=utf8";
    String stringUser = "root";
    String stringPwd = "123456";
    Connection connection = DriverManager.getConnection(stringConnect,stringUser,stringPwd);
    Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    String stringSql = "SELECT ZhName,EnName,Date,Size FROM GamesView WHERE Year='2018' AND Developer='Two Point Studios';";
    ResultSet resultSet = statement.executeQuery(stringSql);
%>
<div id="EyeableArea">
  <script>var pd = 'all';</script>
  <div id="down-container">
    <!-- 搜索部分 -->
    <div class="downlistsearch">
      <form action="" method="get" target="_blank">
        <div class="t1">游戏下载搜索</div>
        <div class="t2"><input autocomplete="off" name="keyword" placeholder="输入搜索内容" type="text"><input
                name="sub" type="hidden" value="3"></div>
        <div class="t3"><input type="submit" value=""></div>
        <a class="t7" href="../index.jsp" target="_blank">花果山首页</a>
      </form>
    </div>
    <!--分类部分-->
    <div class="assort-container">
      <div class="list-type" data-type="0">
        <p>游戏类型</p>
        <div class="list-ul-box">
          <div class="list-ul">
            <span><a class="checked" href="${pageContext.request.contextPath}/2018/2018-Two Point Studios.jsp">全部</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Two Point Studios-RPG.jsp">角色扮演RPG</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Two Point Studios-ACT.jsp">动作游戏ACT</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Two Point Studios-SPG.jsp">体育竞技SPG</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Two Point Studios-SLG.jsp">策略战棋SLG</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Two Point Studios-RTS.jsp">即时战略RTS</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Two Point Studios-RAC.jsp">赛车竞速RAC</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Two Point Studios-AVG.jsp">冒险解谜AVG</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Two Point Studios-FPS.jsp">第一人称射击FPS</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Two Point Studios-TPS.jsp">第三人称射击TPS</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Two Point Studios-PUZ.jsp">休闲益智PUZ</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Two Point Studios-SIM.jsp">模拟经营SIM</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Two Point Studios-STG.jsp">动作射击STG</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Two Point Studios-FTG.jsp">格斗游戏FTG</a></span>
          </div>
        </div>
      </div>
      <div class="list-type" data-type="2">
        <p>游戏厂商</p>
        <div class="list-ul-box">
          <div class="list-ul">
            <span><a href="${pageContext.request.contextPath}/2018/2018.jsp">全部</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Rockstar.jsp" rel="nofollow" title="Rockstar">R星</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Ubisoft.jsp" rel="nofollow" title="Ubisoft">育碧</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-2K Games.jsp" rel="nofollow" title="2K Games">2K Games</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Capcom.jsp" rel="nofollow" title="Capcom">卡普空</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Activision.jsp" rel="nofollow" title="Activision">动视</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-KONAMI.jsp" rel="nofollow" title="KONAMI">科乐美</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-FromSoftware.jsp" rel="nofollow" title="FromSoftware">FS社</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Naughty Dog.jsp" rel="nofollow" title="Naughty Dog">顽皮狗</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Square Enix.jsp" rel="nofollow" title="Square Enix">Square Enix</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Sony.jsp" rel="nofollow" title="Sony">索尼</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Nintendo.jsp" rel="nofollow" title="Nintendo">任天堂</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-SEGA.jsp" rel="nofollow" title="SEGA">世嘉</a></span>
            <span><a class="checked" href="${pageContext.request.contextPath}/2018/2018-Two Point Studios.jsp" rel="nofollow" title="Two Point Studios">双点工作室</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Asobo Studio.jsp" rel="nofollow" title="Asobo Studio">Asobo</a></span>
            <span><a href="${pageContext.request.contextPath}/2018/2018-Microsoft.jsp" rel="nofollow" title="Microsoft">微软</a></span>
          </div>
        </div>
      </div>
      <div class="list-type" data-type="1">
        <p>推出年份</p>
        <div class="list-ul-box">
          <div class="list-ul">
            <span><a href="${pageContext.request.contextPath}/Developer/Two%20Point%20Studios.jsp">全部</a></span>
            <span><a href="${pageContext.request.contextPath}/2022/2022-Two Point Studios.jsp">2022</a></span>
            <span><a href="${pageContext.request.contextPath}/2021/2021-Two Point Studios.jsp">2021</a></span>
            <span><a href="${pageContext.request.contextPath}/2020/2020-Two Point Studios.jsp">2020</a></span>
            <span><a href="${pageContext.request.contextPath}/2019/2019-Two Point Studios.jsp">2019</a></span>
            <span><a class="checked" href="${pageContext.request.contextPath}/2018/2018-Two Point Studios.jsp">2018</a></span>
            <span><a href="${pageContext.request.contextPath}/2017/2017-Two Point Studios.jsp">2017</a></span>
            <span><a href="${pageContext.request.contextPath}/2016/2016-Two Point Studios.jsp">2016</a></span>
            <span><a href="${pageContext.request.contextPath}/2015/2015-Two Point Studios.jsp">2015</a></span>
          </div>
        </div>
      </div>
    </div>

    <div class="getsite_1200 box388"></div>
    <div class="result-container" id="rqjxhb">
      <div class="sort-container">
        <li class="active">
                    <span>
                        <a class="active" href="" rel="nofollow">默认</a>
                    </span>
          <em></em>
        </li>
        <li>
                    <span>
                        <a href="" rel="nofollow">人气</a>
                    </span>
          <em></em>
        </li>
        <li>
                    <span>
                        <a href="" rel="nofollow">大小</a>
                    </span>
          <em></em>
        </li>
      </div>
      <div class="famous-ul-container">
        <div class="famous-ul">
          <%
            int p;
            int pageCount = 30;
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
          <div class="famous-li">
            <a class="content-a" href="" target="_blank">
              <img alt="" src="../images/GamesImages/<%=resultSet.getString("EnName")%>_1.jpg"/>
              <span class="game-lang">中文</span>
              <em class="zh"></em>
              <div class="hover-content">
                <div>时间：<span><%=resultSet.getString("Date")%></span></div>
                <div>大小：<span><%=resultSet.getDouble("Size")%>GB</span></div>
                <p>
                  <span>单人单机</span>
                  <span>3D画面</span>
                  <span>支持手柄</span>
                  <span>中级水平</span>
                  <span>冒险</span>
                  <span>独立</span>
                </p>
              </div>
            </a>
            <div class="game-name"><%=resultSet.getString("ZhName")%></div>
            <a class="game-down" href="" target="_blank">下载(<%=resultSet.getDouble("Size")%>GB)</a>
          </div>
          <%
              }
              p2++;
            }
          %>
        </div>
      </div>

      <div class="page-container">
        <%if (p == intPageCount){%>
        <a class="checked"  href="../GamesView.jsp?page=1">1</a>
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
    <div class="getsite_1200 box199"></div>
    <div class="list_clear"></div>
  </div>
</div>
<div class="Ali_down_foot">
  <div class="Ali_down_foot_con">
    <br>CopyRight © 2001-2022
    GameHuaGuoHell.Net All Right Reserved 游戏花果山 版权所有
    <br>
  </div>
</div>
<script async="true" data-main="/js/down_list_require_new.js" defer src="../js/require-2.3.2.js"></script>
<script src="../js/down_list_require_new.js?0902"></script>
</body>
</html>