<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="*[section/@handle = 'position-categories']/entry" mode="table">
		<h2>
			<xsl:value-of select="name"/>
		</h2>
		<table class="pure-table category" data-category="{name/@handle}">
			<thead>
				<tr>
					<th>Position</th>
					<th class="pure-hidden-phone">Area</th>
					<th>Headcount</th>
					<th class="small-col"><span class="pure-hidden-phone">
						Area SQM
					</span></th>
				</tr>
			</thead>
			<tbody>
				<xsl:apply-templates select="/data/positions/entry[category/item/@handle = current()/name/@handle]" mode="table-row" />
			</tbody>
			<tfoot>
				<tr>
					<td class="pure-hidden-phone"></td>
					<td colspan="2" style="text-align: right;">Total</td>
					<td class="small-col"><input type="text" name="total" class="category-total"/></td>
				</tr>
			</tfoot>
		</table>
	</xsl:template>
	
	<xsl:template match="*[section/@handle = 'positions']/entry" mode="table-row">
		<tr>
			<td>
				<xsl:value-of select="name"/>
			</td>
			<td class="pure-hidden-phone small-col">
				<xsl:value-of select="area"/>
			</td>
			<td class="small-col">
				<input type="number" tabindex="{order}" data-area="{area}" class="input headcount" name="areas[{category/item/@handle}][{name/@handle}][headcount]"/>
				<!-- Note that the order field is used for the tabindex. This means all these fields will get the first tabindex before any others on the page, which will be treated as default, including the output field below:  -->
			</td>
			<td class="small-col">
				<input type="text" class="output position-total" name="areas[{category/item/@handle}][{name/@handle}][sqm]"/>
			</td>
		</tr>
	</xsl:template>
	
</xsl:stylesheet>