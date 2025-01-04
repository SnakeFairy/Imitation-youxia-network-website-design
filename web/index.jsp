<%--
  Created by IntelliJ IDEA.
  User: 26070
  Date: 2022/10/8
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>游戏花果山</title>
    <link rel="stylesheet" href="css/index_gray.css" id="change-style">
    <link rel="stylesheet" type="text/css" href="css/ali-sso-pc-global-version-1-white.css">
    <script src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/delayed_load.js"></script>
    <script src="js/index.js"></script>
  </head>
  <body>
  <div class="index-container">
    <!--首页导航-->
    <div class="index-header fn-clear">
      <a target="_blank" class="index-icon1"></a>
      <a target="_blank" class="index-icon1"></a>
      <a href="${pageContext.request.contextPath}/login.jsp" target="_blank" class="index-icon5"><i class="icon"></i><span>管理员</span></a>
      <a href="${pageContext.request.contextPath}/GamesView.jsp" target="_blank" class="index-icon8"><i class="icon"></i><span>下载站</span></a>
      <a href="${pageContext.request.contextPath}/news.jsp" target="_blank" class="index-icon11"><i class="icon"></i><span>资讯</span></a>
      <a href="" title="游戏花果山" class="to-index icon"></a>
    </div>
    <!--头部引导-->
    <div class="top-container">
      <div class="top-search-con bg-shadow2">
        <!--搜索栏-->
        <form action="${pageContext.request.contextPath}/GamesViewQuery.jsp" method="get" target="_blank" id="cse-search-box">
          <input type="text" name="keyword" id="soinput" class="soinput" autocomplete="off" value="最后生还者重制版" onblur="if(this.value=='') this.value='最后生还者重制版';" onfocus="if(this.value=='最后生还者重制版') this.value='';">
          <input type="hidden" name="group" value="0">
          <input type="submit" value="搜本站" class="msobutton" id="msobutton">
          <label for="sobutton" class="sobutton-label">
            <input type="button" value="" class="sobutton" id="sobutton">
          </label>
        </form>
      </div>
      <ul class="toggle-ul channel-ul" style="width:752px;">
        <li class="toggle-li change1 active">专题推荐</li>
        <li class="toggle-li change2">经典游戏</li>
        <li class="toggle-li change4">火爆新游</li>
      </ul>
      <div class="toggle-con-ul channel-con">
        <!--专题推荐-->
        <div class="toggle-con-li">
          <ul>
            <li>
              <p>热门游戏</p>
              <div>
                <em><a href="" style="line-height: 20px;" target="_blank" title=""><span style="color: rgb(255, 73, 59);">荒野大镖客2</span></a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">刺客信条英灵殿</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title=""><span style="color: rgb(255, 73, 59);">黑道圣徒重启版</span></a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title=""><span style="color: rgb(255, 73, 59);">漫威蜘蛛侠</span></a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">赛博朋克2077</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title=""><span style="color: rgb(255, 73, 59);">往日不再</span></a></em>
                <em><a href="" target="_blank" title=""><span style="color: rgb(255, 73, 59);">DOOM</span></a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">战神4</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">生化危机村庄</a></em>
                <em><a href="" target="_blank" title=""><span style="color: rgb(255, 73, 59);">迷失</span></a></em>
              </div>
            </li>
            <li>
              <p>近期新作</p>
              <div>
                <em><a href="./Games/Call%20of%20Duty%20Modern%20Warfare%20II.jsp" style="line-height: 20px;" target="_blank" title="">使命召唤19</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">科娜精神之桥</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">史莱姆牧场2</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">NBA2K23<span style="color: rgb(255, 73, 59);"></span></a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">风色幻想系列</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">狙击精英5</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title=""><span style="color: rgb(255, 73, 59);">死亡循环</span></a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">消逝的光芒2</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">太阁立志传5DX</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title=""><span style="color: rgb(255, 73, 59);">怪物猎人崛起</span></a></em>
              </div>
            </li>
            <li>
              <p>即将上市</p>
              <div>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">守望先锋归来<span style="color: rgb(255, 73, 59);"></span></a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">瘟疫传说安魂曲</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">神秘海域盗贼合集</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">黑相集心中魔</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title=""><span style="color: rgb(255, 73, 59);">卧龙苍天陨落</span></a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">以撒的结合四魂</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">塞尔达王国之泪</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title=""><span style="color: rgb(255, 73, 59);">FORSPOKEN</span></a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">死亡空间重制版</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">霍格沃茨遗产</a></em>
              </div>
            </li>
            <li>
              <p>系列专题</p>
              <div>
                <em><a href="" style="line-height: 20px;" target="_blank" title=""><span style="color: rgb(255, 73, 59);">黑相集系列</span></a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title=""><span style="color: rgb(255, 73, 59);">怪物猎人系列</span></a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">漫威游戏系列</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title=""><span style="color: rgb(255, 73, 59);">乐高游戏系列</span></a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">最终幻想系列</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">全面战争系列</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">消逝的光芒系列</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title=""><span style="color: rgb(255, 73, 59);">模拟器游戏</span></a></em>
                <em><a href="" target="_blank" title="">橙光游戏</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title=""><span style="color: rgb(255, 73, 59);">地平线系列</span></a></em>
              </div>
            </li>
            <li>
              <p>推荐汉化</p>
              <div>
                <em><a title="" href="" target="_blank">太吾绘卷</a></em>
                <em><a title="" href="" target="_blank"><span style="color:#ff493b;">暖雪</span></a></em>
                <em><a title="" href="" target="_blank">鬼谷八荒</a></em>
                <em><a title="" href="" target="_blank">光明记忆</a></em>
                <em><a title="" href="" target="_blank">觅长生</a></em>
                <em><a title="" href="" target="_blank">了不起的修仙模拟器</a></em>
                <em><a title="" href="" target="_blank">全网公敌</a></em>
                <em><a title="" href="" target="_blank">女巫来了</a></em>
                <em><a title="" href="" target="_blank"><span style="color:#ff493b;">古剑奇谭</span></a></em>
                <em><a title="" href="" target="_blank">仙剑奇侠传</a></em>
              </div>
            </li>
            <li>
              <p>手机游戏</p>
              <div>
                <em><a title="" href="" target="_blank"><span style="color:#ff493b;">原神</span></a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">王者荣耀</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title=""><span style="color: rgb(255, 73, 59);">香肠派对</span></a></em>
                <em><a title="" href="" target="_blank">炉石传说</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">和平精英</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title=""><span style="color: rgb(255, 73, 59);">元气骑士</span></a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">幸存者村庄</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">纸上谈兵</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">尸城幸存者</a></em>
                <em><a href="" style="line-height: 20px;" target="_blank" title="">率土之滨</a></em>
              </div>
            </li>
          </ul>
        </div>
        <!--热门手游-->
        <div class="toggle-con-li">
          <ul>
            <li>
              <p>最新手游</p>
              <div>
                <em><a href="" target="_blank">幻塔</a></em>
                <em><a href="" target="_blank">暗黑破坏神不朽</a></em>
                <em><a href="" target="_blank">绿茵信仰</a></em>
                <em><a href="" target="_blank">萤火突击</a></em>
                <em><a href="" target="_blank">航海王热血航线</a></em>
                <em><a href="" target="_blank">彩虹六号手游</a></em>
                <em><a href="" target="_blank">罪恶战记</a></em>
                <em><a href="" target="_blank">伊甸星原</a></em>
                <em><a href="" target="_blank">代号：降临</a></em>
                <em><a href="" target="_blank">重返帝国</a></em>
              </div>
            </li>
            <li>
              <p>火爆手游</p>
              <div>
                <em><a href="" target="_blank">原神</a></em>
                <em><a href="" target="_blank">王者荣耀</a></em>
                <em><a href="" target="_blank">和平精英</a></em>
                <em><a href="" target="_blank">明日之后</a></em>
                <em><a href="" target="_blank">明日方舟</a></em>
                <em><a href="" target="_blank">阴阳师</a></em>
                <em><a href="" target="_blank">皇室战争</a></em>
                <em><a href="" target="_blank">第五人格</a></em>
                <em><a href="" target="_blank">火影忍者ol</a></em>
                <em><a href="" target="_blank">无尽的拉格朗日</a></em>
              </div>
            </li>
            <li>
              <p>汉化手游</p>
              <div>
                <em><a href="" target="_blank">暗影格斗3</a></em>
                <em><a href="" target="_blank">时空猎人</a></em>
                <em><a href="" target="_blank">植物大战僵尸2</a></em>
                <em><a href="" target="_blank">地铁跑酷</a></em>
                <em><a href="" target="_blank">奥特曼格斗2</a></em>
                <em><a href="" target="_blank">皇室战争</a></em>
                <em><a href="" target="_blank">海岛奇兵</a></em>
                <em><a href="" target="_blank">部落冲突</a></em>
                <em><a href="" target="_blank">黎明杀机手机版</a></em>
                <em><a href="" target="_blank">文明6ios版</a></em>
              </div>
            </li>
            <li>
              <p>合集大全</p>
              <div>
                <em><a href="" target="_blank">植物大战僵尸合集</a></em>
                <em><a href="" target="_blank">保卫萝卜</a></em>
                <em><a href="" target="_blank">斗罗大陆</a></em>
                <em><a href="" target="_blank">死神归来</a></em>
                <em><a href="" target="_blank">拳皇</a></em>
                <em><a href="" target="_blank">时空猎人</a></em>
                <em><a href="" target="_blank">奥特曼格斗</a></em>
                <em><a href="" target="_blank">诛仙</a></em>
                <em><a href="" target="_blank">火柴人格斗</a></em>
                <em><a href="" target="_blank">孙美琪疑案</a></em>
              </div>
            </li>
            <li>
              <p>经典单机</p>
              <div>
                <em><a href="" target="_blank">拳皇</a></em>
                <em><a href="" target="_blank">暗影格斗2</a></em>
                <em><a href="" target="_blank">达芬奇密室</a></em>
                <em><a href="" target="_blank">火柴人联盟</a></em>
                <em><a href="" target="_blank">孤胆车神维加斯</a></em>
                <em><a href="" target="_blank">方舟生存进化</a></em>
                <em><a href="" target="_blank">饥饿鲨世界</a></em>
                <em><a href="" target="_blank">我的世界</a></em>
                <em><a href="" target="_blank">口袋妖怪单机版</a></em>
                <em><a href="" target="_blank">侠盗猎车手</a></em>
              </div>
            </li>
            <li>
              <p>网游大作</p>
              <div>
                <em><a href="" target="_blank">王者荣耀</a></em>
                <em><a href="" target="_blank">英雄联盟手游</a></em>
                <em><a href="" target="_blank">和平精英</a></em>
                <em><a href="" target="_blank">绝地求生未来战役</a></em>
                <em><a href="" target="_blank">炉石传说</a></em>
                <em><a href="" target="_blank">阴阳师</a></em>
                <em><a href="" target="_blank">apex英雄手游</a></em>
                <em><a href="" target="_blank">香肠派对</a></em>
                <em><a href="" target="_blank">战争前线全球行动</a></em>
                <em><a href="" target="_blank">部落冲突</a></em>
              </div>
            </li>
            <li>
              <p>开测表</p>
              <div>
                <em><a href="" target="_blank">元素方尖</a></em>
                <em><a href="" target="_blank">绿茵信仰</a></em>
                <em><a href="" target="_blank">神都不良探</a></em>
                <em><a href="" target="_blank">剑侠世界3</a></em>
                <em><a href="" target="_blank">诸神之战</a></em>
                <em><a href="" target="_blank">骰子元素师</a></em>
                <em><a href="" target="_blank">终末阵线依诺贝塔</a></em>
                <em><a href="" target="_blank">天龙3D</a></em>
                <em><a href="" target="_blank">幻世九天</a></em>
                <em><a href="" target="_blank">零号任务</a></em>
              </div>
            </li>
          </ul>
        </div>
        <!--火爆新游-->
        <div class="toggle-con-li channel-type3">
          <div class="img-toggle-ul">
            <a href="${pageContext.request.contextPath}/Games/It%20Takes%20Two.jsp" title="双人成行" target="_blank">
              <img src="images/preload.jpg" data-tb-original="images/GamesImages/It Takes Two_2.png" alt="双人成行">
              <span>双人成行</span>
            </a>
            <a href="" title="生化危机8：村庄" target="_blank">
              <img src="images/preload.jpg" data-tb-original="images/GamesImages/Resident Evil Village_2.png" alt="生化危机8：村庄">
              <span>生化危机8：村庄</span>
            </a>
            <a href="" title="孤岛惊魂6" target="_blank">
              <img src="images/preload.jpg"
                   data-tb-original="images/GamesImages/Far Cry 6_2.png" alt="孤岛惊魂6">
              <span>孤岛惊魂6</span>
            </a>
            <a href="" title="极限竞速：地平线5" target="_blank">
              <img src="images/preload.jpg" data-tb-original="images/GamesImages/Forza Horizon 5_2.png" alt="极限竞速：地平线5">
              <span>极限竞速：地平线5</span>
            </a>
            <a href="" title="仁王2" target="_blank">
              <img src="images/preload.jpg"
                   data-tb-original="images/GamesImages/NIOH 2_2.png" alt="仁王2">
              <span>仁王2</span>
            </a>
          </div>
          <ul>
            <li>
              <div>
                <em><a href="" title="" target="_blank">蜘蛛侠：迈尔斯</a></em>
                <em><a href="" title="" target="_blank">死亡循环</a></em>
                <em><a href="" title="" target="_blank">绿茵信仰</a></em>
                <em><a href="" title="" target="_blank">NBA2K23</a></em>
                <em><a href="" title="" target="_blank">黑道圣徒重启版</a></em>
                <em><a href="" title="" target="_blank">咩咩启示录</a></em>
                <em><a href="" title="" target="_blank">消逝的光芒2</a></em>
                <em><a href="" title="" target="_blank">异度之刃3</a></em>
                <em><a href="" title="" target="_blank">最终幻想7重制版</a></em>
                <em><a href="" title="" target="_blank">狙击精英5</a></em>
                <em><a href="" title="" target="_blank">乐高星球大战</a></em>
              </div>
            </li>
            <li>
              <div>
                <em><a href="" title="" target="_blank">死亡搁浅导剪版</a></em>
                <em><a href="" title="" target="_blank">幽灵线东京</a></em>
                <em><a href="" title="" target="_blank">最终幻想起源</a></em>
                <em><a href="" title="" target="_blank">风色幻想</a></em>
                <em><a href="" title="" target="_blank">信长之野望</a></em>
                <em><a href="" title="" target="_blank">无双大蛇2</a></em>
                <em><a href="" title="" target="_blank">火焰纹章风花雪月</a></em>
                <em><a href="" title="" target="_blank">小缇娜的幻想之地</a></em>
                <em><a href="" title="" target="_blank">太阁立志传5DX</a></em>
                <em><a href="" title="" target="_blank">植物大战僵尸和睦小镇</a></em>
                <em><a href="" title="" target="_blank">FIFA23</a></em>
              </div>
            </li>
            <li>
              <div>
                <em><a href="" title="" target="_blank">伊苏9</a></em>
                <em><a href="" title="" target="_blank">彩虹六号异种</a></em>
                <em><a href="" title="" target="_blank">师父</a></em>
                <em><a href="" title="" target="_blank">艾尔登法环</a></em>
                <em><a href="" title="" target="_blank">消逝的光芒2</a></em>
                <em><a href="" title="" target="_blank">拳皇15</a></em>
                <em><a href="" title="" target="_blank">全面战争战锤3</a></em>
                <em><a href="" title="" target="_blank">地平线西部绝境</a></em>
                <em><a href="" title="" target="_blank">光环无限</a></em>
                <em><a href="" title="" target="_blank">异星求生</a></em>
                <em><a href="" title="" target="_blank">战地2042</a></em>
              </div>
            </li>
            <li>
              <div>
                <em><a href="" title="" target="_blank">地平线5</a></em>
                <em><a href="" title="" target="_blank">使命召唤先锋</a></em>
                <em><a href="" title="" target="_blank">银河护卫队</a></em>
                <em><a href="" title="" target="_blank">仙剑七</a></em>
                <em><a href="" title="" target="_blank">孤岛惊魂6</a></em>
                <em><a href="" title="" target="_blank">破晓传说</a></em>
                <em><a href="" title="" target="_blank">升华变种</a></em>
                <em><a href="" title="" target="_blank">往日不再</a></em>
                <em><a href="" title="" target="_blank">质量效应</a></em>
                <em><a href="" title="" target="_blank">尼尔人工生命</a></em>
                <em><a href="" title="" target="_blank">仁王2</a></em>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!--第一屏-->
    <div class="section section1">
      <div class="section1-left">
        <!--轮播图-->
        <div class="s1-l-1">
          <div class="s1-l-con">
            <a href="" target="_blank" title="逆水寒联手英伟达，突破画质天花板">
              <div><img src="images/preload.jpg" data-original="images/GamesImages/nishuihan1.png" alt="逆水寒联手英伟达，突破画质天花板"/></div>
              <b>逆水寒联手英伟达，突破画质天花板</b>
            </a>
            <a href="" target="_blank" title="">
              <div><img src="images/preload.jpg" data-original="images/GamesImages/blackmyth wukong_1.png" alt="黑神话：悟空最新实机画面"/></div>
              <b>黑神话：悟空最新实机画面</b>
            </a>
            <a href="" target="_blank" title="网易旗下武侠游戏燕云十六声科隆展实机演示">
              <div><img src="images/preload.jpg" data-original="images/GamesImages/yysls_1.png" alt="网易旗下武侠游戏燕云十六声科隆展实机演示"/></div>
              <b>网易旗下武侠游戏燕云十六声科隆展实机演示</b>
            </a>
            <a href="" target="_blank" title="戴森球计划加入XGP">
              <div><img src="images/preload.jpg" data-original="images/GamesImages/Dyson Sphere Program_2.png" alt=""/></div>
              <b>戴森球计划加入XGP</b>
            </a>
            <a href="" target="_blank" title="NS版光明记忆：无限容量公布 仅有1.8G">
              <div>
                <img src="images/preload.jpg" data-original="images/GamesImages/Bright Memory Infinite_2.png" alt="NS版光明记忆：无限容量公布 仅有1.8G"/>
              </div>
              <b>NS版光明记忆：无限容量公布 仅有1.8G</b>
            </a>
            <a href="" target="_blank" title="科隆展模拟山羊3实机演示">
              <div><img src="images/preload.jpg" data-original="images/GamesImages/Goat Simulator 3_1.png" alt="科隆展模拟山羊3实机演示"/></div>
              <b>科隆展模拟山羊3实机演示</b>
            </a>
          </div>
          <div class="s1-toggle-container">
            <div class="s1-toggle">
            <span data-id="0" class="active">
              <img src="images/preload.jpg" data-original="images/GamesImages/nishuihan1.png" alt="逆水寒联手英伟达，突破画质天花板"/>
            </span>
              <span data-id="1">
              <img src="images/preload.jpg" data-original="images/GamesImages/blackmyth wukong_1.png" alt="黑神话：悟空最新实机画面"/>
            </span>
              <span data-id="2">
              <img src="images/preload.jpg" data-original="images/GamesImages/yysls_1.png" alt="网易旗下武侠游戏燕云十六声科隆展实机演示"/>
            </span>
              <span data-id="3">
              <img src="images/preload.jpg" data-original="images/GamesImages/Dyson Sphere Program_2.png" alt="戴森球计划加入XGP"/>
            </span>
              <span data-id="4">
              <img src="images/preload.jpg" data-original="images/GamesImages/Bright Memory Infinite_2.png" alt="NS版光明记忆：无限容量公布 仅有1.8G"/>
            </span>
              <span data-id="5">
              <img src="images/preload.jpg" data-original="images/GamesImages/Goat Simulator 3_1.png" alt="科隆展模拟山羊3实机演示"/>
            </span>
            </div>
          </div>
          <div class="s1-left"></div>
          <div class="s1-right"></div>
        </div>
        <div class="s1-l-2">
          <div class="toggle-style1-ul toggle-ul">
            <span class="toggle-li active"><a href="" target="_blank">游戏测评</a></span>
            <span class="toggle-li">游戏前瞻</span>
          </div>
          <div class="toggle-con-ul">
            <div class="toggle-con-li" id="con_yxpc_1">
              <div class="l-pc-li">
                <a href="" target="_blank" title="最后生还者重制版">
                  <img src="images/preload.jpg" data-original="images/GamesImages/The Last of Us Part 1_2.jpg" alt="最后生还者重制版"/>
                </a>
                <div class="game-name">
                  <a href="" target="_blank" title="最后生还者重制版">最后生还者重制版</a>
                  <p>
                    萧规曹随，依旧经典
                  </p>
                </div>
                <div class="l-pc-score">
                  <p>
                    <span>9.</span>5
                  </p>
                  <em>神作</em>
                </div>
              </div>
              <div class="l-pc-li">
                <a href="" target="_blank" title="迷失">
                  <img src="images/preload.jpg" data-original="images/GamesImages/Stray_2.jpg" alt="迷失"/>
                </a>
                <div class="game-name">
                  <a href="" target="_blank" title="迷失">迷失</a>
                  <p>
                    流浪猫咪的奇妙冒险之旅
                  </p>
                </div>
                <div class="l-pc-score">
                  <p>
                    <span>8.</span>0
                  </p>
                  <em>佳作</em>
                </div>
              </div>
              <div class="l-pc-li">
                <a href="" target="_blank" title="斯普拉遁3">
                  <img src="images/preload.jpg" data-original="images/GamesImages/Splatoon 3_2.jpg" alt="斯普拉遁3"/>
                </a>
                <div class="game-name">
                  <a href="" target="_blank" title="斯普拉遁3">斯普拉遁3</a>
                  <p>
                    3亿手柄的喷喷梦想
                  </p>
                </div>
                <div class="l-pc-score">
                  <p>
                    <span>9.</span>0
                  </p>
                  <em>神作</em>
                </div>
              </div>
              <div class="l-pc-li">
                <a href="" target="_blank" title="黑道圣徒：重启版">
                  <img src="images/preload.jpg" data-original="images/GamesImages/Saints Row_4.jpg" alt=""/>
                </a>
                <div class="game-name">
                  <a href="" target="_blank" title="黑道圣徒：重启版">黑道圣徒：重启版</a>
                  <p>
                    粗制滥造的过时产物
                  </p>
                </div>
                <div class="l-pc-score">
                  <p>
                    <span>6.</span>5
                  </p>
                  <em>一般</em>
                </div>
              </div>
              <div class="l-pc-li">
                <a href="" target="_blank" title="漫威蜘蛛侠：重制版">
                  <img src="images/preload.jpg" data-original="images/GamesImages/Marvels Spiderman Remastered_2.jpg" alt="漫威蜘蛛侠：重制版"/>
                </a>
                <div class="game-name">
                  <a href="" target="_blank" title="漫威蜘蛛侠：重制版">漫威蜘蛛侠：重制版</a>
                  <p>
                    小蜘蛛归来
                  </p>
                </div>
                <div class="l-pc-score">
                  <p>
                    <span>8.</span>5
                  </p>
                  <em>佳作</em>
                </div>
              </div>
            </div>
            <div class="toggle-con-li" id="con_yxpc_2">
              <div class="s1-l2-news-head">
                <a href="" title="" target="_blank"></a>
                <div>
                  <a href="" title="" target="_blank">
                    <img src="images/preload.jpg" data-original="" alt=""/>
                  </a>
                  <p></p>
                </div>
              </div>
              <div class="s1-l2-ul">
                <a href="" target="_blank" title=""></a>
                <a href="" target="_blank" title=""></a>
                <a href="" target="_blank" title=""></a>
                <a href="" target="_blank" title=""></a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--    第二屏中-->
      <div class="section1-middle">
        <div class="s1-m-1">
          <div class="toggle-style1-ul toggle-ul">
            <span class="toggle-li active">热点资讯</span>
            <span class="toggle-li">最新硬件</span>
            <span class="toggle-li">最新攻略</span>
          </div>
          <div class="toggle-con-ul">
            <div class="toggle-con-li" id="s1-m-rdzx">
              <div class="s1-m-li rdzx-ul">
                <div class="rdzx-li">
                  <div class="rdzx-top">
                    <div class="h3-a">
                      <a href="" title="Steam每日特惠" class="orange" target="_blank">Steam每日特惠</a>
                      <a href="" title="Epic免费游戏" class="orange" target="_blank">Epic免费游戏</a>
                    </div>
                    <div class="three-a">
                      <a href="" title="" target="_blank">COD19B轮测试开启</a>
                      <i>|</i>
                      <a href="" title="" target="_blank">太吾绘卷今日更新</a>
                      <i>|</i>
                      <a href="" title="" target="_blank">猎天使魔女1&2更新中文补丁</a>
                    </div>
                    <div class="h3-a">
                      <a href="" title="《塞尔达》新作爆料" class="orange" target="_blank">《塞尔达》新作爆料</a>
                      <a href="" title="战神5最终Boss曝光" class="orange" target="_blank">战神5最终Boss曝光</a>
                    </div>
                    <div class="three-a">
                      <a href="" title="" target="_blank">英雄联盟S12入围赛开赛</a>
                      <i>|</i>
                      <a href="" title="" target="_blank">燕云十六声制作人采访</a>
                      <i>|</i>
                      <a href="" title="" target="_blank">尼尔switch评分解禁</a>
                    </div>
                  </div>
                  <ul class="news-link-ul news-link-top">
                    <li>
                      <i class="jx">精选</i>
                      <a href="" title="" target="_blank">买游戏送皮肤！《模拟山羊3》联动《堡垒之夜》</a>
                    </li>
                    <li>
                      <i class="hw">号外</i>
                      <a href="" title="" target="_blank">吉田直树：本月将发布《最终幻想16》的新情报！</a>
                    </li>
                    <li>
                      <i class="jd">焦点</i>
                      <a href="" title="" target="_blank">《木卫四协议》开发者：AI会提升玩家的恐怖临场感</a>
                    </li>
                    <li>
                      <i class="yw">要闻</i>
                      <a href="" title="" target="_blank">索尼出品 必属精品！盘点即将登陆PC的PS独占大作</a>
                    </li>
                    <li>
                      <i class="bl">爆料</i>
                      <a href="" title="" target="_blank">《燕云十六声》采访：开发团队不到百人 今年测试</a>
                    </li>
                  </ul>
                  <ul class="news-link-ul bg-shadow3">
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank">《战锤40K：暗潮》发布“狂信徒”最新实机：异端！</a>
                    </li>
                  </ul>

                  <ul class="news-link-ul">
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank">沉迷《原神》无法自拔！国外玩家婚礼时忙于做日常任务</a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank">冒险跑酷游戏《无路可退》试玩Demo上线Steam平台</a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank">《超越善恶2》成跳票时间最长的3A游戏！</a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank">《龙腾世纪4》新玩家无需补票前作 兼顾新老玩家！</a>
                    </li>
                  </ul>
                  <ul class="news-link-ul bg-shadow3">
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank">《开拓者 正义之怒》主机版上线 PC免费升级增强版</a>
                    </li>
                  </ul>

                  <ul class="news-link-ul">
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank">外媒将在10月4号公布《死亡空间 重制版》玩法演示！</a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank">PS会免《黑相集：棉兰号》也能免费升级次世代版本</a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank">《尼尔：机械纪元》PS4版与Switch移植版对比影像赏!</a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank">酿酒模拟器游戏《酿酒大师》Steam发售!打造独创啤酒</a>
                    </li>
                  </ul>
                </div>
                <div class="rdzx-li">
                  <div class="rdzx-top">
                    <div class="h3-a">
                      <a href="" title="《黑神话》实机演示" class="orange" target="_blank">《黑神话》实机演示</a>
                      <a href="" title="《GTA6》预告片爆料" class="orange" target="_blank">《GTA6》预告片爆料</a>
                    </div>
                    <div class="three-a">
                      <a href="" title="" target="_blank"></a>
                      <i>|</i>
                      <a href="" title="" target="_blank"></a>
                      <i>|</i>
                      <a href="" title="" target="_blank"></a>
                    </div>
                    <div class="h3-a">
                      <a href="" title="10月新游推荐" class="orange" target="_blank">10月新游预览</a>
                      <a href="" title="《怪猎曙光》400万销量" class="orange" target="_blank">《怪猎曙光》400万销量</a>
                    </div>
                    <div class="three-a">
                      <a href="" title="" target="_blank"></a>
                      <i>|</i>
                      <a href="" title="" target="_blank"></a>
                      <i>|</i>
                      <a href="" title="" target="_blank"></a>
                    </div>
                  </div>
                  <ul class="news-link-ul bg-shadow3">
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                  </ul>

                  <ul class="news-link-ul">
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                  </ul>
                  <ul class="news-link-ul bg-shadow3">
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                  </ul>

                  <ul class="news-link-ul">
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                  </ul>
                  <ul class="news-link-ul bg-shadow3">
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                  </ul>

                  <ul class="news-link-ul">
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                  </ul>
                </div>
                <div class="rdzx-li">
                  <div class="rdzx-top">
                    <div class="h3-a">
                      <a href="" title="《鬼泣》制作人加入网易" class="orange" target="_blank">《鬼泣》制作人加入网易</a>
                      <a href="" title="《多元宇宙大乱斗》爆火" class="orange" target="_blank">《多元宇宙大乱斗》爆火</a>
                    </div>
                    <div class="three-a">
                      <a href="" title="" target="_blank"></a>
                      <i>|</i>
                      <a href="" title="" target="_blank"></a>
                      <i>|</i>
                      <a href="" title="" target="_blank"></a>
                    </div>
                    <div class="h3-a">
                      <a href="" title="《老头环》全球销量惊人" class="orange" target="_blank">《老头环》全球销量惊人</a>
                      <a href="" title="生化8 国区价格永降" class="orange" target="_blank">生化8 国区价格永降</a>
                    </div>
                    <div class="three-a">
                      <a href="" title="" target="_blank"></a>
                      <i>|</i>
                      <a href="" title="" target="_blank"></a>
                      <i>|</i>
                      <a href="" title="" target="_blank"></a>
                    </div>
                  </div>
                  <ul class="news-link-ul bg-shadow3">
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                  </ul>
                  <ul class="news-link-ul">
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                  </ul>
                  <ul class="news-link-ul bg-shadow3">
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                  </ul>
                  <ul class="news-link-ul">
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                  </ul>
                  <ul class="news-link-ul bg-shadow3">
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                  </ul>
                  <ul class="news-link-ul">
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                    <li>
                      <i></i>
                      <a href="" title="" target="_blank"></a>
                    </li>
                  </ul>
                </div>
                <div class="s1-bottom-toggle" data-page="0">
                  <div class="s1-bottom-left"></div>
                  <div class="s1-bottom-ul">
                    <div class="s1-bottom-li active"></div>
                    <div class="s1-bottom-li"></div>
                    <div class="s1-bottom-li"></div>
                  </div>
                  <div class="s1-bottom-right"></div>
                </div>
              </div>
            </div>
            <div class="toggle-con-li" id="s1-m-zxhh">
              <div class="s1-m-li zxhh-ul">
                <div class="zxhh-li">
                  <div class="new-hh-li">
                    <div class="new-hh-con">
                      <a href="" title="" target="_blank"><img src="images/preload.jpg" data-tb-original="" alt=""></a>
                      <div class="new-hh-info">
                        <a href="" title="" target="_blank"></a>
                        <p>
                          <font style="vertical-align: inherit;">
                            <font style="vertical-align: inherit;"></font>
                          </font>
                        </p>
                        <p>
                          <font style="vertical-align: inherit;">
                            <font style="vertical-align: inherit;"></font>
                          </font>
                        </p>
                        <p>
                          <font style="vertical-align: inherit;">
                            <font style="vertical-align: inherit;"></font>
                          </font>
                        </p>
                      </div>
                    </div>
                  </div>
                  <div class="new-hh-li">
                    <div class="new-hh-con">
                      <a href="" title="" target="_blank">
                        <img src="images/preload.jpg" data-tb-original="" alt="">
                      </a>
                      <div class="new-hh-info">
                        <a href="" title="" target="_blank"></a>
                        <p></p>
                        <p></p>
                        <p></p>
                      </div>
                    </div>
                  </div>
                  <div class="new-hh-ul"><a href="" title="" class="h3-a" target="_blank"></a>
                    <div class="three-a">
                      <p style="text-align: center;">
                        <a href="" target="_blank">
                          <span style="color: rgb(135, 136, 135);"></span>
                        </a>
                        <span style="color: rgb(229, 223, 229);">|</span>
                        <a href="" target="_blank">
                          <span style="color: rgb(135, 136, 135);"></span>
                        </a>
                        <span style="color: rgb(229, 223, 229);">|</span>
                        <a href="" target="_blank">
                          <span style="color: rgb(135, 136, 135);"></span>
                        </a>
                      </p>
                    </div>
                    <ul class="news-link-ul">
                      <li>
                        <i></i>
                        <a href="" title="" target="_blank"></a>
                      </li>
                      <li>
                        <i></i>
                        <a href="" title="" target="_blank"></a>
                      </li>
                      <li>
                        <i></i>
                        <a href="" title="" target="_blank"></a>
                      </li>
                      <li>
                        <i></i>
                        <a href="" title="" target="_blank"></a>
                      </li>
                      <li>
                        <i></i>
                        <a href="" title="" target="_blank"></a>
                      </li>
                      <li>
                        <i></i>
                        <a href="" title="" target="_blank"></a>
                      </li>
                      <li>
                        <i></i>
                        <a href="" title="" target="_blank"></a>
                      </li>
                      <li>
                        <i></i>
                        <a href="" title="" target="_blank"></a>
                      </li>
                    </ul>
                  </div>
                  <div class="new-hh-ul"><a href="" title="" class="h3-a" target="_blank"></a>
                    <div class="three-a">
                      <p style="text-align: center;">
                        <a href="" target="_blank">
                          <span style="color: rgb(135, 136, 135);"></span>
                        </a>
                        <span style="color: rgb(229, 223, 229);">|</span>
                        <a href="" target="_blank">
                          <span style="color: rgb(135, 136, 135);"></span>
                        </a>
                        <span style="color: rgb(229, 223, 229);">|</span>
                        <a href="" target="_blank">
                          <span style="color: rgb(135, 136, 135);"></span>
                        </a>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="toggle-con-li" id="s1-m-zxgl">
              <div class="s1-m-li zxgl-ul">
                <div class="ali-zxgl-pictj">
                  <div class="ali-zxgl-pictj-list">
                    <div class="ali-zxgl-pictj-list-img">
                      <a href="" class="img_a" target="_blank" title="">
                        <img src="images/preload.jpg" data-tb-original="images/GamesImages/Sid Meier’s Civilization VI Gathering Storm_1.jpg" alt="文明6：风云变幻">
                      </a>
                    </div>
                    <div class="ali-zxgl-pictj-list-title">
                      <a href="" target="_blank" title="文明6：风云变幻">文明6：风云变幻</a>
                    </div>
                  </div>
                  <div class="ali-zxgl-pictj-list">
                    <div class="ali-zxgl-pictj-list-img">
                      <a href="" class="img_a" target="_blank" title="师父">
                        <img src="images/preload.jpg" data-tb-original="images/GamesImages/SIFU_1.jpg" alt="师父">
                      </a>
                    </div>
                    <div class="ali-zxgl-pictj-list-title">
                      <a href="" target="_blank" title="师父">师父</a>
                    </div>
                  </div>
                  <div class="ali-zxgl-pictj-list">
                    <div class="ali-zxgl-pictj-list-img">
                      <a href="" class="img_a" target="_blank" title="孤岛惊魂5">
                        <img src="images/preload.jpg" data-tb-original="images/GamesImages/Far Cry 5_1.jpg" alt="孤岛惊魂5">
                      </a>
                    </div>
                    <div class="ali-zxgl-pictj-list-title">
                      <a href="" target="_blank" title="孤岛惊魂5">孤岛惊魂5</a>
                    </div>
                  </div>
                  <div class="ali-zxgl-pictj-list">
                    <div class="ali-zxgl-pictj-list-img">
                      <a href="" class="img_a" target="_blank" title="茶杯头">
                        <img src="images/preload.jpg" data-tb-original="images/GamesImages/Cuphead_1.jpg" alt="茶杯头">
                      </a>
                    </div>
                    <div class="ali-zxgl-pictj-list-title">
                      <a href="" target="_blank" title="茶杯头">茶杯头</a>
                    </div>
                  </div>
                  <div class="ali-zxgl-pictj-list">
                    <div class="ali-zxgl-pictj-list-img">
                      <a href="" class="img_a" target="_blank" title="丧尸围城4">
                        <img src="images/preload.jpg" data-tb-original="images/GamesImages/Dead Rising 4_1.jpg" alt="丧尸围城4">
                      </a>
                    </div>
                    <div class="ali-zxgl-pictj-list-title">
                      <a href="" target="_blank" title="丧尸围城4">丧尸围城4</a>
                    </div>
                  </div>
                  <div class="ali-zxgl-pictj-list">
                    <div class="ali-zxgl-pictj-list-img">
                      <a href="" class="img_a" target="_blank" title="往日不再">
                        <img src="images/preload.jpg" data-tb-original="images/GamesImages/Days Gone_1.jpg" alt="往日不再">
                      </a>
                    </div>
                    <div class="ali-zxgl-pictj-list-title">
                      <a href="" target="_blank" title="往日不再">往日不再</a>
                    </div>
                  </div>
                </div>
                <div class="ali-zxgl-three-list">
                  <div class="ali-zxgl-three-list-pic">
                    <div class="ali-zxgl-three-list-pic-left">
                      <a href="" target="_blank" title="卧龙：苍天陨落"><img src="images/preload.jpg" data-tb-original="images/GamesImages/Wo Long Fallen Dynasty_2.png" alt="卧龙：苍天陨落"/></a>
                    </div>
                    <div class="ali-zxgl-three-list-pic-right">
                      <a href="" target="_blank">  《卧龙：苍天陨落》是一款奇幻动作游戏，以玩家们熟悉的三国时期为背景，讲述了一个戏剧性的、充满动作元素的故事，一个无名的民兵在恶魔肆虐的三国中为生存而战。</a>
                    </div>
                  </div>
                  <div class="ali-zxgl-three-list-wz">
                    <div class="ali-zxgl-three-list-wz-list">
                      <a href="" target="_blank" title=""></a>
                    </div>
                    <div class="ali-zxgl-three-list-wz-list">
                      <a href="" target="_blank" title=""></a>
                    </div>
                  </div>
                  <ul>
                    <li><span>攻略</span>
                      <i></i>
                      <a href=""
                         target="_blank" title=""></a>
                    </li>
                    <li><span>攻略</span>
                      <i></i>
                      <a href="" target="_blank" title=""></a>
                    </li>
                    <li><span>攻略</span>
                      <i></i>
                      <a href="" target="_blank" title=""></a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="section1-right">
        <div class="s1-r-newdown">
          <div class="part-title"><span>最新下载</span></div>
          <div class="s1-r-newdown-ul">
            <div class="s1-r-newdown-li active">
              <div class="newdown-head">
                <span>新</span>
                <a>如龙：极2</a>
                <em>官方中文</em>
              </div>
              <a href="" title="如龙：极2" target="_blank" class="newdown-content">
                <img src="images/preload.jpg" data-original="images/GamesImages/Yakuza Kiwami 2_2.png" alt="如龙：极2">
                <div class="bg-shadow3">
                  <b>动作游戏ACT</b>
                  <p>3D画面、支持手柄、动作、黑道</p>
                  <p>暴力美学、多人同屏、音游</p>
                </div>
              </a>
            </div>
            <div class="s1-r-newdown-li">
              <div class="newdown-head">
                <span>新</span>
                <a>双点医院</a>
                <em>官方中文</em>
              </div>
              <a href="" title="双点医院" target="_blank" class="newdown-content">
                <img src="images/preload.jpg" data-original="images/GamesImages/Two Point Hospital_2.png" alt="双点医院">
                <div class="bg-shadow3">
                  <b>模拟经营SIM</b>
                  <p>单人单机、2D画面、不支持手柄</p>
                  <p>策略、经营、模拟</p>
                </div>
              </a>
            </div>
            <div class="s1-r-newdown-li">
              <div class="newdown-head">
                <span>新</span>
                <a>巫师3：狂猎 血与酒</a>
                <em>官方中文</em>
              </div>
              <a href="" title="巫师3：狂猎 血与酒" target="_blank" class="newdown-content">
                <img src="images/preload.jpg" data-original="images/GamesImages/The Witcher 3 Wild Hunt_2.jpg" alt="巫师3：狂猎 血与酒">
                <div class="bg-shadow3">
                  <b>角色扮演RPG</b>
                  <p>单人单机、支持手柄、高玩必备</p>
                  <p>有血有肉、角色扮演</p>
                </div>
              </a>
            </div>
            <div class="s1-r-newdown-li">
              <div class="newdown-head">
                <span>新</span>
                <a>暖雪</a>
                <em>官方中文</em>
              </div>
              <a href="" title="暖雪" target="_blank" class="newdown-content">
                <img src="images/preload.jpg" data-original="images/GamesImages/Warm Snow_2.jpg" alt="暖雪">
                <div class="bg-shadow3">
                  <b>角色扮演RPG</b>
                  <p>单人单机、支持手柄、2D画面</p>
                  <p>入门简单、优秀战斗</p>
                </div>
              </a>
            </div>
            <div class="s1-r-newdown-li">
              <div class="newdown-head">
                <span>新</span>
                <a>任天堂全明星大乱斗</a>
                <em>官方中文</em>
              </div>
              <a href="" title="任天堂全明星大乱斗" target="_blank" class="newdown-content">
                <img src="images/preload.jpg" data-original="images/GamesImages/Super Smash Bros. Ultimate.png" alt="任天堂全明星大乱斗">
                <div class="bg-shadow3">
                  <b>格斗游戏FTG</b>
                  <p>多人在线、支持手柄、高玩必备</p>
                  <p>格斗游戏、入门简单</p>
                </div>
              </a>
            </div>
            <div class="s1-r-newdown-li">
              <div class="newdown-head">
                <span>新</span>
                <a>怪物猎人：世界</a>
                <em>官方中文</em>
              </div>
              <a href="" title="怪物猎人：世界" target="_blank" class="newdown-content">
                <img src="images/preload.jpg" data-original="images/GamesImages/Monster Hunter World_2.png" alt="怪物猎人：世界">
                <div class="bg-shadow3">
                  <b>动作游戏ACT</b>
                  <p>单人单机、多人联机、3D画面</p>
                  <p>支持手柄、高玩必备</p>
                </div>
              </a>
            </div>
            <div class="s1-r-newdown-li">
              <div class="newdown-head">
                <span>新</span>
                <a>采石场惊魂</a>
                <em>官方中文</em>
              </div>
              <a href="" title="采石场惊魂" target="_blank" class="newdown-content">
                <img src="images/preload.jpg" data-original="images/GamesImages/The Quarry_2.jpg" alt="采石场惊魂">
                <div class="bg-shadow3">
                  <b>冒险游戏AVG</b>
                  <p>单人单机、局域网联机、多人联机</p>
                  <p>3D画面、支持手柄、菜鸟入门</p>
                </div>
              </a>
            </div>
            <div class="s1-r-newdown-li">
              <div class="newdown-head">
                <span>新</span>
                <a>尼尔：人工生命</a>
                <em>官方中文</em>
              </div>
              <a href="" title="尼尔：人工生命" target="_blank" class="newdown-content">
                <img src="images/preload.jpg" data-original="images/GamesImages/NieR Replicant ver_2.png" alt="尼尔：人工生命">
                <div class="bg-shadow3">
                  <b>动作游戏ACT</b>
                  <p>单人单机、3D画面、不支持手柄</p>
                  <p>菜鸟入门、叙事优秀</p>
                </div>
              </a>
            </div>
            <div class="s1-r-newdown-li">
              <div class="newdown-head">
                <span>新</span>
                <a>生化危机2：重制版</a>
                <em>官方中文</em>
              </div>
              <a href="" title="" target="_blank" class="newdown-content">
                <img src="images/preload.jpg" data-original="images/GamesImages/Resident Evil 2 Remake_2.png" alt="生化危机2：重制版">
                <div class="bg-shadow3">
                  <b>冒险游戏AVG</b>
                  <p>单人单机、3D画面、支持手柄</p>
                  <p>中级水平、完美还原</p>
                </div>
              </a>
            </div>
          </div>
        </div>
        <div class="s1-r-newgame">
          <div class="part-title"><span>即将上市</span></div>
          <div class="s1-r-newgame-ul">
            <div class="s1-r-newgame-li">
              <i><b></b></i>
              <div class="s1-r-con">
                <h4>发售日期：2023-02-11</h4>
                <a href="" title="霍格沃茨遗产" target="_blank">
                  <img src="images/preload.jpg" data-original="images/GamesImages/Hogwarts Legacy_2.jpg" alt="霍格沃茨遗产">
                  <p>霍格沃茨遗产</p>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--第二屏-->
    <!--第三屏-->
    <div class="section section3 bg-shadow3">
      <div class="part-title big-title nav-title">
        <span>游戏大作</span>
      </div>
      <div class="s3-p1">
        <div class="s3-p1-ul toggle-ul">
          <div class="toggle-li active"><span>1 最终幻想7：重制版</span><em></em></div>
          <div class="toggle-li"><span>2 艾尔登法环</span><em></em></div>
          <div class="toggle-li"><span>3 漫威蜘蛛侠：重制版</span><em></em></div>
          <div class="toggle-li"><span>4 最后生还者重制版</span><em></em></div>
          <div class="toggle-li"><span>5 荒野大镖客：救赎2</span><em></em></div>
          <div class="toggle-li"><span>6 Stray</span><em></em></div>
          <div class="toggle-li"><span>7 战神4</span><em></em></div>
          <div class="toggle-li"><span>8 地平线：西之绝境</span><em></em></div>
          <div class="toggle-li"><span>9 塞尔达传说：旷野之息</span><em></em></div>
          <div class="toggle-li"><span>10 微软飞行模拟</span><em></em></div>

        </div>
        <div class="toggle-con-ul s3-p1-con">
          <div class="toggle-con-li">
            <div class="s3-p1-head">
              <div class="s3-p1-l">
                <a href="" title="最终幻想7：重制版" target="_blank">最终幻想7：重制版</a>
                <span>角色扮演RPG</span><span>2021.12.16上市</span>
              </div>
              <div class="s3-p1-m">
                <div class="s3-p1-m-icon">“</div>
                <p>原汁原味地保留了原作风格</p>
              </div>
            </div>
            <div class="s3-p1-info">
              <div class="s3-info-l">
                <div>
                  <a href="" title="最终幻想7：重制版" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Final Fantasy VII Remake_1.jpg" alt="最终幻想7：重制版">
                  </a>
                </div>
                <a href="" target="_blank">专题</a>
                <a href="" target="_blank">论坛</a>
              </div>
              <div class="s3-info-r">
                <div class="jqdz-tj-list">
                  <div class="tj-left">下载</div>
                  <div class="tj-right">
                    <a href="" target="_blank" title="最终幻想7重制版官方中文正式版">官方中文正式版</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="最终幻想7重制版正版游戏试玩">正版游戏试玩</a>&nbsp;<br />
                    <a href="" target="_blank" title="最终幻想7重制版游戏修改器">游戏修改器</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="最终幻想7重制版流程攻略">流程攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="最终幻想7重制版成就大全">成就大全</a>&nbsp;
                  </div>
                </div>
                <div class="jqdz-tj-list">
                  <div class="tj-left">游戏简介</div>
                  <div class="tj-right">
                    <a target="_blank">图文攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">人物图鉴</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">BOSS图鉴</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">武器图鉴</a><br />
                    <a target="_blank">游戏问答</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">模组下载</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">收集要素</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">修改器教程</a></div>
                </div>
                <div class="s3-info-video">
                  <a title="最终幻想7：重制版" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Final Fantasy VII Remake_2.jpg" alt="最终幻想7：重制版">
                  </a>
                  <a title="最终幻想7：重制版" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Final Fantasy VII Remake_3.jpg" alt="最终幻想7：重制版">
                  </a>
                </div>
              </div>
            </div>
            <div class="s3-score-con">
              <div class="s3-score-head">
                <b>游戏评分</b>
              </div>
              <div class="toggle-ul s3-r-ul fn-clear">
                <div class="toggle-li active">
                  <div><span>9.2</span>/10</div>
                  <p>玩家评分</p>
                  <i></i>
                </div>
              </div>
              <div class="toggle-con-ul s3-r-con">
                <div class="toggle-con-li">
                  <p>
                    战斗系统可谓一流，多样的敌人也不会让人兴味索然，一小节故事带动了鲜活的情感流露，以及藏在米德加城中的人性。重温了这款经典作品（的一部分），其自身也是一款值得称道的 RPG。
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="toggle-con-li">
            <div class="s3-p1-head">
              <div class="s3-p1-l">
                <a href="" title="艾尔登法环" target="_blank">艾尔登法环</a>
                <span>角色扮演RPG</span><span>2022.2.25上市</span>
              </div>
              <div class="s3-p1-m">
                <div class="s3-p1-m-icon">“</div>
                <p>魂系列的集大大大成者</p>
              </div>
            </div>
            <div class="s3-p1-info">
              <div class="s3-info-l">
                <div>
                  <a href="" title="艾尔登法环" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Elden Ring_1.jpg" alt="艾尔登法环">
                  </a>
                </div>
                <a href="" target="_blank">专题</a>
                <a href="" target="_blank">论坛</a>
              </div>
              <div class="s3-info-r">
                <div class="jqdz-tj-list">
                  <div class="tj-left">下载</div>
                  <div class="tj-right">
                    <a href="" target="_blank" title="艾尔登法环官方中文正式版">官方中文正式版</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="艾尔登法环正版游戏试玩">正版游戏试玩</a>&nbsp;<br />
                    <a href="" target="_blank" title="艾尔登法环游戏修改器">游戏修改器</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="艾尔登法环流程攻略">流程攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="艾尔登法环图鉴大全">图鉴大全</a>&nbsp;
                  </div>
                </div>
                <div class="jqdz-tj-list">
                  <div class="tj-left">攻略</div>
                  <div class="tj-right">
                    <a target="_blank">图文攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">职业选择</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">成就大全</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">打法详解</a><br />
                    <a target="_blank">BOSS图鉴</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">发现位置</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">装备图鉴</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">修改器教程</a></div>
                </div>
                <div class="s3-info-video">
                  <a title="艾尔登法环" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Elden Ring_2.jpg" alt="黑道圣徒：重启版">
                  </a>
                  <a title="艾尔登法环" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Elden Ring_3.jpg" alt="黑道圣徒：重启版">
                  </a>
                </div>
              </div>
            </div>
            <div class="s3-score-con">
              <div class="s3-score-head">
                <b>游戏评分</b>
              </div>
              <div class="toggle-ul s3-r-ul fn-clear">
                <div class="toggle-li active">
                  <div><span>9.0</span>/10</div>
                  <p>玩家评分</p>
                  <i></i>
                </div>
              </div>
              <div class="toggle-con-ul s3-r-con">
                <div class="toggle-con-li">
                  <p>
                    《艾尔登法环》是一款黑暗幻想类的动作角色扮演游戏。玩家将体验到战胜困难所带来的乐趣。玩家会见到一些错综复杂的地图设计，充满层次感的城堡，以及许多类似的要素。
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="toggle-con-li">
            <div class="s3-p1-head">
              <div class="s3-p1-l">
                <a href="" title="漫威蜘蛛侠：重制版" target="_blank">漫威蜘蛛侠：重制版</a>
                <span>动作游戏ACT</span><span>2022.8.12上市</span>
              </div>
              <div class="s3-p1-m">
                <div class="s3-p1-m-icon">“</div>
                <p>一次壮丽的冒险</p>
              </div>
            </div>
            <div class="s3-p1-info">
              <div class="s3-info-l">
                <div>
                  <a href="" title="漫威蜘蛛侠：重制版" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Marvels Spiderman Remastered_1.jpg" alt="漫威蜘蛛侠：重制版">
                  </a>
                </div>
                <a href="" target="_blank">专题</a>
                <a href="" target="_blank">论坛</a>
              </div>
              <div class="s3-info-r">
                <div class="jqdz-tj-list">
                  <div class="tj-left">下载</div>
                  <div class="tj-right">
                    <a href="" target="_blank" title="漫威蜘蛛侠重制版官方中文正式版">官方中文正式版</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="漫威蜘蛛侠重制版图文攻略">图文攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="漫威蜘蛛侠重制版正版游戏试玩">正版游戏试玩</a>&nbsp;<br />
                    <a href="" target="_blank" title="漫威蜘蛛侠重制版多项修改器">多项修改器</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="漫威蜘蛛侠重制版游戏存档">游戏存档</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="漫威蜘蛛侠重制版游戏MOD合集">游戏MOD合集</a>&nbsp;
                  </div>
                </div>
                <div class="jqdz-tj-list">
                  <div class="tj-left">攻略</div>
                  <div class="tj-right">
                    <a target="_blank">图文攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">战衣大全</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">原版区别</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">boss图鉴</a><br />
                    <a target="_blank">视频攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">任务流程</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">画面推荐</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">中文设置</a></div>
                </div>
                <div class="s3-info-video">
                  <a title="漫威蜘蛛侠：重制版" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Marvels Spiderman Remastered_3.jpg" alt="漫威蜘蛛侠：重制版">
                  </a>
                  <a title="漫威蜘蛛侠：重制版" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Marvels Spiderman Remastered_4.jpg" alt="漫威蜘蛛侠：重制版">
                  </a>
                </div>
              </div>
            </div>
            <div class="s3-score-con">
              <div class="s3-score-head">
                <b>游戏评分</b>
              </div>
              <div class="toggle-ul s3-r-ul fn-clear">
                <div class="toggle-li active">
                  <div><span>8.5</span>/10</div>
                  <p>玩家评分</p>
                  <i></i>
                </div>
              </div>
              <div class="toggle-con-ul s3-r-con">
                <div class="toggle-con-li">
                  <p>
                    行运流水的打斗体验，配上手感绝佳的摆荡、跑酷系统相信能够经值回票价。
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="toggle-con-li">
            <div class="s3-p1-head">
              <div class="s3-p1-l">
                <a href="" title="最后生还者重制版" target="_blank">最后生还者重制版</a>
                <span>动作游戏ACT</span><span>2022.9.2上市</span>
              </div>
              <div class="s3-p1-m">
                <div class="s3-p1-m-icon">“</div>
                <p>好的冷饭，往往只需要简单的烹饪</p>
              </div>
            </div>
            <div class="s3-p1-info">
              <div class="s3-info-l">
                <div>
                  <a href="" title="最后生还者重制版" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/The Last of Us Part 1_1.jpg" alt="最后生还者重制版">
                  </a>
                </div>
                <a href="" target="_blank">专题</a>
                <a href="" target="_blank">论坛</a>
              </div>
              <div class="s3-info-r">
                <div class="jqdz-tj-list">
                  <div class="tj-left">下载</div>
                  <div class="tj-right">
                    <a href="" target="_blank" title="最后生还者重制版官方中文正式版">官方中文正式版</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="最后生还者重制版正版游戏试玩">正版游戏试玩</a>&nbsp;<br />
                    <a href="" target="_blank" title="最后生还者重制版游戏指南">游戏指南</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="最后生还者重制版流程攻略">流程攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="最后生还者重制版视频解说">视频解说</a>&nbsp;
                  </div>
                </div>
                <div class="jqdz-tj-list">
                  <div class="tj-left">攻略</div>
                  <div class="tj-right">
                    <a target="_blank">图文攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">角色大全</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">成就大全</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">玩法技巧</a><br />
                    <a target="_blank">新手指南</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">武器大全</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">画面对比</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">手册位置大全</a></div>
                </div>
                <div class="s3-info-video">
                  <a title="最后生还者重制版" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/The Last of Us Part 1_4.jpg" alt="黑道圣徒：重启版">
                  </a>
                  <a title="最后生还者重制版" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/The Last of Us Part 1_3.jpg" alt="黑道圣徒：重启版">
                  </a>
                </div>
              </div>
            </div>
            <div class="s3-score-con">
              <div class="s3-score-head">
                <b>游戏评分</b>
              </div>
              <div class="toggle-ul s3-r-ul fn-clear">
                <div class="toggle-li active">
                  <div><span>9.2</span>/10</div>
                  <p>玩家评分</p>
                  <i></i>
                </div>
              </div>
              <div class="toggle-con-ul s3-r-con">
                <div class="toggle-con-li">
                  <p>
                    没人可以否认，初代《最后生还者》放到现在，也依旧是能够一览众山小的杰作，是让初代以最完美的形态呈现的终极作品，是值得所有人重新细细品味人物情感和末世氛围的游戏。
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="toggle-con-li">
            <div class="s3-p1-head">
              <div class="s3-p1-l">
                <a href="" title="荒野大镖客：救赎2" target="_blank">荒野大镖客：救赎2</a>
                <span>第三人称射击TPS</span><span>2019.11.5上市</span>
              </div>
              <div class="s3-p1-m">
                <div class="s3-p1-m-icon">“</div>
                <p>不法时代的精致而大气的颂歌</p>
              </div>
            </div>
            <div class="s3-p1-info">
              <div class="s3-info-l">
                <div>
                  <a href="" title="荒野大镖客：救赎2" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Red Dead Redemption 2_1.jpg" alt="荒野大镖客：救赎2">
                  </a>
                </div>
                <a href="" target="_blank">专题</a>
                <a href="" target="_blank">论坛</a>
              </div>
              <div class="s3-info-r">
                <div class="jqdz-tj-list">
                  <div class="tj-left">下载</div>
                  <div class="tj-right">
                    <a href="" target="_blank" title="黑道圣徒重启版官方中文正式版">官方中文正式版</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="黑道圣徒重启版正版游戏试玩">正版游戏试玩</a>&nbsp;<br />
                    <a href="" target="_blank" title="黑道圣徒重启版游戏修改器">游戏修改器</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="黑道圣徒重启版流程攻略">流程攻略</a>&nbsp;
                  </div>
                </div>
                <div class="jqdz-tj-list">
                  <div class="tj-left">攻略</div>
                  <div class="tj-right">
                    <a target="_blank">图文攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">人物资料</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">传奇动物</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">武器大全</a><br />
                    <a target="_blank">游戏彩蛋</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">主线任务</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">支线任务</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">常见问题</a></div>
                </div>
                <div class="s3-info-video">
                  <a title="荒野大镖客：救赎2" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Red Dead Redemption 2_2.jpg" alt="荒野大镖客：救赎2">
                  </a>
                  <a title="荒野大镖客：救赎2" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Red Dead Redemption 2_3.jpg" alt="荒野大镖客：救赎2">
                  </a>
                </div>
              </div>
            </div>
            <div class="s3-score-con">
              <div class="s3-score-head">
                <b>游戏评分</b>
              </div>
              <div class="toggle-ul s3-r-ul fn-clear">
                <div class="toggle-li active">
                  <div><span>9.3</span>/10</div>
                  <p>玩家评分</p>
                  <i></i>
                </div>
              </div>
              <div class="toggle-con-ul s3-r-con">
                <div class="toggle-con-li">
                  <p>
                    这是一款罕见的杰作，是对那个不法时代的精致而大气的颂歌。想要见识一下本世代最棒的单人动作游戏是什么样子的吗？那就尽情享用《荒野大镖客：救赎2》吧！
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="toggle-con-li">
            <div class="s3-p1-head">
              <div class="s3-p1-l">
                <a href="" title="Stray" target="_blank">Stray</a>
                <span>冒险游戏AVG</span><span>2021.7.20上市</span>
              </div>
              <div class="s3-p1-m">
                <div class="s3-p1-m-icon">“</div>
                <p>第三人称的猫冒险游戏</p>
              </div>
            </div>
            <div class="s3-p1-info">
              <div class="s3-info-l">
                <div>
                  <a href="" title="Stray" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Stray_1.jpg" alt="Stray">
                  </a>
                </div>
                <a href="" target="_blank">专题</a>
                <a href="" target="_blank">论坛</a>
              </div>
              <div class="s3-info-r">
                <div class="jqdz-tj-list">
                  <div class="tj-left">下载</div>
                  <div class="tj-right">
                    <a href="" target="_blank" title="Stray全版本修改器">全版本修改器</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="Stray官方中文正式版">官方中文正式版</a>&nbsp;<br />
                    <a href="" target="_blank" title="Stray游戏测评">游戏测评</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="Stray全剧情流程攻略">全剧情流程攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="Stray正版游戏试玩">正版游戏试玩</a>&nbsp;
                  </div>
                </div>
                <div class="jqdz-tj-list">
                  <div class="tj-left">攻略</div>
                  <div class="tj-right">
                    <a target="_blank">图文攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">白金攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">密码大全</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">解谜攻略</a><br />
                    <a target="_blank">视频攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">徽章收集</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">乐谱位置</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">游戏评分</a></div>
                </div>
                <div class="s3-info-video">
                  <a title="Stray" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Stray_3.jpg" alt="Stray">
                  </a>
                  <a title="Stray" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Stray_4.jpg" alt="Stray">
                  </a>
                </div>
              </div>
            </div>
            <div class="s3-score-con">
              <div class="s3-score-head">
                <b>游戏评分</b>
              </div>
              <div class="toggle-ul s3-r-ul fn-clear">
                <div class="toggle-li active">
                  <div><span>8.8</span>/10</div>
                  <p>玩家评分</p>
                  <i></i>
                </div>
              </div>
              <div class="toggle-con-ul s3-r-con">
                <div class="toggle-con-li">
                  <p>
                    作为一款题材独特的动作冒险游戏，《迷失》在重点宣传的猫咪以及场景的设计上都倾注了不少心力，游戏中所呈现出来的效果也相当出色。不过游戏各方面的玩法设计都比较单薄浅显，体验略显单一。
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="toggle-con-li">
            <div class="s3-p1-head">
              <div class="s3-p1-l">
                <a href="" title="战神4" target="_blank">战神4</a>
                <span>动作游戏ACT</span><span>2022.1.15上市</span>
              </div>
              <div class="s3-p1-m">
                <div class="s3-p1-m-icon">“</div>
                <p>奎托斯以九界最伟大父亲的身份归来</p>
              </div>
            </div>
            <div class="s3-p1-info">
              <div class="s3-info-l">
                <div>
                  <a href="" title="战神4" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/God of War_1.jpg" alt="战神4">
                  </a>
                </div>
                <a href="" target="_blank">专题</a>
                <a href="" target="_blank">论坛</a>
              </div>
              <div class="s3-info-r">
                <div class="jqdz-tj-list">
                  <div class="tj-left">下载</div>
                  <div class="tj-right">
                    <a href="" target="_blank" title="战神4官方中文正式版">官方中文正式版</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="战神4正版游戏试玩">正版游戏试玩</a>&nbsp;<br />
                    <a href="" target="_blank" title="战神4游戏修改器">游戏修改器</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="战神4流程攻略">流程攻略</a>&nbsp;
                  </div>
                </div>
                <div class="jqdz-tj-list">
                  <div class="tj-left">攻略</div>
                  <div class="tj-right">
                    <a target="_blank">图文攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">武器详解</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">实用技巧</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">装备图鉴</a><br />
                    <a target="_blank">技能大全</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">素材大全</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">收集攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">BOSS打发</a></div>
                </div>
                <div class="s3-info-video">
                  <a title="战神4" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/God of War_2.jpg" alt="战神4">
                  </a>
                  <a title="战神4" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/God of War_3.jpg" alt="战神4">
                  </a>
                </div>
              </div>
            </div>
            <div class="s3-score-con">
              <div class="s3-score-head">
                <b>游戏评分</b>
              </div>
              <div class="toggle-ul s3-r-ul fn-clear">
                <div class="toggle-li active">
                  <div><span>9.2</span>/10</div>
                  <p>玩家评分</p>
                  <i></i>
                </div>
              </div>
              <div class="toggle-con-ul s3-r-con">
                <div class="toggle-con-li">
                  <p>
                    呈现了一段毫无短板、激动人心的旅程。游戏颇为用心地呈现了整个的世界、角色以及玩法，它是系列迄今为止目前最激荡人心、最令人印象深刻的一作。
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="toggle-con-li">
            <div class="s3-p1-head">
              <div class="s3-p1-l">
                <a href="" title="地平线：西之绝境" target="_blank">地平线：西之绝境</a>
                <span>角色扮演RPG</span><span>2022.2.18上市</span>
              </div>
              <div class="s3-p1-m">
                <div class="s3-p1-m-icon">“</div>
                <p>让机械感受我们的怒火</p>
              </div>
            </div>
            <div class="s3-p1-info">
              <div class="s3-info-l">
                <div>
                  <a href="" title="地平线：西之绝境" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Horizon Forbidden West_1.jpg" alt="地平线：西之绝境">
                  </a>
                </div>
                <a href="" target="_blank">专题</a>
                <a href="" target="_blank">论坛</a>
              </div>
              <div class="s3-info-r">
                <div class="jqdz-tj-list">
                  <div class="tj-left">下载</div>
                  <div class="tj-right">
                    <a href="" target="_blank" title="地平线西之绝境官方中文正式版">官方中文正式版</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="地平线西之绝境正版游戏试玩">正版游戏试玩</a>&nbsp;<br />
                    <a href="" target="_blank" title="地平线西之绝境游戏操作介绍">游戏操作介绍</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="地平线西之绝境流程攻略">流程攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="地平线西之绝境游戏修改器">游戏修改器</a>&nbsp;
                  </div>
                </div>
                <div class="jqdz-tj-list">
                  <div class="tj-left">攻略</div>
                  <div class="tj-right">
                    <a target="_blank">图文攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">任务流程</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">收集攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">玩法技巧</a><br />
                    <a target="_blank">部落特色</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">机械兽介绍</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">狩猎场攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">BOSS打法</a></div>
                </div>
                <div class="s3-info-video">
                  <a title="地平线：西之绝境" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Horizon Forbidden West_2.jpg" alt="地平线：西之绝境">
                  </a>
                  <a title="地平线：西之绝境" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Horizon Forbidden West_3.jpg" alt="地平线：西之绝境">
                  </a>
                </div>
              </div>
            </div>
            <div class="s3-score-con">
              <div class="s3-score-head">
                <b>游戏评分</b>
              </div>
              <div class="toggle-ul s3-r-ul fn-clear">
                <div class="toggle-li active">
                  <div><span>9.2</span>/10</div>
                  <p>玩家评分</p>
                  <i></i>
                </div>
              </div>
              <div class="toggle-con-ul s3-r-con">
                <div class="toggle-con-li">
                  <p>
                    扣人心弦的战斗、顶级的生物与角色设计以及迷人的开放世界，这三者的完美组合将《地平线 西之绝境》打造成了一款不折不扣的佳作，同时也是 PS5 机能的绝佳展示之作。
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="toggle-con-li">
            <div class="s3-p1-head">
              <div class="s3-p1-l">
                <a href="" title="塞尔达传说：旷野之息" target="_blank">塞尔达传说：旷野之息</a>
                <span>动作游戏ACT</span><span>2017.3.3上市</span>
              </div>
              <div class="s3-p1-m">
                <div class="s3-p1-m-icon">“</div>
                <p>一款令人振奋的开放式世界冒险游戏</p>
              </div>
            </div>
            <div class="s3-p1-info">
              <div class="s3-info-l">
                <div>
                  <a href="" title="塞尔达传说：旷野之息" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/The Legend of Zelda Breath of the Wild_1.jpg" alt="塞尔达传说：旷野之息">
                  </a>
                </div>
                <a href="" target="_blank">专题</a>
                <a href="" target="_blank">论坛</a>
              </div>
              <div class="s3-info-r">
                <div class="jqdz-tj-list">
                  <div class="tj-left">下载</div>
                  <div class="tj-right">
                    <a href="" target="_blank" title="塞尔达传说旷野之息游戏热门攻略">游戏热门攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="塞尔达传说旷野之息游戏DLC介绍">游戏DLC介绍</a>&nbsp;<br />
                    <a href="" target="_blank" title="塞尔达传说旷野之息新手入门">新手入门</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="塞尔达传说旷野之息游戏视频解说">视频解说</a>&nbsp;
                  </div>
                </div>
                <div class="jqdz-tj-list">
                  <div class="tj-left">攻略</div>
                  <div class="tj-right">
                    <a target="_blank">图文攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">装备收集</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">宝箱位置</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">迷宫攻略</a><br />
                    <a target="_blank">种子收集</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">BOSS打发</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">DLC</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">怪物分布</a></div>
                </div>
                <div class="s3-info-video">
                  <a title="塞尔达传说：旷野之息" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/The Legend of Zelda Breath of the Wild_2.jpg" alt="黑道圣徒：重启版">
                  </a>
                  <a title="塞尔达传说：旷野之息" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/The Legend of Zelda Breath of the Wild_3.jpg" alt="黑道圣徒：重启版">
                  </a>
                </div>
              </div>
            </div>
            <div class="s3-score-con">
              <div class="s3-score-head">
                <b>游戏评分</b>
              </div>
              <div class="toggle-ul s3-r-ul fn-clear">
                <div class="toggle-li active">
                  <div><span>9.4</span>/10</div>
                  <p>玩家评分</p>
                  <i></i>
                </div>
              </div>
              <div class="toggle-con-ul s3-r-con">
                <div class="toggle-con-li">
                  <p>
                    呈现了广阔的世界、壮丽的冒险、有趣的战斗和丰富的细节。林克从100年的沉睡中苏醒，踏上了打败加农、拯救海拉尔王国的旅程。
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="toggle-con-li">
            <div class="s3-p1-head">
              <div class="s3-p1-l">
                <a href="" title="微软飞行模拟" target="_blank">微软飞行模拟</a>
                <span>模拟经营SIM</span><span>2020.8.18上市</span>
              </div>
              <div class="s3-p1-m">
                <div class="s3-p1-m-icon">“</div>
                <p>无与伦比的模拟飞行体验</p>
              </div>
            </div>
            <div class="s3-p1-info">
              <div class="s3-info-l">
                <div>
                  <a href="" title="微软飞行模拟" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Microsoft Flight Simulator_1.jpg" alt="微软飞行模拟">
                  </a>
                </div>
                <a href="" target="_blank">专题</a>
                <a href="" target="_blank">论坛</a>
              </div>
              <div class="s3-info-r">
                <div class="jqdz-tj-list">
                  <div class="tj-left">下载</div>
                  <div class="tj-right">
                    <a href="" target="_blank" title="微软飞行模拟官方中文正式版">官方中文正式版</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="微软飞行模拟正版游戏试玩">正版游戏试玩</a>&nbsp;<br />
                    <a href="" target="_blank" title="微软飞行模拟流程攻略">流程攻略</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a href="" target="_blank" title="微软飞行模拟游戏修正补丁">游戏修正补丁</a>&nbsp;
                  </div>
                </div>
                <div class="jqdz-tj-list">
                  <div class="tj-left">攻略</div>
                  <div class="tj-right">
                    <a target="_blank">图文流程</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">操作说明</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">视频解说</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">飞机大全</a><br />
                    <a target="_blank">价格及内容一览</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">技巧演示</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">玩法介绍</a>&nbsp;
                    <span style="color: rgb(169, 169, 169);">|</span>&nbsp;
                    <a target="_blank">修改器教程</a></div>
                </div>
                <div class="s3-info-video">
                  <a title="微软飞行模拟" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Microsoft Flight Simulator_2.jpg" alt="微软飞行模拟">
                  </a>
                  <a title="微软飞行模拟" target="_blank">
                    <img src="images/preload.jpg" data-original="images/GamesImages/Microsoft Flight Simulator_3.jpg" alt="微软飞行模拟">
                  </a>
                </div>
              </div>
            </div>
            <div class="s3-score-con">
              <div class="s3-score-head">
                <b>游戏评分</b>
              </div>
              <div class="toggle-ul s3-r-ul fn-clear">
                <div class="toggle-li active">
                  <div><span>9.1</span>/10</div>
                  <p>玩家评分</p>
                  <i></i>
                </div>
              </div>
              <div class="toggle-con-ul s3-r-con">
                <div class="toggle-con-li">
                  <p>
                    令人难以置信的游戏体验。游戏中这种能够驾驶飞机前往世界上任何地方的自由度，没法用任何言语来形容。
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--第八屏-->
    <div class="section section8 bg-shadow3">
      <div class="ranking-container">
        <div class="part-title"><span>新游期待榜</span></div>
        <div class="ranking-ul">
          <div class="ranking-li active">
            <div class="ranking-head">
              <div class="ranking-num">1</div>
              <span>10.28</span>
              <a href="" target="_blank" title="使命召唤19：现代战争2" class="game-name">使命召唤19：现代战争2</a>
              <em class="level"></em>
            </div>
            <div class="ranking-con">
              <a href="" title="使命召唤19：现代战争2" target="_blank">
                <img src="images/preload.jpg" data-original="images/GamesImages/Call of Duty Modern Warfare II_1.jpg" alt="使命召唤19：现代战争2">
              </a>
              <div class="ranking-r">
                <p>类型：第一人称射击FPS</p>
                <p>发行：Activision, Inc.</p>
                <p>平台：PC/PS/XBOX</p>
                <div>
                  <a href="" target="_blank">论坛</a>
                  <a href="" target="_blank">专题</a>
                </div>
              </div>
            </div>
          </div>
          <div class="ranking-li">
            <div class="ranking-head">
              <div class="ranking-num">2</div>
              <span>10.19</span>
              <a href="" target="_blank" title="神秘海域：盗贼传奇合辑" class="game-name">神秘海域：盗贼传奇合辑</a>
              <em class="up"></em>
            </div>
            <div class="ranking-con">
              <a href="" title="" target="_blank">
                <img src="images/preload.jpg" data-tb-original="images/GamesImages/UNCHARTED Legacy of Thieves Collection_1.jpg" alt="神秘海域：盗贼传奇合辑">
              </a>
              <div class="ranking-r">
                <p>类型：冒险游戏AVG</p>
                <p>发行：PlayStation PC LLC</p>
                <p>平台：PC/PS</p>
                <div>
                  <a href="" target="_blank">论坛</a>
                  <a href="" target="_blank">专题</a>
                </div>
              </div>
            </div>
          </div>
          <div class="ranking-li">
            <div class="ranking-head">
              <div class="ranking-num">3</div>
              <span>12.14</span>
              <a href="" target="_blank" title="最终幻想7：核心危机 重聚" class="game-name">最终幻想7：核心危机 重聚</a>
              <em class="level"></em>
            </div>
            <div class="ranking-con">
              <a href="" title="最终幻想7：核心危机 重聚" target="_blank">
                <img src="images/preload.jpg" data-tb-original="images/GamesImages/Final Fantasy VII Crisis Core Reunion_1.jpg" alt="最终幻想7：核心危机 重聚">
              </a>
              <div class="ranking-r">
                <p>类型：角色扮演RPG</p>
                <p>发行：Square Enix</p>
                <p>平台：Xbox/PC/PS</p>
                <div>
                  <a href="" target="_blank">论坛</a>
                  <a href="" target="_blank">专题</a>
                </div>
              </div>
            </div>
          </div>
          <div class="ranking-li">
            <div class="ranking-head">
              <div class="ranking-num">4</div>
              <span>10.19</span>
              <a href="" target="_blank" title="瘟疫传说：安魂曲" class="game-name">瘟疫传说：安魂曲</a>
              <em class="level"></em>
            </div>
            <div class="ranking-con">
              <a href="" title="瘟疫传说：安魂曲" target="_blank">
                <img src="images/preload.jpg" data-tb-original="images/GamesImages/A Plague Tale Requiem_1.jpg" alt="瘟疫传说：安魂曲">
              </a>
              <div class="ranking-r">
                <p>类型：冒险游戏AVG</p>
                <p>发行：Focus Home Interactive</p>
                <p>平台：Xbox/PC/PS</p>
                <div>
                  <a href="" target="_blank">论坛</a>
                  <a href="" target="_blank">专题</a>
                </div>
              </div>
            </div>
          </div>
          <div class="ranking-li">
            <div class="ranking-head">
              <div class="ranking-num">5</div>
              <span>10.21</span>
              <a href="" target="_blank" title="女神异闻录5：皇家版" class="game-name">女神异闻录5：皇家版</a>
              <em class="up"></em>
            </div>
            <div class="ranking-con">
              <a href="" title="" target="_blank">
                <img src="images/preload.jpg" data-tb-original="images/GamesImages/Persona 5 The Royal_1.jpg" alt="女神异闻录5：皇家版">
              </a>
              <div class="ranking-r">
                <p>类型：角色扮演RPG</p>
                <p>发行：SEGA</p>
                <p>平台：Xbox/PC/PS/NS</p>
                <div>
                  <a href="" target="_blank">论坛</a>
                  <a href="" target="_blank">专题</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <i class="col-line"></i>
      <div class="ranking-container">
        <div class="part-title"><span>新游人气榜</span></div>
        <div class="ranking-ul">
          <div class="ranking-li active">
            <div class="ranking-head">
              <div class="ranking-num">1</div>
              <span>08.12</span>
              <a href="" target="_blank" title="漫威蜘蛛侠：重制版"
                 class="game-name">漫威蜘蛛侠：重制版</a>
              <em class="level"></em>
            </div>
            <div class="ranking-con">
              <a href="" title="漫威蜘蛛侠：重制版" target="_blank">
                <img src="images/preload.jpg" data-original="images/GamesImages/Marvels Spiderman Remastered_1.jpg" alt="漫威蜘蛛侠：重制版">
              </a>
              <div class="ranking-r">
                <p>类型：动作游戏ACT</p>
                <p>发行：Sony Interactive Entertainment</p>
                <p>平台：PC/PS5</p>
                <div>
                  <a href="" target="_blank">论坛</a>
                  <a href="" target="_blank">专题</a>
                </div>
              </div>
            </div>
          </div>
          <div class="ranking-li">
            <div class="ranking-head">
              <div class="ranking-num">2</div>
              <span>09.02</span>
              <a href="" target="_blank" title="最后生还者重制版" class="game-name">最后生还者重制版</a>
              <em class="up"></em>
            </div>
            <div class="ranking-con">
              <a href="" title="" target="_blank">
                <img src="images/preload.jpg" data-tb-original="images/GamesImages/The Last of Us Part 1_1.jpg" alt="最后生还者重制版">
              </a>
              <div class="ranking-r">
                <p>类型：动作游戏ACT</p>
                <p>发行：Naughty Dog Software</p>
                <p>平台：PC/PS5</p>
                <div>
                  <a href="" target="_blank">论坛</a>
                  <a href="" target="_blank">专题</a>
                </div>
              </div>
            </div>
          </div>
          <div class="ranking-li">
            <div class="ranking-head">
              <div class="ranking-num">3</div>
              <span>08.23</span>
              <a href="" target="_blank" title="黑道圣徒：重启版" class="game-name">黑道圣徒：重启版</a>
              <em class="up"></em>
            </div>
            <div class="ranking-con">
              <a href="" title="黑道圣徒：重启版" target="_blank">
                <img src="images/preload.jpg" data-tb-original="images/GamesImages/Saints Row_1.jpg" alt="黑道圣徒：重启版">
              </a>
              <div class="ranking-r">
                <p>类型：第三人称射击TPS</p>
                <p>发行：Deep Silver</p>
                <p>平台：Xbox/PC/PS4</p>
                <div>
                  <a href="" target="_blank">论坛</a>
                  <a href="" target="_blank">专题</a>
                </div>
              </div>
            </div>
          </div>
          <div class="ranking-li">
            <div class="ranking-head">
              <div class="ranking-num">4</div>
              <span>06.10</span>
              <a href="" target="_blank" title="采石场惊魂" class="game-name">采石场惊魂</a>
              <em class="level"></em>
            </div>
            <div class="ranking-con">
              <a href="" title="采石场惊魂" target="_blank">
                <img src="images/preload.jpg" data-tb-original="images/GamesImages/The Quarry_1.jpg" alt="采石场惊魂">
              </a>
              <div class="ranking-r">
                <p>类型：冒险游戏AVG</p>
                <p>发行：2K Games</p>
                <p>平台：Xbox/PC/PS4</p>
                <div>
                  <a href="" target="_blank">论坛</a>
                  <a href="" target="_blank">专题</a>
                </div>
              </div>
            </div>
          </div>
          <div class="ranking-li">
            <div class="ranking-head">
              <div class="ranking-num">5</div>
              <span>09.14</span>
              <a href="" target="_blank" title="审判之眼：死神的遗言重制版" class="game-name">审判之眼：死神的遗言重制版</a>
              <em class="level"></em>
            </div>
            <div class="ranking-con">
              <a href="" title="" target="_blank">
                <img src="images/preload.jpg" data-tb-original="images/GamesImages/Judgment Remastered_1.jpg" alt="审判之眼：死神的遗言重制版">
              </a>
              <div class="ranking-r">
                <p>类型：动作游戏ACT</p>
                <p>发行：SEGA</p>
                <p>平台：PC/Xbox/PS5</p>
                <div>
                  <a href="" target="_blank">论坛</a>
                  <a href="" target="_blank">专题</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <i class="col-line"></i>
      <div class="ranking-container">
        <div class="part-title"><span>2022年度榜</span></div>
        <div class="ranking-ul">
          <div class="ranking-li active">
            <div class="ranking-head">
              <div class="ranking-num">1</div>
              <span>02.25</span>
              <a href="" target="_blank" title="艾尔登法环"
                 class="game-name">艾尔登法环</a>
              <em class="level"></em>
            </div>
            <div class="ranking-con">
              <a href="" title="艾尔登法环" target="_blank">
                <img src="images/preload.jpg" data-original="images/GamesImages/Elden Ring_1.jpg" alt="艾尔登法环">
              </a>
              <div class="ranking-r">
                <p>类型：角色扮演RPG</p>
                <p>发行：FS,BANDAI NAMCO</p>
                <p>平台：PC/PS4</p>
                <div>
                  <a href="" target="_blank">论坛</a>
                  <a href="" target="_blank">专题</a>
                </div>
              </div>
            </div>
          </div>
          <div class="ranking-li">
            <div class="ranking-head">
              <div class="ranking-num">2</div>
              <span>01.15</span>
              <a href="" target="_blank" title="战神4" class="game-name">战神4</a>
              <em class="up"></em>
            </div>
            <div class="ranking-con">
              <a href="" title="战神4" target="_blank">
                <img src="images/preload.jpg" data-tb-original="images/GamesImages/God of War_1.jpg" alt="战神4">
              </a>
              <div class="ranking-r">
                <p>类型：动作游戏ACT</p>
                <p>发行：Sony Interactive Entertainment</p>
                <p>平台：PC/PS</p>
                <div>
                  <a href="" target="_blank">论坛</a>
                  <a href="" target="_blank">专题</a>
                </div>
              </div>
            </div>
          </div>
          <div class="ranking-li">
            <div class="ranking-head">
              <div class="ranking-num">3</div>
              <span>02.08</span>
              <a href="" target="_blank" title="师父" class="game-name">师父</a>
              <em class="up"></em>
            </div>
            <div class="ranking-con">
              <a href="" title="师父" target="_blank">
                <img src="images/preload.jpg" data-tb-original="images/GamesImages/SIFU_1.jpg" alt="师父">
              </a>
              <div class="ranking-r">
                <p>类型：动作游戏ACT</p>
                <p>发行：Sloclap</p>
                <p>平台：PC/PS</p>
                <div>
                  <a href="" target="_blank">论坛</a>
                  <a href="" target="_blank">专题</a>
                </div>
              </div>
            </div>
          </div>
          <div class="ranking-li">
            <div class="ranking-head">
              <div class="ranking-num">4</div>
              <span>01.13</span>
              <a href="" target="_blank" title="怪物猎人：崛起" class="game-name">怪物猎人：崛起</a>
              <em class="level"></em>
            </div>
            <div class="ranking-con">
              <a href="" title="怪物猎人：崛起" target="_blank">
                <img src="images/preload.jpg" data-tb-original="images/GamesImages/Monster Hunter Rise_1.jpg" alt="怪物猎人：崛起">
              </a>
              <div class="ranking-r">
                <p>类型：动作游戏ACT</p>
                <p>发行：CAPCOM Co., Ltd.</p>
                <p>平台：NS/PC</p>
                <div>
                  <a href="" target="_blank">论坛</a>
                  <a href="" target="_blank">专题</a>
                </div>
              </div>
            </div>
          </div>
          <div class="ranking-li">
            <div class="ranking-head">
              <div class="ranking-num">5</div>
              <span>02.04</span>
              <a href="" target="_blank" title="消逝的光芒2" class="game-name">消逝的光芒2</a>
              <em class="up"></em>
            </div>
            <div class="ranking-con">
              <a href="" title="消逝的光芒2" target="_blank">
                <img src="images/preload.jpg" data-tb-original="images/GamesImages/Dying Light2_1.jpg" alt="消逝的光芒2">
              </a>
              <div class="ranking-r">
                <p>类型：动作游戏ACT</p>
                <p>发行：Warner Bros. Interactive</p>
                <p>平台：PC/PS/Xbox/NS</p>
                <div>
                  <a href="" target="_blank">论坛</a>
                  <a href="" target="_blank">专题</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--底部-->
  <div class="footer">
    <div class="footer-con">
      <div class="footer-ali">
        <div class="footer-ali_c">
          <br>CopyRight © 2001-2022
          GameHuaGuoHell.Net All Right Reserved 游戏花果山 版权所有
          <br>
        </div>
      </div>
    </div>
  </div>

  </body>
</html>
