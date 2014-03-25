<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="snippet">

		<xsl:param name="name"/>
		<xsl:param name="mode" select="'unformatted'"/>

		<xsl:if test="not(//snippets/entry[name/@handle=$name]/content[@mode=$mode])">
			<xsl:text>Snippet::</xsl:text>
			<xsl:value-of select="$name" />
		</xsl:if>

		<xsl:choose>
			<xsl:when test="$mode = 'unformatted'">
				<xsl:value-of select="//snippets/entry[name/@handle=$name]/content[@mode=$mode]" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:copy-of select="//snippets/entry[name/@handle=$name]/content[@mode=$mode]/*" />
			</xsl:otherwise>
		</xsl:choose>

	</xsl:template>

</xsl:stylesheet>