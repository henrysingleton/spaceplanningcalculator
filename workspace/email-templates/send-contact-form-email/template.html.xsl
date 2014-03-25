<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../../utilities/date-time.xsl"/>
<xsl:import href="../../utilities/sections/form-entries.xsl"/>

<xsl:template match="/">
	<xsl:apply-templates select="//entry" mode="html" />
</xsl:template>

</xsl:stylesheet>