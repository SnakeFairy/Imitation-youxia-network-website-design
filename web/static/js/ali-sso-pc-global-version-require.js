/**
 * 游侠网单点登录通用的js
 */

var aliSSOPcGlobalParams = $("#ali_sso_pc_global").get(0) != undefined ? QueryString.getQueryStringArgs() : {};
var callbackfunForOnline = aliSSOPcGlobalParams['callbackfunForOnline'] || 'callbackfunForOnlineDefault', callbackfunForOffline = aliSSOPcGlobalParams['callbackfunForOffline'] || 'callbackfunForOfflineDefault', callbackfunForLogout = aliSSOPcGlobalParams['callbackfunForLogout'] || 'callbackfunForLogoutDefault', renderForLogin = aliSSOPcGlobalParams['renderForLogin'] || 'renderForLoginDefault', callbackAfterLogin = aliSSOPcGlobalParams['callbackAfterLogin'] || 'callbackAfterLoginDefault', ali213SSOOrginId = aliSSOPcGlobalParams['ali213SSOOrginId'] || 'ali213SSO', ali213SSOLogoutBtnClass = aliSSOPcGlobalParams['ali213SSOLogoutBtnClass'] || 'ali213SSO-logout', ali213SSOLoginBtnClass = aliSSOPcGlobalParams['ali213SSOLoginBtnClass'] || 'ali213SSO-login', ali213SSOFormValidFun = aliSSOPcGlobalParams['ali213SSOFormValidFun'] || 'ali213SSOFormValidFunDefault';

if ($("#" + ali213SSOOrginId).get(0) != undefined) {
    var redirectUrl = window.location.href.toString();
    // 新的样式文件
    $("head").prepend("<link rel=\"stylesheet\" href=\"//static.ali213.net/js/common/sso/ali-sso-pc-global-version-1.css\">");
    $("head").append("<link rel=\"stylesheet\" href=\"//static.ali213.net/js/common/auth/ali-rotate-auth-pc-global-version-1.css\">");
    // 新加二维码生成
    $("head").append("<script src=\"//static.ali213.net/js/common/sso/js/qrcode.min.js\"><\/script>");
    var ali213SSOidentity = getCookie("passport_nickname") ? (typeof(JSON) != 'undefined' ? JSON.parse(getCookie("passport_nickname")) : eval("(" + getCookie("passport_nickname") + ")")) : "";
    var ali213SSOavatar = getCookie("passport_avatar");
    if (ali213SSOidentity == null || ali213SSOidentity == "") { //没有登录 显示登录按钮，绑定弹出登录框的逻辑
        window[callbackfunForOffline].call(this);
    } else { //已经登录 显示名字
        window[callbackfunForOnline].call(this, ali213SSOidentity);
    }

    window[ali213SSOFormValidFun].call(this);

    $("body").delegate("." + ali213SSOLogoutBtnClass, "click", function () { //退出登录  调passport的jsonp退出登录 并且调用
        $.getJSON('//i.ali213.net/api.html?action=logout&callback=?', function (resultJson) {
            window[callbackfunForLogout].call(this, resultJson); //调用登出的回调函数
        });
    });
    $("body").delegate("." + ali213SSOLoginBtnClass, "click", function () { //调起登录按钮
        window[renderForLogin].call(this);
    });
}

function alissoImgDragcallback(result) {
    var scene = 'login';
    if (!result['status']) {
        setTimeout(function () {
            $.getJSON('//api2.ali213.net/imgrotateauth/generator?callback=?', function (result) {
                $(".bgimg" + scene)
                    .css('transform', 'rotate(0)')
                    .attr("src", "//api2.ali213.net/imgrotateauth/rotateimg?r=" + Math.random());
                $(".draggablebtn" + scene).css({"left": "0px"}).removeClass("draggablebtnFail draggablebtnSuccess draggablebtnMove");
                $(".bgborder" + scene).removeClass("bgborderFail bgborderSuccess bgborderMove").width(0);
            });
        }, 500);
    } else {
        $(".draggablebtn" + scene).draggable("disable");
        $("[name='alissoyzm']").val(result['y']);
        $("#ali213SSOloginForm").submit();

    }
}

