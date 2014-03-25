<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<!-- TEXT SNIPPET -->
	<xsl:template name="text-snippet">

		<xsl:param name="name"/>
		<xsl:param name="mode"/>

		<xsl:if test="not(//text-snippet/entry[name/@handle=$name]/content[@mode=$mode])">
			<xsl:text>Snippet::</xsl:text>
			<xsl:value-of select="$name" />
		</xsl:if>
		
		<xsl:choose>
			<xsl:when test="$mode = 'unformatted'">
				<xsl:apply-templates select="//text-snippet/entry[name/@handle=$name]" mode="edit-link" />
				<xsl:value-of select="//text-snippet/entry[name/@handle=$name]/content[@mode=$mode]" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:apply-templates select="//text-snippet/entry[name/@handle=$name]" mode="edit-link" />
				<xsl:copy-of select="//text-snippet/entry[name/@handle=$name]/content[@mode=$mode]/*" />
			</xsl:otherwise>
		</xsl:choose>

	</xsl:template>
	
	
	<!-- IMAGE SNIPPET -->
	<xsl:template name="image-snippet">

		<xsl:param name="name"/>
		<xsl:param name="width"/>
		<xsl:param name="height"/>
		
		<xsl:if test="not(//image-snippet/entry[name/@handle=$name]/image)">
			<xsl:text>Snippet::</xsl:text>
			<xsl:value-of select="$name" />
		</xsl:if>	
		
		<xsl:apply-templates select="//image-snippet/entry[name/@handle=$name]" mode="edit-link" />
		<img src="{$root}/image/2/{$width}/{$height}/5{/data/image-snippet/entry[name/@handle=$name]/image/@path}/{/data/image-snippet/entry[name/@handle=$name]/image/filename}" alt="" />
		
	</xsl:template>
	
	
	<!-- BUTTON SNIPPET -->
	<xsl:template name="button-snippet">

		<xsl:param name="name"/>
		<xsl:param name="mode"/>

		<xsl:if test="not(//button-snippet/entry[name/@handle=$name]/text)">
			<xsl:text>Snippet::</xsl:text>
			<xsl:value-of select="$name" />
		</xsl:if>	
		
		<xsl:choose>
			<xsl:when test="$mode = 'blank'">
				<a href="{button-snippet/entry[name/@handle=$name]/url-link}" target="_blank"><xsl:value-of select="//button-snippet/entry[name/@handle=$name]/text" /></a>		
			</xsl:when>
			<xsl:otherwise>
				<a href="{button-snippet/entry[name/@handle=$name]/url-link}"><xsl:value-of select="//button-snippet/entry[name/@handle=$name]/text" /></a>		
			</xsl:otherwise>
		</xsl:choose>
			
	</xsl:template>
	
	
	<!-- DOWNLOAD SNIPPET -->
	<xsl:template name="download-snippet">

		<xsl:param name="name"/>
		<xsl:param name="class"/>
		
		<xsl:if test="not(//download-snippet/entry[name/@handle=$name]/download)">
			<xsl:text>Snippet::</xsl:text>
			<xsl:value-of select="$name" />
		</xsl:if>	

		<a href="{$workspace}{download-snippet/entry[name/@handle=$name]/download/@path}/{download-snippet/entry[name/@handle=$name]/download/filename}" class="{$class}" target="_blank"></a>	       
		
	</xsl:template>
	
	
	
	<!-- VIDEO SNIPPET -->
	<xsl:template name="video-snippet">

		<xsl:param name="name"/>
		<xsl:param name="width"/>
		<xsl:param name="height"/>
		
		<xsl:if test="not(//video-snippet/entry[name/@handle=$name]/video)">
			<xsl:text>Snippet::</xsl:text>
			<xsl:value-of select="$name" />
		</xsl:if>	
		
		<xsl:apply-templates select="//video-snippet/entry[name/@handle=$name]" mode="edit-link" />
		
		<xsl:call-template name="video-media">
            <xsl:with-param name="width" select="$width"/>
            <xsl:with-param name="height" select="$height"/>
            <xsl:with-param name="element" select="video-snippet/entry[name/@handle=$name]/video/url"/>
        </xsl:call-template>
        
		
	</xsl:template>
	
	
</xsl:stylesheet>