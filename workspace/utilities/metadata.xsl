<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- !Main Metadata -->
	
	<xsl:template match="/" mode="metadata">
		<title><xsl:apply-templates select="/" mode="page-title" /></title>
		<meta name="description">
			<xsl:attribute name="content">
				<xsl:apply-templates select="/data" mode="meta-description" />
			</xsl:attribute>
		</meta>
		<meta name="keywords">
			<xsl:attribute name="content">
				<xsl:apply-templates select="/data" mode="meta-keywords" />
			</xsl:attribute>
		</meta>
	</xsl:template>
	
	<!-- !Page Title -->
	
	<xsl:template match="/" mode="page-title" priority="0">
		<xsl:choose>
			<xsl:when test="/data/metadata/entry/full-page-title = 'Yes' and count(/data/metadata/entry) = 1">
				<xsl:value-of select="/data/metadata/entry/page-title" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="count(/data/metadata/entry) = 1">
						<xsl:value-of select="/data/metadata/entry/page-title" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:apply-templates select="/data" mode="page-title" />
					</xsl:otherwise>
				</xsl:choose>
				<xsl:text> </xsl:text>
				<xsl:apply-templates select="/data" mode="page-title-separator" />
				<xsl:text> </xsl:text>
				<xsl:apply-templates select="/data" mode="page-title-suffix" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="/data" mode="page-title" priority="0">
		<xsl:apply-templates select="/data" mode="page-title-master" />
	</xsl:template>
	
	<xsl:template match="/data" mode="page-title-master">
		<xsl:value-of select="$page-title" />
	</xsl:template>

	<xsl:template match="/data" mode="page-title-separator" priority="0">
		<xsl:apply-templates select="/data" mode="page-title-separator-master" />
	</xsl:template>
	
	<xsl:template match="/data" mode="page-title-separator-master">
		<xsl:choose>
			<xsl:when test="preferences/entry/page-title-separator">
				<xsl:value-of select="preferences/entry/page-title-separator" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>-</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="/data" mode="page-title-suffix" priority="0">
		<xsl:apply-templates select="/data" mode="page-title-suffix-master" />
	</xsl:template>
	
	<xsl:template match="/data" mode="page-title-suffix-master">
		<xsl:choose>
			<xsl:when test="preferences/entry/page-title-suffix">
				<xsl:value-of select="preferences/entry/page-title-suffix" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="preferences/entry/site-name" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	
	<!-- !Meta Description -->
	
	<xsl:template match="/data" mode="meta-description" priority="0">
		<xsl:apply-templates select="/data" mode="meta-description-master" />
	</xsl:template>
	
	<xsl:template match="/data" mode="meta-description-master">
		<xsl:choose>
			<xsl:when test="string(metadata/entry/page-description) and count(metadata/entry) = 1">
				<xsl:value-of select="metadata/entry/page-description" />
			</xsl:when>
			<xsl:when test="preferences/entry/default-metadata-description">
				<xsl:value-of select="preferences/entry/default-metadata-description" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="preferences/entry/site-name" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	
	<!-- !Meta Keywords -->
	
	<xsl:template match="/data" mode="meta-keywords" priority="0">
		<xsl:apply-templates select="/data" mode="meta-keywords-master" />
	</xsl:template>
	
	<xsl:template match="/data" mode="meta-keywords-master">
		<xsl:choose>
			<xsl:when test="string(metadata/entry/page-keywords) and count(metadata/entry) = 1">
				<xsl:value-of select="metadata/entry/page-keywords" />
			</xsl:when>
			<xsl:when test="preferences/entry/default-metadata-keywords">
				<xsl:value-of select="preferences/entry/default-metadata-keywords" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="preferences/entry/site-name" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	

</xsl:stylesheet>