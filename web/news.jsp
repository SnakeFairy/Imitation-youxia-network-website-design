<%--
  Created by IntelliJ IDEA.
  User: 26070
  Date: 2022.11.08
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>资讯中心</title>
  <link href="./css/swiper-bundle.min.css" rel="stylesheet">
  <link href="./css/news_index_2022.css" rel="stylesheet">
  <script src="./js/jquery-1.8.3.min.js"></script>
  <script src="./js/swiper-bundle.min.js"></script>
  <script src="./js/jquery.lazyload-1.9.3.min.js"></script>
</head>

<link href="./css/ali-rotate-auth-pc-global-version-1.css" rel="stylesheet">
<body>
<div class="globaltop">
  <link href="./css/ali-sso-pc-global-version-1.css" rel="stylesheet">
  <link href="./css/news_top_adapt_2022.css" rel="stylesheet">
  <script src="./js/jquery.masonry.min.js"></script>
  <script src="./js/news_top_adapt_2022.js"></script>

  <div class="ns_t3">
    <div class="t3c">
      <ul>
        <li><a href="${pageContext.request.contextPath}/index.jsp">网站首页</a></li>
        <li class="sline"></li>
        <li class="hover"><a href="#">资讯首页</a></li>
        <li class="sline"></li>
        <li><a href="${pageContext.request.contextPath}/GamesView.jsp">下载站</a></li>
        <li class="sline"></li>
        <li><a href=""></a></li>
        <li class="sline"></li>
        <li><a href=""></a></li>
        <li class="sline"></li>
        <li><a href=""></a></li>
        <li class="sline"></li>
        <li><a href=""></a></li>
        <li class="sline"></li>
        <li><a href=""></a></li>
        <li class="sline"></li>
        <li><a href=""></a></li>
        <li class="sline"></li>
        <li><a href=""></a></li>
        <li class="sline"></li>
        <li><a href=""></a></li>
        <li class="sline"></li>
        <li><a href=""></a></li>
      </ul>
    </div>
  </div>
