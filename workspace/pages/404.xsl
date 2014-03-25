<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:import href="../masters/default.xsl"/>
	
	
	<xsl:template match="data">
		
		<div id="error-wrapper" data-bg="teal" class="teal">	
			<div class="error-internal">
				<h1>404 Page Not Found</h1>
				<xsl:call-template name="text-snippet" >
					<xsl:with-param name="name" select="'404-intro-text'"/>
					<xsl:with-param name="mode" select="'formatted'"/>
				</xsl:call-template>
			</div>
		</div>

	</xsl:template>
	

</xsl:stylesheet>