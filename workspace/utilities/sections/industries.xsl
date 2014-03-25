<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="*[section/@handle = 'industries']/entry" mode="options">
		<option>
			<xsl:attribute name="value">
				<xsl:value-of select="standard-sqmpp" />
			</xsl:attribute>
			<xsl:value-of select="name" />
		</option>
	</xsl:template>
	
	<xsl:template match="*[section/@handle = 'industries']" mode="json">
		{"industries" : {
			<xsl:apply-templates select="entry" mode="json" />
		}}
	</xsl:template>
	<xsl:template match="*[section/@handle = 'industries']/entry" mode="json">
		"<xsl:value-of select="name/@handle" />" : {
			"name" : "<xsl:value-of select="name" />",
			"sqmpp" : <xsl:value-of select="standard-sqmpp" />
		},
	</xsl:template>
	
	
</xsl:stylesheet>