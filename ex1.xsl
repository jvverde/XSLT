<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml" indent="yes"/>
	
	<xsl:template match="/*">
		<table>
			<xsl:apply-templates select="*|@*"/>
		</table>
	</xsl:template>
	<xsl:template match="/*/*">
		<tr>
			<xsl:apply-templates select="*|@*"/>
		</tr>
	</xsl:template>
	<xsl:template match="/*/*/*">
		<td>
			<xsl:copy-of select="node()|@*"/>
		</td>		
	</xsl:template>	
	<xsl:template match="@*">
		<xsl:copy/>
	</xsl:template>	
</xsl:stylesheet>