/* 默认的五个回调函数 */
function callbackfunForOnlineDefault(identity) { //已经登录了 用于显示登录状态的
    var welcome = "", day = new Date(), hr = day.getHours();
    if (hr == 0) {
        welcome = "午时已到，哈哈！";
    }
    else if (hr >= 1 && hr <= 5) {
        welcome = "还不睡觉？快去睡！";
    }
    else if (hr >= 6 && hr <= 7) {
        welcome = "太阳要晒屁股了！";
    }
    else if (hr == 8) {
        welcome = "今天也要动力满满！";
    }
    else if (hr >= 9 && hr <= 11) {
        welcome = "上午好，生活愉快！";
    }
    else if (hr == 12) {
        welcome = "吃饭的时间咯！";
    }
    else if (hr >= 13 && hr <= 16) {
        welcome = "下午好，继续加油！";
    }
    else if (hr >= 17 && hr <= 18) {
        welcome = "下班咯，回家回家！";
    }
    else if (hr == 19) {
        welcome = "饿饿，该吃饭啦！";
    }
    else if (hr >= 20 && hr <= 23) {
        welcome = "游戏模式，突突突。";
    }
    else if (hr == 24) {
        welcome = "该睡觉辣，晚安！";
    }
    $("#" + ali213SSOOrginId).html('<a class="ali213SSO-online-avatar-username-link" href="//i.ali213.net/home.html" target="_blank"><img class="ali213SSO-online-avatar" src="' + ali213SSOavatar + '" /><span class="ali213SSO-username">' + identity + '</span></a><div class="ali213SSO-info-holder"><div class="ali213SSO-info-block1"><a id="alisso-baidu-comment1" href="//i.ali213.net/comment.html?tab=1" target="_blank"><em></em>评论</a></div><div class="ali213SSO-info-block2"><a class="ali213SSO-info-block2-li1" href="//i.ali213.net/profile.html" target="_blank"><em></em>修改资料</a><a class="ali213SSO-info-block2-li3" href="//wan.ali213.net/" target="_blank"><em></em>游戏中心</a></div><div class="ali213SSO-info-block3"><span class="ali213SSO-logout">退出</span></div></div>');

    $("body").undelegate("#" + ali213SSOOrginId, "mouseover,mouseout");

    $("body").delegate("#" + ali213SSOOrginId, "mouseover", function () {
        if ($(".ali213SSO-info-holder").get(0) != undefined) $(".ali213SSO-info-holder").show();
        if ($(".ali213SSO-msg-tip").get(0) != undefined) $(".ali213SSO-msg-tip").hide();
    });

    $("body").delegate("#" + ali213SSOOrginId, "mouseout", function () {
        if ($(".ali213SSO-info-holder").get(0) != undefined) $(".ali213SSO-info-holder").hide();
        if ($(".ali213SSO-msg-tip").get(0) != undefined) $(".ali213SSO-msg-tip").show();
    });

    $.getJSON('//comment.ali213.net/ali-comment-renotice.php?callback=?', function (result) {
        if (parseInt(result['msg'])) {
            if ($(".ali213SSO-msg-reminder1").get(0) == undefined) $(".ali213SSO-online-avatar-username-link").append("<em class=\"ali213SSO-msg-reminder1\"></em>");
            $(".ali213SSO-info-block1").append("<span>" + (parseInt(result['msg']) > 99 ? "99+" : result['msg']) + "</span>");
        }
    });

    $.getJSON('//comment.ali213.net/ali-xs-renotice.php?callback=?', function (result) {
        if (parseInt(result['msg'])) {
            if ($(".ali213SSO-msg-reminder1").get(0) == undefined) $(".ali213SSO-online-avatar-username-link").append("<em class=\"ali213SSO-msg-reminder1\"></em>");
            $(".ali213SSO-info-block4").append("<span>" + (parseInt(result['msg']) > 99 ? "99+" : result['msg']) + "</span>");
        }
    });

    $.getJSON('//comment.ali213.net/ali-comment-renotice-new.php?callback=?', function (result) {
        if (parseInt(result['msg'])) {
            $("#" + ali213SSOOrginId).append('<div class="ali213SSO-msg-tip">' + (parseInt(result['msg']) > 99 ? "99+" : result['msg']) + '条新的评论，<a id="alisso-baidu-tipview1" href="//i.ali213.net/comment.html?tab=1" target="_blank">查看</a><em class="ali213SSO-msgtip-close"></em></div>');
        }
    });


    $("body").undelegate(".ali213SSO-msg-tip", "mouseover,mouseout");
    $("body").delegate(".ali213SSO-msg-tip", "mouseover", function (event) {
        event.stopPropagation();
    });
    $("body").delegate(".ali213SSO-msg-tip", "mouseout", function (event) {
        event.stopPropagation();
    });


    $("body").undelegate(".ali213SSO-msgtip-close", "click");
    $("body").delegate(".ali213SSO-msgtip-close", "click", function () {
        $.getJSON('//comment.ali213.net/ali-comment-renoticesc-new.php?callback=?', function () {
            $(".ali213SSO-msg-tip").remove();
        });
    });
}

