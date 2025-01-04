/**
 * by JobsFan 公共依赖项
 */
require.config({
    shim: {
        /**'hottj': {
			deps: ['jquery'],
			exports: 'hottj'
		},*/
        'jqueryui': {
            deps:['jquery'],
            exports: 'jqueryui'
        },
        'validate': {
            deps:['jquery'],
            exports: 'validate'
        },
        'jqueryui-extra': {
            deps:['jquery','jqueryui'],
            exports: 'jqueryui-extra'
        },
        'alisite': {
            exports: 'alisite'
        },
        'ali-sso-pc-global':{
            deps:['jquery'],
            exports: 'ali-sso-pc-global'
        }
    },
    paths: {
        "domReady": "domReady-2.0.1",
        "jquery": "jquery-1.8.3.min",
        "jqueryui": "jquery-ui.min",
        "jqueryui-extra": "jquery-ui.min-extra",
        "validate": "jquery.validate.min",
        "uipunch": "punch.modified", //punch.modified   jquery.ui.touch-punch.min
        "alisite":"ALi_Site_require",
        "ali-sso-pc-global":"ali-sso-pc-global-version-require"
    }
});

define('yxDeps',['domReady','ali-sso-pc-global','jquery','jqueryui','jqueryui-extra','validate','uipunch','alisite'],function (domReady,aliSsoPcGlobal) {
    return {domReady:domReady,aliSsoPcGlobal:aliSsoPcGlobal};
});