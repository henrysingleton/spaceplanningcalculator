<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output	omit-xml-declaration="yes" />
<xsl:template match="*[section/@handle = 'contact-form-submissions']/entry" mode="html">
<style type="text/css">
	* {
		font-family: sans-serif;
	}
	strong {
		width:100px;
		display:inline-block;
	}
</style>

<strong>Name:</strong><xsl:value-of select="name" /><br/>
<strong>Company:</strong><xsl:value-of select="company" /><br/>
<strong>Phone:</strong><xsl:value-of select="phone" /><br/>
<strong>Email:</strong><xsl:value-of select="email" /><br/>
<strong>Piwik User:</strong><a href="http://analytics.website.gji.com.au/index.php?module=CoreHome&amp;action=index&amp;date={$today}&amp;period=month&amp;idSite=1&amp;segment=visitorId%3D%3D{piwik-user}#module=Live&amp;action=getVisitorLog&amp;date={$today}&amp;period=month&amp;idSite=1&amp;segment=visitorId%3D%3D{piwik-user}">Click here to load Piwik user details</a><br/>
<strong>Message:</strong><br/>
<pre><xsl:value-of select="message" /></pre><br/>

</xsl:template>



<xsl:template match="*[section/@handle = 'contact-form-submissions']/entry" mode="plain">

Name: <xsl:value-of select="name" />
Company: <xsl:value-of select="company" />
Phone: <xsl:value-of select="phone" />
Email: <xsl:value-of select="email" />
Message:
<xsl:value-of select="message" />

User Flow Tracking:
<xsl:apply-templates select="/data/user-flow-tracking/result/row/actionDetails/row" mode="plain" />
View full log: <xsl:value-of select="concat('http://analytics.website.gji.com.au/index.php?module=CoreHome&amp;action=index&amp;date=',$today,'&amp;period=month&amp;idSite=1&amp;segment=visitorId%3D%3D',piwik-user,'#module=Live&amp;action=getVisitorLog&amp;date=',$today,'&amp;period=month&amp;idSite=1&amp;segment=visitorId%3D%3D',piwik-user)" />


</xsl:template>

<xsl:template match="actionDetails/row" mode="plain">
<xsl:value-of select="url" /> <xsl:if test="normalize-space(timeSpent)">(<xsl:value-of select="timeSpent" />s)</xsl:if><xsl:text>
</xsl:text>

</xsl:template>

</xsl:stylesheet>