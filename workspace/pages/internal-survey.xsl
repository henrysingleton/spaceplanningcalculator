<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:exsl="http://exslt.org/common"
    xmlns:form="http://nick-dunn.co.uk/xslt/form-controls"
    extension-element-prefixes="exsl form">

	<xsl:import href="../masters/default.xsl"/>
	
	<xsl:variable name="form:event" select="/data/events/public-survey-submission-step-1"/>	
	
	<xsl:template match="data" mode="page-content">
		
		<form method="post" class="pure-form" id="internal-survey-form">
			<input name="action[internal-survey-submission]" type="hidden" value="Submit" />
<!--
			<div class="pure-control" style="text-align: right;">
				<xsl:call-template name="form:select">
					<xsl:with-param name="handle" select="'industry'"/>
					<xsl:with-param name="options">
						<option value="">Please select your industry:</option>
						<xsl:apply-templates select="/data/industries/entry" mode="options" />
					</xsl:with-param>
				</xsl:call-template>
			</div>
-->
			
			<xsl:apply-templates select="position-categories/entry" mode="table" />
			
			<h2>Results</h2>
			
			<table class="totals-table pure-table pure-table-horizontal">
				<tbody>
					<tr>
						<td class="label">Sub-total</td>
						<td class="small-col">
							<input type="text" class="output sub-total"/>
						</td>
					</tr>
					<tr>
						<td class="label">Circulation Space</td>
						<td class="small-col">
							<input type="text" class="output circulation-space"/>
						</td>
					</tr>
					<tr>
						<td class="label">Building Inefficiency</td>
						<td class="small-col">
							<input type="text" class="output building-inefficiency"/>
						</td>
					</tr>
					<tr>
						<td class="label">Total Area</td>
						<td class="small-col">
							<input type="text" class="output total-area"/>
						</td>
					</tr>
					<tr>
						<td class="label">Total Headcount</td>
						<td class="small-col">
							<input type="text" class="output total-headcount"/>
						</td>
					</tr>
					<tr>
						<td class="label">Space Per Person</td>
						<td class="small-col">
							<input type="text" class="output space-per-person"/>
						</td>
					</tr>
				</tbody>
			</table>
			
			<p class="cta" style="text-align: right;">
				<a class="pure-button pure-button-larger" href="#">View Recommended Example Floor Plan</a>
			</p>
		</form>
            
	</xsl:template>
</xsl:stylesheet>