<?php

Class Send_public_survey_email_notificationEmailTemplate extends EmailTemplate{


	public $datasources = Array(
 			'etm_public_survey',
 			'etm_referrer',
 			'preferences',);
	public $layouts = Array(
 			'html' => 'template.html.xsl',);
	public $subject = 'Public survey notification for {/data/etm-public-survey/entry/name} from {/data/etm-public-survey/entry/company}';
	public $reply_to_name = 'Colliers Space Calculator';
	public $reply_to_email_address = 'noreply@colliers.com.au';
	public $recipients = '{/data/preferences/entry/public-survey-notification-email-address},{/data/etm-referrer/entry/email}';

	public $editable = true;

	public $about = Array(
		'name' => 'Send public survey email notification',
		'version' => '1.0',
		'author' => array(
			'name' => 'Henry Singleton',
			'website' => 'http://colliers-space-calculator.dev.limelightdigital.com',
			'email' => 'henry@limelightdigital.com'
		),
		'release-date' => '2014-03-21T00:17:11+00:00'
	);
}