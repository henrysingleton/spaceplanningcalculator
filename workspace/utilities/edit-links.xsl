<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!--
		Template for auto-generating an edit link for an entry. 
		Need to be applied when inside a regular symphony entry. 
	-->
	<xsl:template match="entry" mode="edit-link">
		<xsl:if test="/data/params/cookie-username">
			<a href="{$root}/symphony/publish/{../section/@handle}/edit/{@id}/" class="edit-in-symphony edit-entry" target="_blank">Edit</a>
		</xsl:if>
	</xsl:template>
		
	<!--
		Template for auto-generating an edit link for a page. 
	-->
	<xsl:template match="/data/params/current-page" mode="edit-link">
		<xsl:if test="/data/params/cookie-username">
			<a href="{$root}/symphony/blueprints/pages/edit/{$current-page-id}/" class="edit-in-symphony edit-page" target="_blank">Edit Page</a>
		</xsl:if>
	</xsl:template>
	
	
</xsl:stylesheet>