<?php

Class Send_contact_form_emailEmailTemplate extends EmailTemplate{


	public $datasources = Array();
	public $layouts = Array(
 			'plain' => 'template.plain.xsl',);
	public $subject = 'Symphony Baseline';
	public $reply_to_name = '{/data/public-surveys/entry/name}';
	public $reply_to_email_address = '{/data/public-surveys/entry/email}';
	public $recipients = 'henry@limelightdigital.com';

	public $editable = true;

	public $about = Array(
		'name' => 'Send Contact Form Email',
		'version' => '1.0',
		'author' => array(
			'name' => 'Henry Singleton',
			'website' => 'http://colliers-space-calculator.dev.limelightdigital.com',
			'email' => 'henry@limelightdigital.com'
		),
		'release-date' => '2014-03-10T23:55:56+00:00'
	);
}