</div>
<div class="main">
  <div class="s1 section nopadding">
    <div class="swiper swiper_s1_bg">
      <div class="swiper-wrapper">
        <a class="swiper-slide" href="" target="_blank">
          <div class="sectionin">
            <div class="s1_tit">史诗般的「北欧之旅」收官作</div>
            <div class="s1_con">
              <p>50小时的《战神：诸神黄昏》评测</p>
            </div>
          </div>
          <div class="mainshowbg" style="background: rgb(157,187,225) url(images/GodofWarRagnarok_2.png) no-repeat center top;"></div>
        </a><a class="swiper-slide" href="" target="_blank">
        <div class="sectionin">
          <div class="s1_tit">真正的「稳中向好」</div>
          <div class="s1_con">
            <p>《卧龙 苍天陨落》试玩报告</p>
          </div>
        </div>
        <div class="mainshowbg" style="background: rgb(156,29,6) url(images/WoLongFallenDynasty_4.png) no-repeat center top;"></div>
      </a><a class="swiper-slide" href="" target="_blank">
        <div class="sectionin">
          <div class="s1_tit">错综复杂而且光怪陆离的非线性之旅</div>
          <div class="s1_con">
            <p>《蔑视》评测</p>
          </div>
        </div>
        <div class="mainshowbg" style="background: rgb(187,176,120) url(images/Scorn.png) no-repeat center top;"></div>
      </a>
      </div>
    </div>
    <div class="swiper_s1_tabout sectionin">
      <div class="swiper swiper_s1_tab">
        <div class="swiper-wrapper">
          <div class="swiper-slide stop-swiping">
            <img alt="50小时的《战神：诸神黄昏》评测" src="images/GodofWarRagnarok_1.png">
          </div>
          <div class="swiper-slide stop-swiping">
            <img alt="《卧龙 苍天陨落》试玩报告" src="images/WoLongFallenDynasty_4.png">
          </div>
          <div class="swiper-slide stop-swiping">
            <img alt="《蔑视》评测" src="images/Scorn.png">
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="s2 section nopadding">
    <div class="sectionin">
      <a class="active" href="#ycbj"><span>原创内容</span></a>
      <a href="#tszl"><span>特色专栏</span></a>
      <a href="#yxpc"><span>游戏评测</span></a>
      <a href="#yxpc"><span>制作人专访</span></a>
      <a href="#ycsp"><span>游戏视频</span></a>
      <a href="#rmjx"><span>热门精选</span></a>
    </div>
  </div>

  <div class="s3 section">
    <div class="sectionin">
      <div class="smblock block1" id="ycbj">
        <div class="tit">
          <div class="l">原创内容</div>
        </div>
        <div class="blockbox">
          <div class="ycswiper swiper">
            <div class="swiper-wrapper">
              <a class="swiper-slide" href="" target="_blank" title="《双人成行》登陆switch！">
                <div class="imgbox"><img alt="《双人成行》登陆switch！" src="images/It%20Takes%20Two_3.png"></div>
                <span>《双人成行》登陆switch！</span>
              </a>
              <a class="swiper-slide" href="" target="_blank" title="《最终幻想16》剧情模式难度介绍">
                <div class="imgbox">
                  <img alt="《最终幻想16》剧情模式难度介绍" src="images/Final%20Fantasy%20XVI.png">
                </div>
                <span>《最终幻想16》剧情模式难度介绍</span>
              </a>
              <a class="swiper-slide" href="" target="_blank" title="《辐射4》43G高清材质包发布 大修游戏本体与DLC">
                <div class="imgbox"><img alt="《辐射4》43G高清材质包发布 大修游戏本体与DLC" src="images/Fallout%204_2.png"></div>
                <span>《辐射4》43G高清材质包发布 大修游戏本体与DLC</span>
              </a>
            </div>
            <div class="ycswiperbtn ycswiper-next swiper-button-next"></div>
            <div class="ycswiperbtn ycswiper-prev swiper-button-prev"></div>
            <div class="ycswiper-pagination"></div>
          </div>
          <div class="yclist">
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="我们采访了OW制作组，还聊到了神似变形金刚的新英雄">
                <div class="imgbox">
                  <img alt="我们采访了OW制作组，还聊到了神似变形金刚的新英雄" class="lazy" data-original="images/ow2.png"></div>
                <div class="conbox">
                  <div class="i1">
                    <span>我们采访了OW制作组，还聊到了神似变形金刚的新英雄</span>
                  </div>
                  <div class="i2"></div>
                  <div class="i3">2022/11/05</div>
                </div>
                <div class="desbox">
                  <p></p>
                </div>
              </a>
            </div>
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="农场蓝胖子——哆啦A梦牧场物语：自然王国与和乐家人">
                <div class="imgbox">
                  <img alt="农场蓝胖子——哆啦A梦牧场物语：自然王国与和乐家人" class="lazy" data-original="images/duola.png"></div>
                <div class="conbox">
                  <div class="i1">
                    <span>农场蓝胖子——哆啦A梦牧场物语：自然王国与和乐家人</span>
                  </div>
                  <div class="i2"></div>
                  <div class="i3">2022/11/03</div>
                </div>
                <div class="desbox"><p></p></div>
              </a>
            </div>
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="原神纳西妲登场 效果不俗配队多样">
                <div class="imgbox">
                  <img alt="原神纳西妲登场 效果不俗配队多样" class="lazy" data-original="images/naxidan.png"></div>
                <div class="conbox">
                  <div class="i1">
                    <span>原神纳西妲登场 效果不俗配队多样</span>
                  </div>
                  <div class="i2"></div>
                  <div class="i3">2022/11/03</div>
                </div>
                <div class="desbox"><p>“屏幕前的你抽草神了吗?”</p></div>
              </a></div>
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="看完匹诺曹的新实机，这2022年我是一天都待不下去了">
                <div class="imgbox">
                  <img alt="看完匹诺曹的新实机，这2022年我是一天都待不下去了" class="lazy" data-original="images/p.jpg"></div>
                <div class="conbox">
                  <div class="i1">
                    <span>看完匹诺曹的新实机，这2022年我是一天都待不下去了</span>
                  </div>
                  <div class="i2"></div>
                  <div class="i3">2022-11-17</div>
                </div>
                <div class="desbox">
                  <p>“说到美化滤镜谁也整不过官方，这木偶也太帅了”</p>
                </div>
              </a>
            </div>
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="目前最棒的开放世界宝可梦，却因为bug被骂上热搜">
                <div class="imgbox">
                  <img alt="目前最棒的开放世界宝可梦，却因为bug被骂上热搜" class="lazy" data-original="images/pokemon.jpg"></div>
                <div class="conbox">
                  <div class="i1">
                    <span>目前最棒的开放世界宝可梦，却因为bug被骂上热搜</span>
                  </div>
                  <div class="i2"></div>
                  <div class="i3">2022-11-21</div>
                </div>
                <div class="desbox">
                  <p>“宝可梦训练师们，都玩上《宝可梦朱/紫》了吗？”</p>
                </div>
              </a>
            </div>
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="狮门影业想开发《疾速追杀》3A游戏">
                <div class="imgbox">
                  <img alt="狮门影业想开发《疾速追杀》3A游戏" class="lazy" data-original="images/Johnwick.png"></div>
                <div class="conbox">
                  <div class="i1">
                    <span>狮门影业想开发《疾速追杀》3A游戏</span>
                  </div>
                  <div class="i2"></div>
                  <div class="i3">2022/11/05</div>
                </div>
                <div class="desbox">
                  <p></p>
                </div>
              </a>
            </div>

          </div>
        </div>
      </div>

      <div class="smblcok block2" id="tszl">
        <div class="tit">
          <div class="l">特色专栏</div>
        </div>
        <div class="tesemain">
          <div class="blockbox active">
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="撞车发布会，今天的你选择索尼还是任天堂？">
                <div class="imgbox">
                  <img alt="撞车发布会，今天的你选择索尼还是任天堂？" class="lazy" data-original="images/The Legend of Zelda Tears of the Kingdom_1.png">
                </div>
                <div class="conbox">
                  <div class="i1">
                    <span>撞车发布会，今天的你选择索尼还是任天堂？</span>
                  </div>
                  <div class="i2"></div>
                  <div class="i3">2022/09/14</div>
                </div>
                <div class="desbox">
                  <p>纵观两家的发布会，都可以说内容丰富，诚意满满。在没什么大作水花的9月，很精彩地“勾引”起我们对大作的期待。</p>
                </div>
              </a></div>
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="从2016年夏到2022年秋,守望先锋“归来”了什么？">
                <div class="imgbox">
                  <img alt="从2016年夏到2022年秋,守望先锋“归来”了什么？" class="lazy" data-original="images/overwatch2_1.png"></div>
                <div class="conbox">
                  <div class="i1">
                    <span>从2016年夏到2022年秋,守望先锋“归来”了什么？</span>
                  </div>
                  <div class="i2"></div>
                  <div class="i3">2022/09/30</div>
                </div>
                <div class="desbox">
                  <p>或许，我们无法在这里感受到初次游玩《守望先锋》的那种惊喜，但从“归来”的一系列变化来看，久违的我们没准能体会到这种一如当初的快乐。</p>
                </div>
              </a></div>
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="辉煌一时而又神秘消失？那些《文明6》中的远古文明">
                <div class="imgbox">
                  <img alt="辉煌一时而又神秘消失？那些《文明6》中的远古文明" class="lazy" data-original="images/fengyunbianhuan.png"></div>
                <div class="conbox">
                  <div class="i1">
                    <span>辉煌一时而又神秘消失？那些《文明6》中的远古文明</span>
                  </div>
                  <div class="i2"></div>
                  <div class="i3">2022/01/30</div>
                </div>
                <div class="desbox">
                  <p>出色的游戏内容，有深度的游戏体验，都是玩家们对《文明6》的注脚，在这里，我们真正可以体验对一个时间跨度长达几千年文明的塑造，以及塑造成功后的成就感。而这个游戏中最有魅力的，就是这些一个个有着或灿烂或神秘历史的古代文明</p>
                </div>
              </a></div>
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="MOBA英雄设计，有趣和有用哪个更重要？">
                <div class="imgbox">
                  <img alt="MOBA英雄设计，有趣和有用哪个更重要？" class="lazy" data-original="images/moba.jpg"></div>
                <div class="conbox">
                  <div class="i1">
                    <span>MOBA英雄设计，有趣和有用哪个更重要？</span>
                  </div>
                  <div class="i2"></div>
                  <div class="i3">2022/08/26</div>
                </div>
                <div class="desbox">
                  <p>从梗图出圈的“人马拉车”说开去。</p>
                </div>
              </a></div>
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="玩游戏，要深度还是要爽度？">
                <div class="imgbox">
                  <img alt="玩游戏，要深度还是要爽度？" class="lazy" data-original="images/shendu.jpg"></div>
                <div class="conbox">
                  <div class="i1">
                    <span>玩游戏，要深度还是要爽度？</span>
                  </div>
                  <div class="i2"></div>
                  <div class="i3">2022/05/07</div>
                </div>
                <div class="desbox">
                  <p>最近在2ch上引发热议的“RPGR最不需要的元素”话题下，霓虹网友们的回复体现了对于“深度”与“爽度”两种不同取向的诉求，那么对你来说，一款游戏更重要的是哪个呢？</p>
                </div>
              </a></div>
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="会在游戏里嘲讽对手吗？">
                <div class="imgbox">
                  <img alt="会在游戏里嘲讽对手吗？" class="lazy" data-original="images/ruobao.png"></div>
                <div class="conbox">
                  <div class="i1">
                    <span>你会在游戏里嘲讽对手吗？</span>
                  </div>
                  <div class="i2"></div>
                  <div class="i3">2022/05/27</div>
                </div>
                <div class="desbox">
                  <p>如今游戏中，与对手的互动也是游戏的一大乐子，但这个乐子有时也会成为一把双刃剑，你会在游戏里嘲讽对手吗？</p>
                </div>
              </a></div>
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="">
                <div class="imgbox">
                  <img alt="" class="lazy" data-original="images/Total War Three Kingdoms.jpg">
                </div>
                <div class="conbox">
                  <div class="i1">
                    <span>三国剧本都没出就停更了？怎样评价如今的全战三国</span>
                  </div>
                  <div class="i2"></div>
                  <div class="i3">2022/05/28</div>
                </div>
                <div class="desbox">
                  <p>宣布停更，就此完结。你会给现在的《全面战争：三国》打几分？</p>
                </div>
              </a>
            </div>
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="披戴鬼面，我即死神！聊聊游戏里鬼怪面具的意义">
                <div class="imgbox">
                  <img alt="披戴鬼面，我即死神！聊聊游戏里鬼怪面具的意义" class="lazy" data-original="images/gui.png"></div>
                <div class="conbox">
                  <div class="i1">
                    <span>披戴鬼面，我即死神！聊聊游戏里鬼怪面具的意义</span>
                  </div>
                  <div class="i2"></div>
                  <div class="i3">2022/03/18</div>
                </div>
                <div class="desbox">
                  <p></p>
                </div>
              </a>
            </div>
          </div>

        </div>
      </div>

      <div class="smblock block3" id="yxpc">
        <div class="smleft">
          <div class="tit">
            <div class="l">游戏评测</div>
          </div>
          <div class="blockbox">
            <div class="itemout">
              <a class="item hashover nopadding" href="" target="_blank">
                <div class="imgbox">
                  <img alt="战神：诸神黄昏" src="images/GodofWarRagnarok_3.jpg"></div>
                <div class="pcinfo">
                  <div class="i1">战神：诸神黄昏</div>
                  <div class="i2">
                    <span>花果山原创测评组</span>
                    <em>2022/11/4</em>
                  </div>
                  <div class="i3">北欧旅途的圆满句号</div>
                  <div class="i4">
                    <span>单机游戏</span>
                    <span>诸神黄昏</span>
                    <span>RPG</span>
                    <span>第一方</span>
                  </div>
                </div>
                <div class="pfbox"><span>9</span><i>.0</i></div>
              </a></div>
            <div class="itemout">
              <a class="item hashover nopadding" href="" target="_blank">
                <div class="imgbox">
                  <img alt="生化危机8村庄：温特斯家的传续" src="images/Resident%20Evil%20Village_2.jpg">
                </div>
                <div class="pcinfo">
                  <div class="i1">生化危机8村庄：温特斯家的传续</div>
                  <div class="i2"><span>花果山原创评测组</span><em>2022/10/29</em></div>
                  <div class="i3">补完伊森·温特斯的最后拼图</div>
                  <div class="i4"><span>生存恐惧</span><span>心理恐惧</span><span>探索解密</span></div>
                </div>
                <div class="pfbox"><span>7</span><i>.0</i></div>
              </a></div>
            <div class="itemout">
              <a class="item hashover nopadding" href="" target="_blank">
                <div class="imgbox">
                  <img alt="瘟疫传说：安魂曲" src="images/A%20Plague%20Tale%20Requiem_2.jpg">
                </div>
                <div class="pcinfo">
                  <div class="i1">瘟疫传说：安魂曲</div>
                  <div class="i2">
                    <span>花果山原创评测组</span>
                    <em>2022/10/18</em>
                  </div>
                  <div class="i3">被鼠淹没，不知所措</div>
                  <div class="i4">
                    <span>动作冒险</span>
                    <span>中世纪</span>
                    <span>RPG</span>
                    <span>特殊能力</span>
                  </div>
                </div>
                <div class="pfbox"><span>8</span><i>.0</i></div>
              </a>
            </div>
          </div>
        </div>
        <div class="smright">
          <div class="tit">
            <div class="l">制作人专访</div>
          </div>
          <div class="blockbox">
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="对话《大多数》制作人：想试试更有趣地表达生活">
                <div class="imgbox">
                  <img alt="对话《大多数》制作人：想试试更有趣地表达生活" class="lazy" data-original="images/nobody.jpg">
                </div>
                <div class="conbox">
                  <div class="i1"><span>对话《大多数》制作人：想试试更有趣地表达生活</span></div>
                  <div class="i2"></div>
                  <div class="i3">2022/02/25</div>
                </div>
                <div class="desbox"><p>“作为文艺工作者，我们认为城市蓝领群体的生活需要被真实地表达。”</p></div>
              </a>
            </div>
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="专访《碧海黑帆》总监：跳票的这些年制作组干什么去了？">
                <div class="imgbox">
                  <img alt="专访《碧海黑帆》总监：跳票的这些年制作组干什么去了？" class="lazy" data-original="images/Skull and bones.png">
                </div>
                <div class="conbox">
                  <div class="i1"><span>专访《碧海黑帆》总监：跳票的这些年制作组干什么去了？</span></div>
                  <div class="i2"></div>
                  <div class="i3">2022/10/15</div>
                </div>
                <div class="desbox"><p>“海盗要做的事情就是往来于安全区域之间，打造并且客制化你的舰船，交易资源，然后再扬帆起航去海上劫走珍贵的货物带回老巢。”</p></div>
              </a></div>
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="PS Studios 马来西亚工作室正在索尼大作中扮演越来越重要的角色">
                <div class="imgbox">
                  <img alt="PS Studios 马来西亚工作室正在索尼大作中扮演越来越重要的角色" class="lazy" data-original="images/PlayStation.png">
                </div>
                <div class="conbox">
                  <div class="i1"><span>PS Studios 马来西亚工作室正在索尼大作中扮演越来越重要的角色</span></div>
                  <div class="i2"></div>
                  <div class="i3">2022/11/05</div>
                </div>
                <div class="desbox"><p></p></div>
              </a></div>
            <div class="itemout">
              <a class="item hashover" href="" target="_blank" title="专访《卧龙：苍天陨落》制作人：不是三国版的《仁王》">
                <div class="imgbox">
                  <img alt="专访《卧龙：苍天陨落》制作人：不是三国版的《仁王》" class="lazy" data-original="images/Wo Long Fallen Dynasty_3.png">
                </div>
                <div class="conbox">
                  <div class="i1"><span>专访《卧龙：苍天陨落》制作人：不是三国版的《仁王》</span></div>
                  <div class="i2"></div>
                  <div class="i3">2022/09/23</div>
                </div>
                <div class="desbox"><p>“我们在设计战斗时主要参考了中国武术中华丽的连续攻击这一特色。 ”</p></div>
              </a></div>
          </div>
        </div>
      </div>

      <div class="smblcok block4" id="ycsp">
        <div class="tit">
          <div class="l">游戏视频</div>
        </div>
        <div class="blockbox">
          <div class="itemout">
            <a class="item hashover" href="" target="_blank" title="稀碎的哥谭骑士，朋友们，还是看看远方的蝙蝠侠吧">
              <div class="imgbox">
                <img alt="稀碎的哥谭骑士，朋友们，还是看看远方的蝙蝠侠吧" class="lazy" data-original="images/batman.jpg">
              </div>
              <div class="conbox">
                <div class="i1"><span>稀碎的哥谭骑士，朋友们，还是看看远方的蝙蝠侠吧</span></div>
              </div>
            </a>
          </div>
          <div class="itemout">
            <a class="item hashover" href="" target="_blank" title="《索尼克：未知边境》试玩报告：大刀阔斧的改革">
              <div class="imgbox">
                <img alt="《索尼克：未知边境》试玩报告：大刀阔斧的改革" class="lazy" data-original="images/Sonic Frontiers_1.png">
              </div>
              <div class="conbox">
                <div class="i1"><span>《索尼克：未知边境》试玩报告：大刀阔斧的改革</span></div>
              </div>
            </a>
          </div>
          <div class="itemout">
            <a class="item hashover" href="" target="_blank" title="奥日与鬼火意志：一段放不下的冒险，一次完美的加法">
              <div class="imgbox">
                <img alt="奥日与鬼火意志：一段放不下的冒险，一次完美的加法" class="lazy" data-original="images/Ori and the Will of the Wisps_2.png">
              </div>
              <div class="conbox">
                <div class="i1"><span>奥日与鬼火意志：一段放不下的冒险，一次完美的加法</span></div>
              </div>
            </a>
          </div>
          <div class="itemout">
            <a class="item hashover" href="" target="_blank" title="《最终幻想7 核心危机：Reunion》发售日宣传片公开">
              <div class="imgbox">
                <img alt="《最终幻想7 核心危机：Reunion》发售日宣传片公开" class="lazy" data-original="images/chongju.png">
              </div>
              <div class="conbox">
                <div class="i1"><span>《最终幻想7 核心危机：Reunion》发售日宣传片公开</span></div>
              </div>
            </a>
          </div>

        </div>
      </div>
      <div class="smblcok block5" id="rmjx">
        <div class="smleft">
          <div class="tit">
            <div class="l">热门精选</div>
          </div>
          <div class="blocks">
            <a class="item sm hashover page1" href="" target="_blank">
              <div class="imgbox">
                <img alt="《战神5》关卡设计师：游戏的每个细节都倾注了一切!" class="lazy" data-original="images/GodofWarRagnarok_4.png">
              </div>
              <div class="iteminfo">
                <div class="infotit">《战神5》关卡设计师：游戏的每个细节都倾注了一切!</div>
                <div class="infodes">
                  《战神5：诸神黄昏》的媒体评测已经出炉，不少媒体指出本作的支线内容设计得非常优秀，部分支线的战斗、剧情甚至比主线内容还要好。最近《战神5》首席关卡设计师对此表示感到非常自豪。
                </div>
                <div class="author">
                  <span>花果山编辑部</span>
                  <em>2022-11-07 13:46:35</em>
                </div>
              </div>
            </a><a class="item sm hashover page1" href="" target="_blank">
            <div class="imgbox">
              <img alt="商业互吹可还行？顽皮狗总裁发文为《战神5》点赞！" class="lazy" data-original="images/GodofWarRagnarok_5.png">
            </div>
            <div class="iteminfo">
              <div class="infotit">商业互吹可还行？顽皮狗总裁发文为《战神5》点赞！</div>
              <div class="infodes">
                顽皮狗总裁发文赞叹《战神5》，同时感谢了《战神》的制作人Cory Barlog。<br>“周末时间，欣赏我们的朋友们的惊人的工作……”
              </div>
              <div class="author">
                <span>花果山编辑部</span>
                <em>2022-11-07 15:42:59</em>
              </div>
            </div>
          </a><a class="item sm hashover page1" href="" target="_blank">
            <div class="imgbox">
              <img alt="《Forspoken》魔法特效力求创新 视觉效果华丽无比！" class="lazy" data-original="images/Forspoken_1.png">
            </div>
            <div class="iteminfo">
              <div class="infotit">《Forspoken》魔法特效力求创新 视觉效果华丽无比！</div>
              <div class="infodes">
                　很多游戏里都包含“魔法”这一设定，它们有很多不同的呈现形式，不过大部分“魔法”的视觉效果都比较简单，可能只是搞点发光效果，或者弄点火球、闪电之类的东西。而在即将推出的3A大作《Forspoken》中，“魔法”将拥有更加华丽壮观的视觉效果，让玩家真正感受到“魔法”的魅力。
              </div>
              <div class="author">
                <span>花果山编辑部</span>
                <em>2022-11-07 11:30:06</em>
              </div>
            </div>
          </a><a class="item sm hashover page1" href="" target="_blank">
            <div class="imgbox">
              <img alt="《瘟疫传说：安魂曲》摄影级截图欣赏 每一张都是壁纸" class="lazy" data-original="images/A Plague Tale Requiem_3.png">
            </div>
            <div class="iteminfo">
              <div class="infotit">《瘟疫传说：安魂曲》摄影级截图欣赏 每一张都是壁纸</div>
              <div class="infodes">
                《瘟疫传说：安魂曲》是一款剧情向冒险游戏，虽然开发商Asobo Studio不是什么大厂，但是本作的画质依然令人惊叹。画面设置拉满后，完全称得上是次世代级别。遗憾的是，该作不登陆PS4和Xbox One等本世代主机，在PS5和Xbox Series等次世代主机上会锁30帧，PC版的配置需求也比较高。
              </div>
              <div class="author">
                <span>花果山编辑部</span>
                <em>2022-11-07 10:41:52</em>
              </div>
            </div>
          </a><a class="item sm hashover page1" href="" target="_blank">
            <div class="imgbox">
              <img alt="《光环：无限》PC版将于2023年追加光线追踪功能！" class="lazy" data-original="images/Halo Infinite_2.png">
            </div>
            <div class="iteminfo">
              <div class="infotit">
                《光环：无限》PC版将于2023年追加光线追踪功能！
              </div>
              <div class="infodes">
                在最近的AMD发布会上，除了新一代A卡之外，AMD官方还透露了一则消息：《光环无限》PC版将在2023年3月开始支持光线追踪技术。
              </div>
              <div class="author">
                <span></span>
                <em></em>
              </div>
            </div>
          </a>
          </div>
        </div>
      </div>


    </div>
  </div>
  <div style="display:none;">
    <script src="./js/ali_hits_pc_global-version-1-for-news.js" type="text/javascript"></script>
  </div>
</div>
<div class="news_foot">
  <div class="news_foot_c">
    CopyRight © 2001-2022
    GameHuaGuoHell.Net All Right Reserved 游戏花果山 版权所有
  </div>
</div>
<script src="./js/news_index_2022.js"></script>
</body>
</html>