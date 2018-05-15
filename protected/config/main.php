<?php
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'BageCMS',
    'language'=>'zh_cn',
	'charset'=>'utf-8',
    'theme'=>'default',
    'timeZone'=>'Asia/Shanghai',
	'import'=>array(
		'application.models.*',
		'application.components.*',
		'application.extensions.*',
	),
    'modules'=>array(
		'admini'=>array(
		     'class'=>'application.modules.admini.AdminiModule',
		),
		'account'=>array(
		     'class'=>'application.modules.account.AccountModule',
		)
	),
	'components'=>array(
        'cache'=>array(
           'class'=>'CFileCache',
        ),
		'db'=>array(
			'connectionString' => 'mysql:host=127.0.0.1;dbname=wr',
			'emulatePrepare' => true,
			'enableParamLogging' => true,
			'enableProfiling'=>true,
			'username' => 'root',
			'password' => 'admin',
			'charset' => 'utf8',
			'tablePrefix' => 'wr_',
		),
		'errorHandler'=>array(
            'errorAction'=>'error/index',
        ), 
        'urlManager'=>array(
        	//'urlFormat'=>'path',
        	//'urlSuffix'=>'.html',
        	'showScriptName'=>true,
        	'rules'=>array(
        		'post/<id:\d+>/*'=>'post/show',
        		'post/<id:\d+>_<title:\w+>/*'=>'post/show',
        		'post/catalog/<catalog:[\w-_]+>/*'=>'post/index',
        		'page/show/<name:\w+>/*'=>'page/show',
        		'special/show/<name:[\w-_]+>/*'=>'special/show',
        		'<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
        	),
        ),
	),
	'params'=> require(dirname(__FILE__).DS.'params.php'),
);