function callbackfunForOfflineDefault() { //没有登录时候的状态 初始没登录的状态，或者登出之后的渲染
    $("#" + ali213SSOOrginId).html('<span class="ali213SSO-offline-avatar"></span><span id="alisso-baidu-signin1" class="' + ali213SSOLoginBtnClass + '">登录</span><span class="ali213SSO-offline-spliter">|</span><a id="alisso-baidu-signup1" class="ali213SSO-offline-reg" href="//i.ali213.net/signup.html?redirect=' + encodeURI(redirectUrl) + '" target="_blank">注册</a>');
}

function callbackfunForLogoutDefault(resultJson) { // 退出登录 完成登出逻辑
    if (resultJson['status'] == 1) {
        window[callbackfunForOffline].call(this);
        $("#" + ali213SSOOrginId).append(resultJson['data']['script']);
    } else {
        alert('登出失败，请重试');
    }
}

function renderForLoginDefault() { // 点击登录按钮 弹出登录窗 renderForLogin
    if (navigator.userAgent.indexOf("ali213app") != -1) {
        applogin();
        return true;
    }
    if ($(".ali213SSOPopSheild").get(0) == undefined) { //没有这个dom  340 x 295
        $("body").append('<div class="ali213SSOPopSheild"><div class="ali213SSOPopSheildCon"><div class="ali213SSOCloseBtn"></div><div class="ali213SSOPopHolderNormal"><div class="ali213SSOLoginMethodTrigger"><div class="ali213SSODynamicTips"></div><div class="ali213SSOLoginRealTrigger ali213SSOLoginRealTriggerCode"></div></div><div class="ali213SSOloginToggle"><span class="checked"><i></i>短信登录/注册</span><span><i></i>账号密码登录</span></div><div class="ali213SSOloginToggleCon"><div class="ali213SSOloginToggleConLi"><form id="ali213SSODynamicCodeForm"action="#"method="post"><div class="ali213SSO_input"><span class="ali213SSO_u_tel"></span><input type="text"name="alissomobile"class="ali213SSO_input_common"value="您的手机号"onblur="if(this.value.replace(/s/g,\'\')==\'\') this.value=\'您的手机号\';"onfocus="if(this.value.replace(/s/g,\'\')==\'您的手机号\') this.value=\'\';"></div><div class="ali213SSO_check"><div class="ali213SSO_check_code"><span></span><input type="text"name="alissodynamiccode"class="ali213SSO_input_check"value="短信验证码"onblur="if(this.value.replace(/s/g,\'\')==\'\') this.value=\'短信验证码\';"onfocus="if(this.value.replace(/s/g,\'\')==\'短信验证码\') this.value=\'\';"></div><div class="ali213SSO_check_btn">获取验证码</div></div><div class="ali213SSO_btn"><input id="alisso-baidu-signin3"type="submit"class="ali213SSO-submit"value="登 录"></div></form><div class="ali213SSODynamicYzmLayer"><div class="ali213SSODynamicYzmCloseBtn"></div><div class="ali213SSOYzmLable">请输入图片验证码</div><div class="ali213SSO_dynamic_pic_check"><div class="ali213SSO_check_code"><span></span><input type="text"name="alissodynamicPiccode"class="ali213SSO_input_check"value="验证码"onblur="if(this.value.replace(/s/g,\'\')==\'\') this.value=\'验证码\';"onfocus="if(this.value.replace(/s/g,\'\')==\'验证码\') this.value=\'\';"></div><div class="ali213SSO_dynamic_check_img"><img class="ali213SSO-dynamic-code-img"src="//i.ali213.net/yzm/dynamicYzm.jpg?r=' + Math.random() + '"width="150"height="34"></div></div><div class="ali213SSODynamicYzmSubmitBtn">确定</div></div></div><div class="ali213SSOloginToggleConLi"><form id="ali213SSOloginForm"action="#"method="post"><div class="ali213SSO_input"><span></span><input type="text"name="alissousername"class="ali213SSO_input_common"id="ali213SSO_input_username"value="用户名/手机/邮箱"onblur="if(this.value.replace(/\s/g,\'\')==\'\') this.value=\'用户名/手机/邮箱\';"onfocus="if(this.value.replace(/\s/g,\'\')==\'用户名/手机/邮箱\') this.value=\'\';"/></div><div class="ali213SSO_input"><span class="ali213SSO_u_pwd"></span><input type="password"name="alissopasswd"class="ali213SSO_input_common ali213SSO_input_common_passwd"id="ali213SSO_input_pwd"placeholder="密码"value=""/></div><input type="hidden"name="alissoyzm"class="ali213SSO_input_check"id="ali213SSO_input_yzm"/><div class="ali213SSO_btn"><input id="alisso-baidu-signin2"type="submit"class="ali213SSO-submit"value="登 录"/></div></form><div class="ali213SSO-register-forgot"><a class="ali213SSO-forgot-link"href="//i.ali213.net/forgot.html?redirect=' + encodeURI(redirectUrl) + '"target="_blank">忘记密码</a></div></div></div></div><div class="ali213SSOPopHolderDynamic"><div class="ali213SSOLoginMethodTrigger"><div class="ali213SSODynamicTips">手机动态登陆（免注册）</div><div class="ali213SSOLoginRealTrigger"></div></div><div class="ali213SSOloginTitle"><div class="resetCode resetBtn">扫码登录<i></i></div><div class="codeTitle"><span>打开游侠网APP安全扫码登陆</span></div></div><div class="ali213SSOloginCode"id="qrcode"></div></div><div class="ali213SSO-third-way"><div class="ali213SSO-third-way-left">其他方式登录：</div><div class="ali213SSO-third-way-icons"><div class="ali213SSO-third-way-icons-wx"></div><div class="ali213SSO-third-way-icons-qq"></div><div class="ali213SSO-third-way-icons-wb"></div></div></div></div></div>');    } else {
        $(".ali213SSO-yzm-img").attr("src", "//i.ali213.net/yzm/signin.jpg?r=" + Math.random());
        $(".ali213SSOPopSheild").show();
    }

    $("body").undelegate(".ali213SSO-third-way-icons-wx,.ali213SSO-third-way-icons-qq,.ali213SSO-third-way-icons-wb", "click");

    $("body").delegate(".ali213SSO-third-way-icons-wx", "click", function () { //关闭窗口
        $.getScript('//i.ali213.net/signin.html?redirect=' + encodeURIComponent(redirectUrl), function () {
            location.href = '//i.ali213.net/api.html?action=wxrequest&method=wxcallback';
        });
    });

    $("body").delegate(".ali213SSO-third-way-icons-qq", "click", function () { //关闭窗口
        $.getScript('//i.ali213.net/signin.html?redirect=' + encodeURIComponent(redirectUrl), function () {
            location.href = '//i.ali213.net/api.html?action=newqqrequest&method=newqqcallback';
        });
    });

    $("body").delegate(".ali213SSO-third-way-icons-wb", "click", function () { //关闭窗口
        $.getScript('//i.ali213.net/signin.html?redirect=' + encodeURIComponent(redirectUrl), function () {
            location.href = '//i.ali213.net/api.html?action=wbrequest&method=wbcallback';
        });
    });
}

