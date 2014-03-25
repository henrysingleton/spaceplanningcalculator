<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../../utilities/sections/public-form-entries.xsl"/>

<xsl:template match="/">
	<xsl:apply-templates select="//public-survey-submission-step-2/post-values" mode="html" />
</xsl:template>

</xsl:stylesheet>