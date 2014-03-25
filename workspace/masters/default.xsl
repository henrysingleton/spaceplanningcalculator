<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:exsl="http://exslt.org/common"
    xmlns:form="http://nick-dunn.co.uk/xslt/form-controls"
    extension-element-prefixes="exsl form">

    <!-- MASTERS -->
    <xsl:import href="../masters/desktop.xsl" />
    <!--<xsl:import href="../masters/mobile.xsl" />-->
    
    <!-- UTILITIES -->    
    <xsl:import href="../utilities/date-time.xsl"/>
	<xsl:import href="../utilities/snippets.xsl"/>
	<xsl:import href="../utilities/edit-links.xsl"/>
	<xsl:import href="../utilities/email-obfuscator.xsl"/>
	<xsl:import href="../utilities/metadata.xsl"/>
	<xsl:import href="../utilities/form-controls.xsl"/>
	<xsl:import href="../utilities/sform-controls/sform-controls.xsl"/>
	    
    <!-- SECTIONS -->
    <!--<xsl:import href="../utilities/sections/global.xsl"/>-->
    <xsl:import href="../utilities/sections/snippets.xsl"/>
    <xsl:import href="../utilities/sections/positions.xsl"/>
    <xsl:import href="../utilities/sections/industries.xsl"/>
    
    
    <!-- <xsl:variable name="is-mobile" select="/data/useragent-details/@mobile='yes'" /> -->
    <xsl:variable name="is-mobile" select="false()" /> <!-- manually set to false if you dont need a separate mobile master template -->
    
    <xsl:template match="/">
        <xsl:choose>
            <xsl:when test="$is-mobile">
                <xsl:apply-templates select="/" mode="mobile" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="/" mode="desktop" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
  
   
    
</xsl:stylesheet>