function callbackAfterLoginDefault(resultJson) { // 登录后的回调 成功或者失败
    if ($("body > .imgDragAuthShield").get(0) != undefined) $("body > .imgDragAuthShield").remove();
    if (resultJson['status'] == 1) {
        ali213SSOavatar = getCookie("passport_avatar");
        $(".ali213SSOPopSheild").hide();
        $("[name='alissousername']").val('');
        $("[name='alissopasswd']").val('');
        $("[name='alissoyzm']").val(''); //alert('登录成功');
        window[callbackfunForOnline].call(this, resultJson['data']['userinfo']['nickname']);
        $("#" + ali213SSOOrginId).append(resultJson['data']['script']);
    } else {
        alert(resultJson['msg']);
        $("[name='alissoyzm']").val('');
        $(".ali213SSO-yzm-img").attr("src", "//i.ali213.net/yzm/signin.jpg?r=" + Math.random());
    }
}

function ali213SSOFormValidFunDefault() {

    $("body").delegate(".ali213SSOPopSheild,.ali213SSOCloseBtn", "click", function () { //关闭窗口
        $(".ali213SSOPopSheild").hide();
        $('.codeTitle span').removeClass('timeover');
        initTimer();
    });

    $("body").delegate(".ali213SSOPopHolderNormal,.ali213SSOPopHolderDynamic", "click", function (event) { //阻止冒泡
        event.stopPropagation();
    });

    $("body").delegate(".ali213SSOLoginRealTrigger,.ali213SSO-backto-normalway", "click", function (event) { //动态码快捷登陆和普通登陆切换
        $(this).closest(".ali213SSOPopHolderNormal,.ali213SSOPopHolderDynamic").hide().siblings().show();
        timerStartClose();
        if($(this).hasClass('ali213SSOLoginRealTriggerCode')){
            if (time == 0) {
                getCode();
                return false;
            }
            timerStartClose();
        }
    });

    $("body").delegate(".ali213SSO_check_btn", "click", function (event) { //弹出动态码登陆图片验证码层
        $("[name='alissodynamicPiccode']").val('验证码');
        $(".ali213SSO-dynamic-code-img").attr("src", "//i.ali213.net/yzm/dynamicYzm.jpg?r=" + Math.random());
        if ($("[name='alissomobile']").next().get(0) != undefined) $("[name='alissomobile']").next().remove();
        if ($(".ali213SSO_dynamic_check_img").next().get(0) != undefined) $(".ali213SSO_dynamic_check_img").next().remove();
        var dynamicMobile = $("[name='alissomobile']").val().replace(/\s/g, '');
        var mbreg = new RegExp(/^1(3|4|5|7|8)\d{9,9}$/);
        if (!mbreg.test(dynamicMobile)) {
            $("[name='alissomobile']").after('<em>手机号码不正确</em>');
            return false;
        } else {
            $(".ali213SSODynamicYzmLayer").show();
        }
    });

    $("body").delegate(".ali213SSODynamicYzmSubmitBtn", "click", function (event) { //输入动态码的图片验证码后点发送
        if ($(".ali213SSO_dynamic_check_img").next().get(0) != undefined) $(".ali213SSO_dynamic_check_img").next().remove();
        var dynamicMobile = $("[name='alissomobile']").val().replace(/\s/g, '');
        var dynamicPicCode = $("[name='alissodynamicPiccode']").val().replace(/\s/g, '');
        var mbreg = new RegExp(/^1(3|4|5|7|8)\d{9,9}$/);
        if (!mbreg.test(dynamicMobile)) {
            $(".ali213SSO_dynamic_check_img").after('<em>手机号码不正确</em>');
            return false;
        }
        if (dynamicPicCode.length != 4) {
            $(".ali213SSO_dynamic_check_img").after('<em>请输入正确的图片验证码</em>');
            return false;
        }
        $.getJSON('//i.ali213.net/ajax.html?action=dynamicdispatch&mobile=' + dynamicMobile + '&code=' + dynamicPicCode + '&callback=?', function (resultJson) {
            if (resultJson['status']) {
                sixtySecondCountDown("ali213SSO_check_btn", 60);
                $(".ali213SSODynamicYzmLayer").hide();
                $(".ali213SSO-dynamic-code-img").attr("src", "//i.ali213.net/yzm/dynamicYzm.jpg?r=" + Math.random());
            } else {
                $(".ali213SSO_dynamic_check_img").after('<em>' + resultJson['msg'] + '</em>');
                $(".ali213SSO-dynamic-code-img").attr("src", "//i.ali213.net/yzm/dynamicYzm.jpg?r=" + Math.random());
            }
        });
    });

    $("body").delegate("#ali213SSODynamicCodeForm", "submit", function (event) { //填入动态验证码之后点确认发送按钮
        if ($("[name='alissomobile']").next().get(0) != undefined) $("[name='alissomobile']").next().remove();
        if ($("[name='alissodynamiccode']").next().get(0) != undefined) $("[name='alissodynamiccode']").next().remove();
        var dynamicMobile = $("[name='alissomobile']").val().replace(/\s/g, '');
        var mbreg = new RegExp(/^1(3|4|5|7|8)\d{9,9}$/);
        if (!mbreg.test(dynamicMobile)) {
            $("[name='alissomobile']").after('<em>手机号码不正确</em>');
            return false;
        }
        var dynamicMsgCode = $("[name='alissodynamiccode']").val().replace(/\s/g, '');
        if (dynamicMsgCode.length != 6) {
            $("[name='alissodynamiccode']").after('<em>请输入您收到的短信动态码</em>');
            return false;
        }
        $.getJSON('//i.ali213.net/ajax.html?action=dynamicvalid&mobile=' + dynamicMobile + '&code=' + dynamicMsgCode + '&callback=?', function (resultJson) {
            if (resultJson['status']) {
                $("[name='alissomobile']").html('');
                if (window[callbackAfterLogin] == undefined) callbackAfterLogin = 'callbackAfterLoginDefault';
                window[callbackAfterLogin].call(this, resultJson);
            } else {
                $("[name='alissodynamiccode']").after('<em>' + resultJson['msg'] + '</em>');
            }
        });
        return false;
    });

    $("body").delegate(".ali213SSODynamicYzmCloseBtn", "click", function (event) { //弹出动态码登陆图片验证码层
        $(".ali213SSODynamicYzmLayer").hide();
    });

    $("body").delegate(".ali213SSO-dynamic-code-img", "click", function () { //验证码点击
        $(this).attr("src", "//i.ali213.net/yzm/dynamicYzm.jpg?r=" + Math.random());
    });

    $("body").delegate(".ali213SSO-yzm-img", "click", function () { //验证码点击
        $(this).attr("src", "//i.ali213.net/yzm/signin.jpg?r=" + Math.random());
    });

    $("body").delegate("#ali213SSO_input_pwd", "focus", function () { //密码
        if ($(this).hasClass("ali213SSO_input_common_passwd")) $(this).removeClass("ali213SSO_input_common_passwd");
    });

    $("body").delegate("#ali213SSO_input_pwd", "blur", function () { //密码
        if ($(this).val().replace(/\s/g, '') == '') {
            if (!$(this).hasClass("ali213SSO_input_common_passwd")) $(this).val("").addClass("ali213SSO_input_common_passwd");
        } else {
            if ($(this).hasClass("ali213SSO_input_common_passwd")) $(this).removeClass("ali213SSO_input_common_passwd");
        }
    });

    $("body").delegate("#ali213SSOloginForm", "submit", function () {
        var alissousername = $("[name='alissousername']").val().replace(/\s/g, ''), alissopasswd = $("[name='alissopasswd']").val(), alissoyzm = encodeURIComponent($("[name='alissoyzm']").val().replace(/\s/g, ''));
        if (alissousername == '' || alissousername.length > 50 || alissousername == '用户名/手机/邮箱') {
            if ($("[name='alissousername']").next().get(0) != undefined) $("[name='alissousername']").next().remove();
            $("[name='alissousername']").after("<em>用户名为必填，长度1-50</em>");
            return false;
        }
        if (alissopasswd.length > 50 || alissopasswd.length < 4) {
            if ($("[name='alissopasswd']").next().get(0) != undefined) $("[name='alissopasswd']").next().remove();
            $("[name='alissopasswd']").after("<em>密码为必填，长度4-50</em>");
            return false;
        }
        if (alissoyzm.length <= 4) {
            aliImgAuthPcGlobal('p814pTlfxWuSpsv5hl', 'login', 'body', 'alissoImgDragcallback', true);
        } else {
            $.getJSON('//i.ali213.net/api.html?action=ssologin&alissousername=' + alissousername + '&alissopasswd=' + alissopasswd + '&alissoyzm=' + alissoyzm + '&callback=?', function (resultJson) { //提交'alissousername','alissopasswd','alissoyzm'
                if (window[callbackAfterLogin] == undefined) callbackAfterLogin = 'callbackAfterLoginDefault';
                window[callbackAfterLogin].call(this, resultJson);
            });
        }
        return false;
    });
}

