<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:j="http://www.w3.org/2013/XSL/json" version="3.0">
<!--<xsl:package name="testpackage" package-version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:j="http://www.w3.org/2013/XSL/json"
    version="3.0">
    
    <xsl:use-package name="http://www.w3.org/2013/XSLT/xml-to-json.xsl" 
        package-version=".*"  /> 
-->    
    <xsl:import href="xml-to-json.xsl" />
    
    <xsl:template match="/">
        <xsl:apply-templates></xsl:apply-templates>
    </xsl:template>
    
    <xsl:template match="*:map">
        <xsl:value-of select="j:xml-to-json(.)"/>
    </xsl:template>
    
<!--</xsl:package>-->
</xsl:stylesheet>