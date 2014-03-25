<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="search/entry">
	    
	    <li>
	    	<div class="search-internal">
	    		<h2 class="para-med"><xsl:value-of select="@section"/></h2>
	    		<xsl:copy-of select="excerpt/*"/>
	    		<a href="{$root}/{@section}/">read more</a>
	    	</div>
	    </li>
	    
	</xsl:template>

	<xsl:template match="search/entry[@section = 'clients']">
	    <li>
	    	<div class="search-internal">
	    		<h2 class="para-med">Clients</h2>
	    		<xsl:copy-of select="excerpt/*"/>
	    		<a href="{$root}/our-work/">read more</a>
	    	</div>
	    </li>
	</xsl:template>
	
	<xsl:template match="search/entry[@section = 'solutions']">
	    <li>
	    	<div class="search-internal">
	    		<h2 class="para-med">Solutions</h2>
	    		<xsl:copy-of select="excerpt/*"/>
	    		<a href="{$root}/solutions/">read more</a>
	    	</div>
	    </li>
	</xsl:template>
    
    <xsl:template match="search/entry[@section = 'our-work-intro']">
	    <li>
	    	<div class="search-internal">
	    		<h2 class="para-med">Our Work</h2>
	    		<xsl:copy-of select="excerpt/*"/>
	    		<a href="{$root}/our-work/">read more</a>
	    	</div>
	    </li>
	</xsl:template>
    
    <xsl:template match="search/entry[@section = 'about-intro']">
	    <li>
	    	<div class="search-internal">
	    		<h2 class="para-med">Why GJI</h2>
	    		<xsl:copy-of select="excerpt/*"/>
	    		<a href="{$root}/why-gji/">read more</a>
	    	</div>
	    </li>
	</xsl:template>
	
    <xsl:template match="search/entry[@section = 'directors']">
	    <li>
	    	<div class="search-internal">
	    		<h2 class="para-med">Why GJI - Directors</h2>
	    		<xsl:copy-of select="excerpt/*"/>
	    		<a href="{$root}/why-gji/#directors">read more</a>
	    	</div>
	    </li>
	</xsl:template>
    
    <xsl:template match="search/entry[@section = 'contact-page']">
	    <li>
	    	<div class="search-internal">
	    		<h2 class="para-med">Contact GJI</h2>
	    		<xsl:copy-of select="excerpt/*"/>
	    		<a href="{$root}/contact/">read more</a>
	    	</div>
	    </li>
	</xsl:template>
	
</xsl:stylesheet>