function setCookie(c_name, value, expiredays) {
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + expiredays);
    document.cookie = c_name + "=" + escape(value) + ((expiredays == null) ? "" : ";expires=" + exdate.toGMTString());
}

function getCookie(c_name) {
    if (document.cookie.length > 0) {
        c_start = document.cookie.indexOf(c_name + "=");
        if (c_start != -1) {
            c_start = c_start + c_name.length + 1;
            c_end = document.cookie.indexOf(";", c_start);
            if (c_end == -1) c_end = document.cookie.length;
            return unescape(document.cookie.substring(c_start, c_end));
        }
    }
    return "";
}

function sixtySecondCountDown(className, seconds) { //60秒倒计时
    if ($("." + className + "_countdown").get(0) == undefined) $("." + className).addClass(className + "_countdown").removeClass(className);
    seconds = seconds - 1;
    if (seconds <= 0) {
        $("." + className + "_countdown").addClass(className).removeClass(className + "_countdown").html("发送验证码");
    } else {
        $("." + className + "_countdown").html(seconds + "秒后重发");
        setTimeout("sixtySecondCountDown('" + className + "'," + seconds + ")", 1000);
    }
}

//把外置的js移过来了
function getRotateAngle(element) {
    var el = $(element).get(0);
    var st = window.getComputedStyle(el, null);
    var tr = st.getPropertyValue("-webkit-transform") ||
        st.getPropertyValue("-moz-transform") ||
        st.getPropertyValue("-ms-transform") ||
        st.getPropertyValue("-o-transform") ||
        st.getPropertyValue("transform") ||
        "FAIL";
    var values = tr.split('(')[1].split(')')[0].split(',');
    var a = values[0];
    var b = values[1];
    var rotateAngle=Math.round(Math.atan2(b, a) * (180 / Math.PI));
    if(rotateAngle<0){
        rotateAngle=rotateAngle+360
    }

    return rotateAngle;
}
function aliImgAuthPcGlobal(privateKey, scene, holderSelector, callbackFun, closeBtn) {
    $.getJSON('//api2.ali213.net/imgrotateauth/generator?callback=?', function (result) {
        if ($(holderSelector + " > .imgDragAuthShield").get(0) != undefined) $(holderSelector + " > .imgDragAuthShield").remove();
        var closeBtnStr = closeBtn ? '<div class="imgDragAuthCloseBtn"></div>' : '';
        $(holderSelector).append('<div class="imgDragAuthShield"><div class="imgDragAuthHolder">' + closeBtnStr + '<div class="imgDragAuthInstructionTips">拖动底部滑块，使图片角度为正</div><div class="reflectStage"><div class="imgDragAuthRefreshBtn"></div><img ondragstart="return false;" class="bgimg2 bgimg' + scene + '" src="//api2.ali213.net/imgrotateauth/rotateimg?' + Math.random() + '" /></div><div class="dragBarHolder dragBarHolder' + scene + '"><div class="bgborder1"></div><div class="bgborder2 bgborder' + scene + '"></div><div class="draggablebtn draggablebtn' + scene + ' draggable ui-widget-content"></div></div></div></div>');
        var dragDistance = $('.bgborder1').width() - $(".draggablebtn" + scene).width();
        $(".draggablebtn" + scene).draggable({
            containment: ".dragBarHolder" + scene,
            axis: "x",
            start: function (event, ui) {
                $(".draggablebtn" + scene).removeClass("draggablebtnFail draggablebtnSuccess").addClass("draggablebtnMove");
                $(".bgborder" + scene).removeClass("bgborderFail bgborderSuccess").addClass("bgborderMove");
            },
            drag: function (event, ui) {
                $(".bgborder" + scene).css({"width": $(".draggablebtn" + scene).css("left")});
                var rotateAngle = parseInt(parseInt($(".draggablebtn" + scene).css("left")) / dragDistance * 360);
                $(".bgimg" + scene).css('transform', 'rotate(' + rotateAngle + 'deg)');

            },
            stop: function () {
                $.getJSON('//api2.ali213.net/imgrotateauth/authvalid?angle=' + getRotateAngle(".bgimg" + scene) + '&privateKey=' + privateKey + '&type=' + scene + '&callback=?', function (result) {
                    if (result['status']) {
                        $(".draggablebtn" + scene).removeClass("draggablebtnMove draggablebtnFail").addClass("draggablebtnSuccess");
                        $(".bgborder" + scene).removeClass("bgborderMove bgborderFail").addClass("bgborderSuccess");
                    } else {
                        $(".draggablebtn" + scene).removeClass("draggablebtnMove draggablebtnSuccess").addClass("draggablebtnFail");
                        $(".bgborder" + scene).removeClass("bgborderMove bgborderSuccess").addClass("bgborderFail");

                    }
                    window[callbackFun].call(this, result);
                });
            }
        });
    });
    if (closeBtn) {
        $(holderSelector).undelegate(".imgDragAuthCloseBtn", "click");
        $(holderSelector).delegate(".imgDragAuthCloseBtn", "click", function () {
            $(holderSelector + " > .imgDragAuthShield").remove();
        });
    }
    $(holderSelector).undelegate(".imgDragAuthRefreshBtn", "click");
    $(holderSelector).delegate(".imgDragAuthRefreshBtn", "click", function () {
        $.getJSON('//api2.ali213.net/imgrotateauth/generator?callback=?', function (result) {
            $(".bgimg" + scene)
                .css('transform', 'rotate(0)')
                .attr("src", "//api2.ali213.net/imgrotateauth/rotateimg?r=" + Math.random());
            $(".draggablebtn" + scene).css({"left": "0px"});
            $(".draggablebtn" + scene).draggable("enable");
            $(".bgborder" + scene).removeClass("bgborderFail bgborderSuccess bgborderMove").width(0);
            $(".draggablebtn" + scene).removeClass("draggablebtnFail draggablebtnSuccess draggablebtnMove");
        });
    });
}

