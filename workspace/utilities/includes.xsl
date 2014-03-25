<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!--
		Includes
	-->

	<xsl:template match="/data" mode="includes">
		
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$workspace}/images/favicon.ico" />
		<link rel="SHORTCUT ICON" href="{$workspace}/images/favicon.ico" />
		
		<xsl:comment><![CDATA[[if IE 6]> <script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE7.js"></script> <![endif]]]></xsl:comment>	
		<xsl:comment><![CDATA[[if lt IE 9 ]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]]]></xsl:comment>	
				
		<xsl:choose>
			<xsl:when test="contains($root,'local') and false">
				<link rel="stylesheet/less" type="text/css" media="screen" href="{$workspace}/stylesheets/base.less" />
				<link rel="stylesheet/less" type="text/css" media="print" href="{$workspace}/stylesheets/print.less" />
				<script src="{$workspace}/js/less-1.1.5.min.js"></script>
				<script type="text/javascript">less.env = "development";less.poll = 50;less.watch();</script>
			</xsl:when>
			<xsl:otherwise>
				<link rel="stylesheet" type="text/css" media="screen" href="{$root}/less/stylesheets/base.less" />
				<link rel="stylesheet" type="text/css" media="print" href="{$root}/less/stylesheets/print.less" />
			</xsl:otherwise>
		</xsl:choose>
		
		<script type="text/javascript" src="{$workspace}/js/jquery-1.8.1.min.js"></script>
		<script type="text/javascript" src="{$workspace}/js/site.js"></script>
		
	</xsl:template>	
	
</xsl:stylesheet>