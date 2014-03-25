<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output	omit-xml-declaration="yes" />

<xsl:template match="public-survey-submission-step-2/post-values" mode="html">
<style type="text/css">
	* {
		font-family: sans-serif;
	}
	strong {
		width:100px;
		display:inline-block;
	}
</style>

<h2>Colliers Space Planner: New enquiry </h2>

<p><strong>Name:</strong><xsl:value-of select="name" />					  </p>
<p><strong>Company:</strong><xsl:value-of select="company" />				  </p>
<p><strong>Phone:</strong><xsl:value-of select="phone-number" />			  </p>
<p><strong>Email:</strong><xsl:value-of select="email" />					  </p>
<p><strong>Industry:</strong><xsl:value-of select="industry" />			  </p>
<p><strong>Number of staff:</strong><xsl:value-of select="number-of-staff" /></p>
<p><strong>Current space:</strong><xsl:value-of select="current-space" />	  </p>
<p><strong>Current SQMPP:</strong><xsl:value-of select="current-sqmpp" />	  </p>
<p><strong>Industry SQMPP:</strong><xsl:value-of select="ideal-sqmpp" />		  </p>
<p><strong>Referrer:</strong><xsl:value-of select="/data/etm-referrer/entry/name" /> (code: <xsl:value-of select="/data/etm-referrer/entry/code" />)		  </p>
<p>Current space usage is <u><xsl:value-of select="over-under" /></u> industry standard.</p>
<br/>
<hr/>
<br/>
<p><em>Email sent to <xsl:value-of select="/data/etm-referrer/entry/email" /> on <xsl:value-of select="$today" /> from <xsl:value-of select="$root" /></em></p>

</xsl:template>
</xsl:stylesheet>