function applogin() {
    var e = navigator.userAgent,
        n = -1 < e.indexOf("Android") || -1 < e.indexOf("Adr"),
        o = !!e.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/);
    n ? window.jsi.login() : o && window.webkit.messageHandlers.login.postMessage()
}


// 二维码切换
var codeUrl = '';
var comunicate = '';
var timer;
var time = 0;
var timeover = false;
// 初始化状态
function initTimer() {
    clearTimeout(timer);
    timer = null;
    time = 0;
    $('.codeTitle span').removeClass('checked').text('打开游侠网APP安全扫码登陆');
}
// 扫码状态
function codeLoginWait() {
    time = 1;
    $.getJSON('//i.ali213.net/ajax.html?action=qrcode-login-valid&comunicate=' + comunicate + '&callback=?', function (result) {
        switch (Number(result.status)) {
            case -1:
                // console.log('二维码失效，点击更新');
                clearTimeout(timer);
                timer = null;
                $('.codeTitle span').removeClass('checked').addClass('timeover').text('二维码已过期，点击二维码更新后扫码');
                timeover = true;
                break;
            case 1:
                // console.log('已扫描，未确定');
                $('.codeTitle span').addClass('checked').text("扫码成功，请在游侠网app确认登陆");
                break;
            case 2:
                // console.log('已经确定,登陆成功');
                result['status'] = 1;
                if (window[callbackAfterLogin] == undefined) callbackAfterLogin = 'callbackAfterLoginDefault';
                window[callbackAfterLogin].call(this, result);
                $(".ali213SSO-online-avatar").attr('src', result['data']['userinfo']['avatar']);
                initTimer();
                break;
            default:
                // console.log('等待扫码');
                break;
        }
    })
    timer = setTimeout(function () {
        codeLoginWait();
    }, 3000);

}
// 获取二维码
function getCode() {
    $.getJSON('//i.ali213.net/ajax.html?action=qrcode-login-create&callback=?', function (result) {
        if (result.status == 0) {
            codeUrl = decodeURIComponent(result.qrcode);
            comunicate = result.comunicate;
            $('.ali213SSOloginCode').html("");
            var qrcode = new QRCode("qrcode", {
                text: codeUrl
            });
            setTimeout(function () {
                $('#qrcode').attr('title', '');
            }, 100)
            codeLoginWait();
        }
    })
}
$('body').on('click', '#qrcode', function () {
    if (timeover) {
        timeover = false;
        $('.codeTitle span').removeClass('timeover').text('打开游侠网APP安全扫码登陆');
        getCode();
    }
})
function timerStartClose() {
    if ($("#qrcode").parent().css('display') == 'block' && $('.ali213SSOPopHolderNormal').css('display') == 'block') {
        codeLoginWait();
    } else {
        clearTimeout(timer);
        timer = null;
    }
}

$("body").on('click', '.ali213SSOloginToggle span', function () {
    var index = $(this).index();
    if (!$(this).hasClass('checked')) {
        $('.ali213SSOloginToggle span').removeClass('checked').eq(index).addClass('checked');
        $('.ali213SSOloginToggleCon .ali213SSOloginToggleConLi').hide().eq(index).show();
    }
})