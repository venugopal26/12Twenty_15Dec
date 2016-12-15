<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	version="1.0">
	<xsl:output method="text" indent="no" />
	<xsl:param name="useDBURL" select="false" />
	<xsl:template match="/">
		<xsl:apply-templates />
	</xsl:template>
	
	<xsl:template match="suiteSummary"></xsl:template>
	
	<xsl:template match="scriptSummaries"> 
		<xsl:for-each select="summary">
			<xsl:param name="scriptName" select="SCRIPTNAME" /> 
			<xsl:param name="tccount" select="TCCOUNT" />
			<xsl:param name="tcpassed" select="TCPASSED" />
			<xsl:param name="tcfailed" select="TCFAILED" />
			<xsl:value-of select="$scriptName" />
			<xsl:text>&#10;</xsl:text>
			<xsl:text>Total testcases  = </xsl:text>
			<xsl:value-of select="$tccount" />
			<xsl:text>&#10;</xsl:text>
			<xsl:text>Testcases passed = </xsl:text>
			<xsl:value-of select="$tcpassed" />
			<xsl:text>&#10;</xsl:text>
			<xsl:text>Testcases failed = </xsl:text>
			<xsl:value-of select="$tcfailed" />
			<xsl:text>&#10;</xsl:text>
			<xsl:text>&#10;</xsl:text>
		</xsl:for-each> 
	</xsl:template>
	<xsl:template match="testCaseSummaries"></xsl:template>
</xsl:stylesheet>