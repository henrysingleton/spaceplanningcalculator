<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:import href="../masters/default.xsl"/>
	
	<xsl:template match="data" mode="page-content">
				<div id="public-survey-completion-message">
					<xsl:call-template name="snippet">
						<xsl:with-param name="name" select="'public-survey-completion-message'" />
						<xsl:with-param name="mode" select="'formatted'" />
					</xsl:call-template>
				</div>
	</xsl:template>

</xsl:stylesheet>