<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

	<xsl:template match="/" mode="desktop">
		
		<html lang="en">
	
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		        <meta name="viewport" content="width=1000" />
				<link rel="stylesheet" href="{$workspace}/fonts/AauxNext/stylesheet.css" />
				<link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.3.0/pure-min.css" />
				
				<xsl:choose>
					<xsl:when test="/data/params/cookie-username">
						<link rel="stylesheet" type="text/css" media="screen" href="{$root}/less/stylesheets/base.less" />
					</xsl:when>
					<xsl:otherwise>
						<link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/stylesheets/base.css" />
					</xsl:otherwise>
				</xsl:choose>
				
				<link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/stylesheets/tablet.css" />
				<link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/stylesheets/phone.css" />
				
				<script type="text/javascript" src="{$workspace}/js/jquery-1.8.1.min.js"></script>
				<script type="text/javascript" src="{$workspace}/js/jquery.validate.min.js"></script>
				<script type="text/javascript" src="{$workspace}/js/public.js"></script>
				<script type="text/javascript" src="{$workspace}/data-sources/data.industries.json.js"></script>
				<script type="text/javascript" src="{$workspace}/js/public.js"></script>
				<script type="text/javascript" src="{$workspace}/js/internal.js"></script>
			</head>
			<body class="{$current-page} desktop pure-skin-spc">
				<div id="shadow-container">
					<div class="container" id="main-content">
						<div class="wrapper main-content-wrapper">
							<xsl:apply-templates select="data" mode="page-content"/>
						</div>
					</div>
				</div>
			</body>
		</html>
	
	</xsl:template>

</xsl:stylesheet>
