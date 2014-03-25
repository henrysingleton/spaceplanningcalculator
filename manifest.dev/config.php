<?php
	$settings = array(


		###### ADMIN ######
		'admin' => array(
			'max_upload_size' => '5242880',
		),
		########


		###### SYMPHONY ######
		'symphony' => array(
			'pagination_maximum_rows' => '99999',
			'lang' => 'en',
			'pages_table_nest_children' => 'no',
			'version' => '2.3.4',
			'cookie_prefix' => 'sym-',
			'session_gc_divisor' => '10',
			'association_maximum_rows' => '5',
		),
		########


		###### LOG ######
		'log' => array(
			'archive' => '1',
			'maxsize' => '102400',
		),
		########


		###### DATABASE ######
		'database' => array(
			'host' => '127.0.0.1',
			'port' => '3306',
			'user' => 'csc',
			'password' => 'g2Rf??oc;(V.',
			'db' => 'csc_symphony',
			'tbl_prefix' => 'sym_',
		),
		########


		###### PUBLIC ######
		'public' => array(
			'display_event_xml_in_source' => 'yes',
		),
		########


		###### GENERAL ######
		'general' => array(
			'sitename' => 'SPC',
			'useragent' => 'Symphony/2.3.4',
		),
		########


		###### FILE ######
		'file' => array(
			'write_mode' => '0644',
		),
		########


		###### DIRECTORY ######
		'directory' => array(
			'write_mode' => '0755',
		),
		########


		###### REGION ######
		'region' => array(
			'time_format' => 'g:i a',
			'date_format' => 'd F Y',
			'datetime_separator' => ' ',
			'timezone' => 'Australia/Melbourne',
		),
		########


		###### IMAGE ######
		'image' => array(
			'cache' => '1',
			'quality' => '90',
			'disable_regular_rules' => 'yes',
			'disable_upscaling' => 'no',
		),
		########


		###### EMAIL ######
		'email' => array(
			'default_gateway' => 'sendmail',
		),
		########


		###### EMAIL_SENDMAIL ######
		'email_sendmail' => array(
			'from_name' => 'SPC',
			'from_address' => 'noreply@example.com',
		),
		########


		###### EMAIL_SMTP ######
		'email_smtp' => array(
			'from_name' => null,
			'from_address' => null,
			'host' => null,
			'port' => '25',
			'secure' => 'tls',
			'auth' => '1',
			'username' => null,
			'password' => null,
		),
		########


		###### HTML5_DOCTYPE ######
		'html5_doctype' => array(
			'exclude_pagetypes' => null,
		),
		########


		###### MAINTENANCE_MODE ######
		'maintenance_mode' => array(
			'enabled' => 'no',
		),
		########


		###### DUMP_DB ######
		'dump_db' => array(
			'last_sync' => '2014-03-19T11:49:05+11:00',
			'path' => '/workspace/database',
			'restore' => 'yes',
		),
		########


		###### CACHELITE ######
		'cachelite' => array(
			'lifetime' => '86400',
			'show-comments' => 'yes',
			'backend-delegates' => 'no',
		),
		########


		###### REDACTOR ######
		'redactor' => array(
			'lang' => 'en',
			'direction_ltr' => 'yes',
			'enable_toolbar' => 'yes',
			'enable_source' => 'yes',
			'enable_focus' => 'no',
			'enable_shortcuts' => 'yes',
			'enable_autoresizing' => 'yes',
			'enable_cleanup' => 'yes',
			'enable_fixed' => 'no',
			'enable_fixedbox' => 'no',
			'enable_paragraphy' => 'yes',
			'enable_convertlinks' => 'yes',
			'enable_convertdivs' => 'yes',
			'enable_fileupload' => 'no',
			'enable_imageupload' => 'yes',
			'enable_overlay' => 'yes',
			'enable_observeimages' => 'yes',
			'enable_airmode' => 'no',
			'enable_wym' => 'no',
			'enable_mobile' => 'yes',
			'buttons' => 'html,formatting,bold,italic,deleted,unorderedlist,orderedlist,outdent,indent,image,video,file,table,link,fontcolor,backcolor,alignleft,aligncenter,alignright,justify,horizontalrule',
			'airbuttons' => 'formatting,bold,italic,deleted,unorderedlist,orderedlist,outdent,indent,fontcolor,backcolor',
			'allowedtags' => 'code,span,div,label,a,br,p,b,i,del,strike,u,img,video,audio,iframe,object,embed,param,blockquote,mark,cite,small,ul,ol,li,hr,dl,dt,dd,sup,sub,big,pre,figure,figcaption,strong,em,table,tr,td,th,tbody,thead,tfoot,h1,h2,h3,h4,h5,h6',
			'filepath' => null,
			'imagepath' => null,
		),
		########


		###### GLOBALRESOURCELOADER ######
		'globalresourceloader' => array(
			'ds-names' => 'preferences,snippets',
		),
		########


		###### SORTING ######
		'sorting' => array(
			'section_positions_sortby' => '581',
			'section_positions_order' => 'asc',
			'section_position-categories_sortby' => '577',
			'section_position-categories_order' => 'asc',
		),
		########
	);
